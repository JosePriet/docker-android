.class public final enum Lfr/testudo/spacecorsair/business/world/station/DockStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/world/station/DockStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/world/station/DockStatus;

.field public static final enum DISABLED:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

.field public static final enum DOCKED:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

.field public static final enum DOCKING:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

.field public static final enum FREE:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

.field public static final enum RELOADING:Lfr/testudo/spacecorsair/business/world/station/DockStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/DockStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->FREE:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    const-string v1, "DOCKING"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/world/station/DockStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->DOCKING:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    const-string v1, "DOCKED"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/business/world/station/DockStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->DOCKED:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    const-string v1, "RELOADING"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/business/world/station/DockStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->RELOADING:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/business/world/station/DockStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->DISABLED:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->FREE:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->DOCKING:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->DOCKED:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->RELOADING:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->DISABLED:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->$VALUES:[Lfr/testudo/spacecorsair/business/world/station/DockStatus;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/DockStatus;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/world/station/DockStatus;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->$VALUES:[Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/world/station/DockStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    return-object v0
.end method
