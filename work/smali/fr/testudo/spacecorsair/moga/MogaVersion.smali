.class public final enum Lfr/testudo/spacecorsair/moga/MogaVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/moga/MogaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/moga/MogaVersion;

.field public static final enum MOGA_POCKET:Lfr/testudo/spacecorsair/moga/MogaVersion;

.field public static final enum MOGA_PRO:Lfr/testudo/spacecorsair/moga/MogaVersion;

.field public static final enum UNKNOWN:Lfr/testudo/spacecorsair/moga/MogaVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/moga/MogaVersion;

    const-string v1, "MOGA_PRO"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/moga/MogaVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->MOGA_PRO:Lfr/testudo/spacecorsair/moga/MogaVersion;

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/moga/MogaVersion;

    const-string v1, "MOGA_POCKET"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/moga/MogaVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->MOGA_POCKET:Lfr/testudo/spacecorsair/moga/MogaVersion;

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/moga/MogaVersion;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/moga/MogaVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->UNKNOWN:Lfr/testudo/spacecorsair/moga/MogaVersion;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/moga/MogaVersion;

    sget-object v1, Lfr/testudo/spacecorsair/moga/MogaVersion;->MOGA_PRO:Lfr/testudo/spacecorsair/moga/MogaVersion;

    aput-object v1, v0, v2

    sget-object v1, Lfr/testudo/spacecorsair/moga/MogaVersion;->MOGA_POCKET:Lfr/testudo/spacecorsair/moga/MogaVersion;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/moga/MogaVersion;->UNKNOWN:Lfr/testudo/spacecorsair/moga/MogaVersion;

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->$VALUES:[Lfr/testudo/spacecorsair/moga/MogaVersion;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromVersion(I)Lfr/testudo/spacecorsair/moga/MogaVersion;
    .registers 2

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_c

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->UNKNOWN:Lfr/testudo/spacecorsair/moga/MogaVersion;

    :goto_5
    return-object v0

    .line 23
    :pswitch_6
    sget-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->MOGA_POCKET:Lfr/testudo/spacecorsair/moga/MogaVersion;

    goto :goto_5

    .line 25
    :pswitch_9
    sget-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->MOGA_PRO:Lfr/testudo/spacecorsair/moga/MogaVersion;

    goto :goto_5

    .line 21
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/moga/MogaVersion;
    .registers 2

    .prologue
    .line 12
    const-class v0, Lfr/testudo/spacecorsair/moga/MogaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/moga/MogaVersion;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/moga/MogaVersion;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->$VALUES:[Lfr/testudo/spacecorsair/moga/MogaVersion;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/moga/MogaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/moga/MogaVersion;

    return-object v0
.end method
