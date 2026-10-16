.class public final enum Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/Mission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MissionKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

.field public static final enum DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;


# instance fields
.field public resourceID:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 120
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    const-string v1, "DESTROY_TARGET"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    aput-object v1, v0, v2

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;
    .registers 2

    .prologue
    .line 118
    const-class v0, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/Mission$MissionKind;

    return-object v0
.end method
