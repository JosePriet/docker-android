.class public final enum Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/message/MessageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_ACHIEVEMENT_DONE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_ACHIEVEMENT_HIDE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_ADD_SPLASH:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_CASINO:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_DIALOG:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_HIDE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_MISSION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_MOBILE_SHOP:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_PLAYER_DEAD:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_REMOVE_SPLASH:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_STATION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_TEST:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum MESSAGE_WILLING_EXIT_GAME:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

.field public static final enum RELOAD_LEVEL:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_HIDE_MENU"

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_HIDE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_MENU"

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_STATION"

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_STATION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_PLAYER_DEAD"

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_PLAYER_DEAD:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_TEST"

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_TEST:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_MISSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MISSION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_ACHIEVEMENT_DONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ACHIEVEMENT_DONE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_ACHIEVEMENT_HIDE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ACHIEVEMENT_HIDE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_ADD_SPLASH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ADD_SPLASH:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_REMOVE_SPLASH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_REMOVE_SPLASH:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_DIALOG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_DIALOG:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "RELOAD_LEVEL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->RELOAD_LEVEL:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_MOBILE_SHOP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MOBILE_SHOP:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_CASINO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_CASINO:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    const-string v1, "MESSAGE_WILLING_EXIT_GAME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_WILLING_EXIT_GAME:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    .line 27
    const/16 v0, 0xf

    new-array v0, v0, [Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    sget-object v1, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_HIDE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_STATION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_PLAYER_DEAD:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_TEST:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MISSION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ACHIEVEMENT_DONE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ACHIEVEMENT_HIDE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ADD_SPLASH:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_REMOVE_SPLASH:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_DIALOG:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->RELOAD_LEVEL:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MOBILE_SHOP:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_CASINO:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_WILLING_EXIT_GAME:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->$VALUES:[Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;
    .registers 2

    .prologue
    .line 27
    const-class v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->$VALUES:[Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    return-object v0
.end method
