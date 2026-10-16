.class public Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_LEFT_TO_RIGHT_FOR_EXISTING:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final ACTIVITY_RIGHT_TO_LEFT_FOR_EXISTING:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final CLASSIC_ACTIVITY_LEFT_TO_RIGHT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final CLASSIC_ACTIVITY_RIGHT_TO_LEFT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_LOST_PARADISE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final HIGHWAY_GOODS_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEFT_SECTOR_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEFT_SECTOR_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final LEVEL_MAX:I = 0x10

.field public static final LEVEL_MIN:I = 0xc

.field public static final LOST_PARADIZE_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final OTHER_CIVILIANS_LINE:I = 0xbb8

.field static final POLICE_POP_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final STATION_NAME:Ljava/lang/String; = "general store"

.field public static final TRANSPORTER_LINE:I = 0x258

.field public static final TRANSPORT_ACTIVITY_LEFT_TO_RIGHT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final TRANSPORT_ACTIVITY_RIGHT_TO_LEFT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final highwayAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field private static final tempVector:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x469c4000    # 20000.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3915a000    # -30000.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3b060000    # -2000.0f

    const v2, 0x45abe000    # 5500.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->HIGHWAY_GOODS_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newRight(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LOST_PARADIZE_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x44610000    # 900.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newLeft(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LEFT_SECTOR_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const/high16 v1, -0x3c380000    # -400.0f

    const/high16 v2, -0x3b9f0000    # -900.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LEFT_SECTOR_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 124
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v4

    const/high16 v2, 0x44160000    # 600.0f

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->ACTIVITY_RIGHT_TO_LEFT_FOR_EXISTING:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    const/high16 v2, -0x3bea0000    # -600.0f

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->ACTIVITY_LEFT_TO_RIGHT_FOR_EXISTING:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 195
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    const/high16 v2, 0x44160000    # 600.0f

    const/16 v3, 0x12c

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x44160000    # 600.0f

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v4

    const/4 v2, 0x0

    const/16 v3, 0x2bc

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->TRANSPORT_ACTIVITY_RIGHT_TO_LEFT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 206
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v2, 0x44bb8000    # 1500.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    const v2, 0x453b8000    # 3000.0f

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v2, 0x453b8000    # 3000.0f

    const/16 v3, 0x578

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v4

    const v2, 0x453b8000    # 3000.0f

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->CLASSIC_ACTIVITY_RIGHT_TO_LEFT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 217
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LEFT_SECTOR_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v4

    const/high16 v2, -0x3bea0000    # -600.0f

    const/16 v3, 0x12c

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, -0x3bea0000    # -600.0f

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    const/4 v2, 0x0

    const/16 v3, 0x2bc

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->TRANSPORT_ACTIVITY_LEFT_TO_RIGHT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 228
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LEFT_SECTOR_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v2, 0x44bb8000    # 1500.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LEFT_SECTOR_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v4

    const v2, -0x3ac48000    # -3000.0f

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v2, -0x3ac48000    # -3000.0f

    const/16 v3, 0x578

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    const v2, -0x3ac48000    # -3000.0f

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->CLASSIC_ACTIVITY_LEFT_TO_RIGHT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 239
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->highwayAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    .line 343
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->POLICE_POP_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->isMissionHighWayDefendActive()Z

    move-result v0

    return v0
.end method

.method private static addExistingCivilLeftToRight(ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v8, 0x4082c00000000000L    # 600.0

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    .line 162
    const/16 v0, 0xd

    const/16 v1, 0xf

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(IIDD)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 163
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    .line 164
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-eqz v1, :cond_52

    .line 165
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    add-int/lit8 v2, p0, -0x64

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f73e00000000000L    # -900.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    :goto_3b
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 170
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->ACTIVITY_LEFT_TO_RIGHT_FOR_EXISTING:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 171
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->isMissionHighWayDefendActive()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 174
    :cond_4e
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void

    .line 167
    :cond_52
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    add-int/lit8 v2, p0, -0x64

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f56380000000000L    # -3300.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_3b
.end method

.method private static addExistingCivilRightToLeft(ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v8, 0x4082c00000000000L    # 600.0

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    .line 141
    const/16 v0, 0xd

    const/16 v1, 0xf

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(IIDD)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 142
    const/high16 v1, 0x43340000    # 180.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    .line 143
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-eqz v1, :cond_53

    .line 144
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    add-int/lit8 v2, p0, -0x64

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, 0x4072c00000000000L    # 300.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 148
    :goto_3c
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 149
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->ACTIVITY_RIGHT_TO_LEFT_FOR_EXISTING:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 150
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->isMissionHighWayDefendActive()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 153
    :cond_4f
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void

    .line 146
    :cond_53
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    add-int/lit8 v2, p0, -0x64

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, 0x40a5180000000000L    # 2700.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_3c
.end method

.method public static addOriginalCivilians(Ljava/util/List;)V
    .registers 7
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
    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    add-int/lit16 v0, v0, -0x384

    :goto_7
    int-to-float v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v3, 0x44610000    # 900.0f

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_27

    .line 130
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_23

    .line 131
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->addExistingCivilRightToLeft(ILjava/util/List;)V

    .line 128
    :goto_20
    add-int/lit16 v0, v0, -0x1f4

    goto :goto_7

    .line 133
    :cond_23
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->addExistingCivilLeftToRight(ILjava/util/List;)V

    goto :goto_20

    .line 138
    :cond_27
    return-void
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
    const/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 83
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> lost paradise <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 84
    const-string v1, "lost paradise"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 85
    const-string v1, "> highway <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 87
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 88
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 89
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 90
    iput v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    .line 91
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "COMING SOON"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 95
    const-string v1, "aeria passing"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 96
    const-string v1, "> omicron prime <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 98
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->GATE_TO_LEFT_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 100
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 101
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 102
    iput v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public static addStation(Ljava/util/List;)V
    .registers 5
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
    const v3, 0x3f70f0f1

    .line 110
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienTradeStation()Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->HIGHWAY_GOODS_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    const-string v2, "general store"

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;

    move-result-object v0

    .line 111
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->r:F

    .line 112
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->g:F

    .line 113
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->b:F

    .line 114
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 116
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->water:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 119
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public static getHighway()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 63
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->addStation(Ljava/util/List;)V

    .line 68
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->addOriginalCivilians(Ljava/util/List;)V

    .line 70
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->highwayAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 74
    const v0, 0x7f060019

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Purple:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 78
    return-object v1
.end method

.method private static isMissionHighWayDefendActive()Z
    .registers 2

    .prologue
    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    const-string v1, "OMICRON_PRIME_DEFEND_CIVILIANS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_14
    const-string v0, "OMICRON_PRIME_DEFEND_CIVILIANS"

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->currentMission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method
