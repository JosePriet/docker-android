.class public Lfr/testudo/spacecorsair/business/ennemis/MineSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MINESPEC_1:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

.field public static final MINESPEC_2:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

.field public static final MINESPEC_3:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;


# instance fields
.field public damageRange:F

.field public damage_per_pixel:F

.field public life:F

.field public loadingTimeInMilli:F

.field public mouvement_force:F


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/high16 v5, 0x43fa0000    # 500.0f

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v1, 0x44160000    # 600.0f

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;-><init>(FFFFF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->MINESPEC_1:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    .line 28
    new-instance v6, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    const/high16 v8, 0x40900000    # 4.5f

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v11, 0x43c80000    # 400.0f

    move v7, v1

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;-><init>(FFFFF)V

    sput-object v6, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->MINESPEC_2:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    .line 29
    new-instance v5, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41800000    # 16.0f

    move v6, v1

    move v9, v1

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;-><init>(FFFFF)V

    sput-object v5, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->MINESPEC_3:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    .line 13
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damage_per_pixel:F

    .line 14
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->mouvement_force:F

    .line 15
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->life:F

    .line 16
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->loadingTimeInMilli:F

    .line 20
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    .line 21
    iput p2, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damage_per_pixel:F

    .line 22
    iput p4, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->life:F

    .line 23
    iput p3, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->mouvement_force:F

    .line 24
    iput p5, p0, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->loadingTimeInMilli:F

    .line 25
    return-void
.end method
