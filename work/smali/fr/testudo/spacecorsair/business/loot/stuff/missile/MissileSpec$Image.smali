.class public final enum Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

.field public static final enum normal:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

.field public static final enum rocket:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->normal:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    const-string v1, "rocket"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->rocket:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->normal:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->rocket:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

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

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->$VALUES:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    return-object v0
.end method
