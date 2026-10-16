.class public Lfr/testudo/spacecorsair/utils/Analytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final METRIC_PLAYER_COMPLETED_MISSION_COUNT:I = 0x5

.field private static final METRIC_PLAYER_INAPP_MONEY:I = 0x3

.field private static final METRIC_PLAYER_LEVEL:I = 0x1

.field private static final METRIC_PLAYER_MONEY:I = 0x2

.field private static final METRIC_PLAYER_NUMBER_ACHIEVEMENTS:I = 0x4

.field private static final OBJECT_BOUGHT:I = 0xb

.field private static final OBJECT_LOOTED:I = 0xa

.field private static final PLAYER_GEAR_BOOSTER:I = 0x7

.field private static final PLAYER_GEAR_HYPERDRIVE:I = 0x8

.field private static final PLAYER_GEAR_LASER:I = 0x4

.field private static final PLAYER_GEAR_MISSILE:I = 0x5

.field private static final PLAYER_GEAR_SHIELD:I = 0x6

.field private static final PLAYER_LEVEL:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onObjectBought(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public static onObjectLooted(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public static updateTrackerValue()V
    .registers 0

    .prologue
    .line 49
    return-void
.end method
