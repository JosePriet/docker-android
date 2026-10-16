.class public final enum Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/StationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

.field public static final enum BUY:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

.field public static final enum SELL:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

.field public static final enum STORE:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    const-string v1, "SELL"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->SELL:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    const-string v1, "BUY"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->BUY:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->STORE:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    .line 441
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    sget-object v1, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->SELL:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->BUY:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->STORE:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->$VALUES:[Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

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
    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;
    .registers 2

    .prologue
    .line 441
    const-class v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;
    .registers 1

    .prologue
    .line 441
    sget-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->$VALUES:[Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    return-object v0
.end method
