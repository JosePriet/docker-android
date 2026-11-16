.class public final Lfr/testudo/spacecorsair/mod/ModLan;
.super Ljava/lang/Object;
.source "ModLan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModLan$InFrame;,
        Lfr/testudo/spacecorsair/mod/ModLan$InState;,
        Lfr/testudo/spacecorsair/mod/ModLan$Kill;,
        Lfr/testudo/spacecorsair/mod/ModLan$Rec;
    }
.end annotation


# static fields
.field private static final ARENA_GATE:Ljava/lang/String; = "VECTOR00_GATE"

.field private static final DECLINED:I = 0x1

.field static final GUEST:I = 0x2

.field private static final HELLO:Ljava/lang/String; = "SCLAN2"

.field static final HOST:I = 0x1

.field private static final KICKED:I = 0x3

.field private static final MAX_BARS:I = 0x60

.field static final MAX_DEFS:I = 0x1000

.field static final MAX_HULL:F = 5.0E7f

.field private static final MAX_MARKS:I = 0x12c

.field static final MAX_MSG:I = 0x40000

.field private static final MAX_REMOTE:I = 0x898

.field static final MAX_SHOTS_S:I = 0x50

.field static final MAX_SHOT_DMG:F = 1000000.0f

.field static final MAX_SPEED:F = 6000.0f

.field static final MAX_STEP:F = 100.0f

.field static final MAX_VIEW:F = 6000.0f

.field private static final MK_MISSION:I = 0x2

.field private static final MK_POINT:I = 0x1

.field private static final MK_SKULL:I = 0x4

.field private static final MSG_BYE:I = 0x5

.field private static final MSG_CHAT:I = 0x7

.field private static final MSG_DEF:I = 0x1

.field private static final MSG_FRAME:I = 0x2

.field private static final MSG_KILL:I = 0x8

.field private static final MSG_SHOT:I = 0x4

.field private static final MSG_STATE:I = 0x3

.field private static final MSG_Z:I = 0x6

.field static final NONE:I = 0x0

.field private static final OK:I = 0x0

.field static final PORT:I = 0x9089

.field private static final PROXY_LIFE:F = 1000000.0f

.field private static final RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

.field private static final R_BAR:I = 0x4

.field private static final R_FX:I = 0x1

.field private static final R_POINT:I = 0x3

.field private static final R_SPRITE:I = 0x0

.field private static final R_TEXT:I = 0x2

.field static final SEND_HZ:I = 0x1e

.field static final SHOT_REACH:F = 800.0f

.field private static final SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

.field private static final SKIP:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRIKES:I = 0x14

.field static final TAG_UP:F = 150.0f

.field private static final VERSION:I = 0x2

.field private static acceptT:Ljava/lang/Thread;

.field private static announce:Z

.field private static volatile autoAccept:Z

.field private static final barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

.field private static beacon:Ljava/net/DatagramSocket;

.field private static beaconT:Ljava/lang/Thread;

.field private static volatile byeSeen:Z

.field static volatile bytesIn:J

.field static volatile bytesOut:J

.field private static capAt:J

.field private static chatAt:J

.field private static volatile chatIn:J

.field static volatile connected:Z

.field private static volatile decision:I

.field private static final defIn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final defOut:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static defeatRound:I

.field static defeats:I

.field private static dmgBase:F

.field private static dmgRoom:F

.field private static dmgSeen:F

.field private static dmgSent:F

.field private static volatile dropProxy:Z

.field private static duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field private static final enemyMakers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static fA:Ljava/lang/reflect/Field;

.field private static fB:Ljava/lang/reflect/Field;

.field private static fBack:Ljava/lang/reflect/Field;

.field private static fG:Ljava/lang/reflect/Field;

.field private static fInfo:Ljava/lang/reflect/Field;

.field private static fPSize:Ljava/lang/reflect/Field;

.field private static fPos:Ljava/lang/reflect/Field;

.field private static fQIdx:Ljava/lang/reflect/Field;

.field private static fQSize:Ljava/lang/reflect/Field;

.field private static fR:Ljava/lang/reflect/Field;

.field private static fSpin:Ljava/lang/reflect/Field;

.field private static fTSize:Ljava/lang/reflect/Field;

.field private static fText:Ljava/lang/reflect/Field;

.field private static fType:Ljava/lang/reflect/Field;

.field private static fZoom:Ljava/lang/reflect/Field;

.field static volatile flags:I

.field private static fx:Ljava/lang/reflect/Field;

.field private static fy:Ljava/lang/reflect/Field;

.field static volatile gotFrames:I

.field static guestWins:I

.field static hostWins:I

.field private static inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

.field private static final inKills:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModLan$Kill;",
            ">;"
        }
    .end annotation
.end field

.field private static final inLock:Ljava/lang/Object;

.field private static final inShots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private static volatile inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

.field private static volatile joinAsk:Z

.field private static jumpAt:J

.field private static jumpedIn:Z

.field private static final kicked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static killCount:I

.field private static killSec:J

.field static volatile killsIn:I

.field static volatile killsOut:I

.field private static volatile lastAct:Landroid/app/Activity;

.field private static volatile lastAddr:Ljava/lang/String;

.field private static lastFrameMs:J

.field private static lastLog:J

.field static volatile lastRecs:I

.field private static lastSendMs:J

.field private static latest:[B

.field private static volatile linkGen:J

.field private static logIn:J

.field private static logOut:J

.field private static logRaw:J

.field static volatile lootMine:I

.field private static lost:Z

.field private static lostRound:Z

.field private static volatile marksOut:[B

.field private static volatile menuAt:J

.field private static final mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static moveAt:J

.field private static moveHold:Z

.field private static moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

.field private static moveX:F

.field private static moveY:F

.field private static final myLoot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final outLock:Ljava/lang/Object;

.field private static volatile peerAddr:Ljava/lang/String;

.field static volatile peerCtry:Ljava/lang/String;

.field static volatile peerNick:Ljava/lang/String;

.field private static volatile pendingWho:Ljava/lang/String;

.field private static persistAt:J

.field private static persistId:Ljava/lang/String;

.field private static persistSeen:Z

.field private static poolFrame:I

.field private static final poolMakers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static volatile proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field private static proxyFrom:I

.field private static proxyLevel:Lfr/testudo/spacecorsair/game/levels/Level;

.field private static proxyTo:I

.field private static pullAt:J

.field private static pulled:Z

.field static volatile pvp:Z

.field static volatile pvpRoom:Z

.field private static volatile pvpWanted:Z

.field static volatile rawOut:J

.field private static readerT:Ljava/lang/Thread;

.field private static reflOk:Z

.field private static volatile rejoinAddr:Ljava/lang/String;

.field private static volatile rejoinUntil:J

.field private static final reliable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private static restore:Z

.field private static retarget:J

.field static volatile role:I

.field static round:I

.field private static roundDmg:F

.field private static seenDefeats:I

.field private static seenRound:I

.field static volatile sentFrames:I

.field private static server:Ljava/net/ServerSocket;

.field private static shipFrom:I

.field private static shipNow:Z

.field private static shipTo:I

.field private static final shotClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static shotCount:I

.field private static final shotFieldCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static shotSec:J

.field static volatile shotsIn:I

.field static volatile shotsOut:I

.field private static skipN:I

.field private static final skips:[I

.field private static sock:Ljava/net/Socket;

.field static volatile solo:Z

.field private static volatile soloReset:Z

.field static volatile status:Ljava/lang/String;

.field private static volatile strikes:I

.field private static testAt:J

.field private static testLast:Ljava/lang/String;

.field private static texByRes:Ljava/lang/reflect/Method;

.field private static final texIn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lfr/testudo/spacecorsair/display/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final texKeys:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/display/Texture;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static texLib:Ljava/lang/Object;

.field static volatile underMenu:Z

.field private static verCache:Ljava/lang/String;

.field private static final vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

.field private static writerT:Ljava/lang/Thread;

.field private static xpBase:J

.field private static xpLastHost:J

.field private static xpRoom:F

.field private static xpSeen:J

.field private static xpSent:J

.field private static zBuf:[B

.field private static final zOut:Ljava/util/zip/Deflater;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 92
    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 94
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    .line 263
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 264
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 618
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, v6}, Ljava/util/zip/Deflater;-><init>(I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    .line 619
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    .line 682
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    .line 683
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    .line 914
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    .line 925
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    .line 926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    .line 984
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    .line 1160
    new-array v0, v5, [[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1162
    new-array v0, v5, [[Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1163
    invoke-static {}, Lfr/testudo/spacecorsair/textengine/TextSize;->values()[Lfr/testudo/spacecorsair/textengine/TextSize;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1222
    const/16 v0, 0x60

    filled-new-array {v5, v0}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 1276
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->values()[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 1277
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1412
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    .line 1419
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 1420
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 1421
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 1547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    .line 1661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    .line 1821
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    .line 1822
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "removed"

    aput-object v2, v1, v3

    const-string v2, "isPlayer"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "objectId"

    aput-object v3, v1, v2

    const-string v2, "collisionGraceEnd"

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const-string v3, "lastServerUpdate"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "lastServerUpdateAtClientTime"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "distanceToPlayer"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "distanceToTarget"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->SKIP:Ljava/util/HashSet;

    .line 1968
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 1990
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 787
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 788
    return-object v0
.end method

.method private static acceptDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 301
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "LAN co-op"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wants to join your game."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Accept"

    .line 302
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$5;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Decline"

    .line 303
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$4;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_51} :catch_52

    .line 308
    :goto_51
    return-void

    .line 305
    :catch_52
    move-exception v0

    goto :goto_51
.end method

.method static synthetic access$002(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .registers 1

    .prologue
    .line 87
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 87
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    return-wide v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200()[B
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    return-object v0
.end method

.method static synthetic access$1202([B)[B
    .registers 1

    .prologue
    .line 87
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    return-object p0
.end method

.method static synthetic access$1300(Ljava/lang/String;J)Z
    .registers 4

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->tryRejoin(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    return v0
.end method

.method static synthetic access$1500()V
    .registers 0

    .prologue
    .line 87
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 87
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->findHosts(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/Activity;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->connectTo(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/net/Socket;J)Z
    .registers 4

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/net/Socket;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Throwable;)V
    .registers 1

    .prologue
    .line 87
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500()Ljava/net/DatagramSocket;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$502(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .registers 1

    .prologue
    .line 87
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$600(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 87
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1

    .prologue
    .line 87
    sput p0, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    return p0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 87
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    return p0
.end method

.method static synthetic access$900(I[B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V

    return-void
.end method

.method static added(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1800
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 1818
    :cond_8
    :goto_8
    return-void

    .line 1802
    :cond_9
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1803
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1804
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v1, :cond_31

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->lootMine:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lootMine:I

    goto :goto_11

    .line 1815
    :catch_2f
    move-exception v0

    goto :goto_8

    .line 1805
    :cond_31
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_11

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v1, :cond_11

    .line 1806
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 1807
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v1, v2, :cond_11

    .line 1808
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1809
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1810
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v1, 0x0

    :goto_5e
    if-ge v1, v7, :cond_68

    aget-object v8, v6, v1

    invoke-static {v5, v8, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->writeField(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 1812
    :cond_68
    const/4 v0, 0x4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 1813
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsOut:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsOut:I
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_72} :catch_2f

    goto :goto_11
.end method

.method public static alsoVisible(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x43960000    # 300.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1972
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v3, v1, :cond_11

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_11

    if-nez p0, :cond_12

    .line 1980
    :cond_11
    :goto_11
    return v2

    .line 1973
    :cond_12
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1974
    if-eqz v4, :cond_11

    .line 1975
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1976
    if-eqz v3, :cond_11

    .line 1977
    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    add-float/2addr v5, v6

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    add-float/2addr v6, v3

    .line 1978
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 1979
    if-eqz v7, :cond_55

    iget v3, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v8

    :goto_29
    if-eqz v7, :cond_2e

    iget v0, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v0, v8

    .line 1980
    :cond_2e
    iget-object v7, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v8, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v5

    cmpg-float v3, v7, v3

    if-gez v3, :cond_57

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v6

    cmpg-float v0, v3, v0

    if-gez v0, :cond_57

    move v0, v1

    :goto_53
    move v2, v0

    goto :goto_11

    :cond_55
    move v3, v0

    .line 1979
    goto :goto_29

    :cond_57
    move v0, v2

    .line 1980
    goto :goto_53
.end method

.method static arenaLevel(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2128
    if-eqz p0, :cond_15

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_15

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-eqz v0, :cond_15

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    move-object v0, v1

    .line 2140
    :goto_16
    return-object v0

    .line 2130
    :cond_17
    :try_start_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2131
    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 2132
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 2134
    const v3, 0x7f06002d

    iput v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 2135
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 2136
    const-string v3, "lan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duel bay built, elements "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_56} :catch_57

    goto :goto_16

    .line 2138
    :catch_57
    move-exception v0

    .line 2139
    const-string v2, "lan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duel bay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 2140
    goto :goto_16
.end method

.method private static askAccept(Ljava/lang/String;J)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 278
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 279
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 281
    :try_start_6
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->activity()Landroid/app/Activity;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_12
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 284
    :cond_14
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_24

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$3;

    invoke-direct {v3, v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_24} :catch_56

    .line 288
    :cond_24
    :goto_24
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    .line 291
    :goto_2d
    :try_start_2d
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-nez v4, :cond_46

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_46

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_44} :catch_45

    goto :goto_2d

    .line 292
    :catch_45
    move-exception v2

    .line 295
    :cond_46
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 296
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-ne v2, v0, :cond_54

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_54

    :goto_53
    return v0

    :cond_54
    move v0, v1

    goto :goto_53

    .line 285
    :catch_56
    move-exception v2

    goto :goto_24
.end method

.method private static b255(F)I
    .registers 3

    .prologue
    .line 801
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    .line 802
    :goto_6
    return v0

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_10

    const/16 v0, 0xff

    goto :goto_6

    :cond_10
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_6
.end method

.method private static bad(F)Z
    .registers 2

    .prologue
    .line 1564
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static barFor(IILfr/testudo/spacecorsair/mod/ModLan$Rec;)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;
    .registers 8

    .prologue
    .line 1226
    const/16 v0, 0x60

    if-lt p1, v0, :cond_6

    const/4 v0, 0x0

    .line 1234
    :cond_5
    :goto_5
    return-object v0

    .line 1227
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    .line 1228
    if-eqz v0, :cond_36

    iget v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->witdh:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_36

    iget v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->height:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_36

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_36

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_50

    .line 1229
    :cond_36
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    aget-object v1, v0, p0

    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iget v4, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iget v3, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    float-to-int v3, v3

    iget v4, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    float-to-int v4, v4

    invoke-direct {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    aput-object v0, v1, p1

    .line 1231
    :cond_50
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 1232
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xa:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xr:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xg:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xb:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 1233
    iget v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->pourcentageValue:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    goto :goto_5
.end method

.method public static beforeSwap(Lfr/testudo/spacecorsair/engine/RenderQueue;)V
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1905
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v1, :cond_9

    .line 1966
    :cond_8
    :goto_8
    return-void

    .line 1907
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1908
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->lastSendMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1e

    cmp-long v1, v4, v6

    if-ltz v1, :cond_8

    .line 1909
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastSendMs:J

    .line 1910
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1911
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 1912
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v1, :cond_8

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v1, :cond_8

    .line 1913
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1914
    if-eqz v6, :cond_8

    .line 1915
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v0, :cond_129

    .line 1916
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_8

    .line 1917
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const v0, 0x8000

    invoke-direct {v10, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1918
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1919
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1920
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_10d

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_60
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1921
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1922
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1923
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 1924
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_95

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_95

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    .line 1925
    :cond_95
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 1926
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v11, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1927
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const v0, 0x8000

    invoke-direct {v12, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1928
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1929
    const/4 v1, 0x0

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    if-gez v0, :cond_111

    move v3, v9

    :goto_af
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    if-gez v0, :cond_114

    move v4, v9

    :goto_b4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x898

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v0

    .line 1930
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1931
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1932
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1933
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1934
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 1935
    if-nez v1, :cond_117

    move v0, v9

    .line 1936
    :goto_ea
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-nez v0, :cond_125

    :goto_ef
    invoke-virtual {v11, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lez v0, :cond_fb

    const/4 v0, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v11, v1, v0, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1937
    :cond_fb
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 1938
    const/4 v0, 0x2

    invoke-static {v0, v10}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 1939
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_8

    .line 1963
    :catch_10a
    move-exception v0

    goto/16 :goto_8

    .line 1920
    :cond_10d
    const-string v0, ""

    goto/16 :goto_60

    .line 1929
    :cond_111
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    goto :goto_af

    :cond_114
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    goto :goto_b4

    .line 1935
    :cond_117
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    goto :goto_ea

    .line 1936
    :cond_125
    array-length v2, v1

    add-int/lit8 v9, v2, -0x2

    goto :goto_ef

    .line 1940
    :cond_129
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v10, :cond_8

    .line 1941
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v10, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1942
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1943
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1944
    iget-boolean v2, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_1ed

    iget v2, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_1ed

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_1ed

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v2, :cond_1ed

    .line 1945
    :goto_155
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1946
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_1f0

    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_160
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1947
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1948
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1949
    iget v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1950
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfW()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfH()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1951
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v12, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1952
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1954
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-ltz v0, :cond_1f4

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-le v0, v1, :cond_1f4

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v8, 0xc8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v0

    .line 1955
    :goto_1c7
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1956
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1957
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1958
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 1960
    const/4 v0, 0x3

    invoke-static {v0, v10}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 1961
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_8

    :cond_1ed
    move v0, v9

    .line 1944
    goto/16 :goto_155

    .line 1946
    :cond_1f0
    const-string v0, ""
    :try_end_1f2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1f2} :catch_10a

    goto/16 :goto_160

    :cond_1f4
    move v0, v9

    goto :goto_1c7
.end method

.method private static begin(Ljava/net/Socket;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x10000

    const/4 v3, 0x1

    .line 441
    invoke-virtual {p0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 442
    invoke-virtual {p0, v4}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 443
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 444
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    .line 445
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    .line 446
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 447
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_9b

    .line 448
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->resetTables()V

    .line 449
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 450
    const-string v0, "Co-op connected"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 451
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected role="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " peer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->announce:Z

    .line 453
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 454
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 455
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$6;

    invoke-direct {v3, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModLan$6;-><init>(JLjava/io/DataInputStream;)V

    const-string v0, "lan-read"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    .line 479
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$7;

    invoke-direct {v2, p1, p2, v1}, Lfr/testudo/spacecorsair/mod/ModLan$7;-><init>(JLjava/io/DataOutputStream;)V

    const-string v1, "lan-write"

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    .line 501
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 502
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 503
    return-void

    .line 447
    :catchall_9b
    move-exception v0

    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v0
.end method

.method static broadcasts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 363
    :cond_9
    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 364
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 365
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 366
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 367
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_2b

    .line 370
    :catch_4f
    move-exception v0

    .line 373
    :cond_50
    :try_start_50
    const-string v0, "255.255.255.255"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_5a

    .line 374
    :goto_59
    return-object v1

    .line 373
    :catch_5a
    move-exception v0

    goto :goto_59
.end method

.method static buttonLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2170
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_f

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_f

    const-string v0, "Multiplayer"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2171
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_2d

    const-string v0, " *"

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2d
    const-string v0, " ..."

    goto :goto_24
.end method

.method private static capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aget-object v8, v1, v2

    .line 811
    const/4 v7, 0x0

    .line 812
    :goto_b
    move/from16 v0, p2

    if-ge p1, v0, :cond_301

    move/from16 v0, p8

    if-ge v7, v0, :cond_301

    .line 813
    move/from16 v0, p3

    if-lt p1, v0, :cond_20

    move/from16 v0, p4

    if-ge p1, v0, :cond_20

    move v1, v7

    .line 812
    :goto_1c
    add-int/lit8 p1, p1, 0x1

    move v7, v1

    goto :goto_b

    .line 814
    :cond_20
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    if-lez v1, :cond_31

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLan;->skipped(I)Z

    move-result v1

    if-eqz v1, :cond_31

    move v1, v7

    goto :goto_1c

    .line 815
    :cond_31
    aget-object v9, v8, p1

    .line 816
    if-eqz v9, :cond_302

    iget-boolean v1, v9, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    if-nez v1, :cond_302

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fBack:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    move v1, v7

    goto :goto_1c

    .line 817
    :cond_43
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fType:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 818
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fPos:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 819
    if-nez v1, :cond_55

    move v1, v7

    goto :goto_1c

    .line 820
    :cond_55
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fA:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v10

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fR:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fG:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fB:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v4

    .line 821
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fZoom:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    .line 822
    sget-object v3, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v2, v3, :cond_189

    .line 823
    iget-object v2, v9, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 824
    if-eqz v2, :cond_302

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eq v2, v3, :cond_302

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-ne v2, v3, :cond_85

    move v1, v7

    goto :goto_1c

    .line 825
    :cond_85
    instance-of v3, v2, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    if-eqz v3, :cond_305

    .line 826
    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v5, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    .line 827
    check-cast v2, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;->base:Lfr/testudo/spacecorsair/display/Drawable;

    .line 829
    :goto_97
    iget-object v4, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->defId(Lfr/testudo/spacecorsair/display/Texture;)I

    move-result v12

    .line 830
    if-gez v12, :cond_a2

    move v1, v7

    goto/16 :goto_1c

    .line 831
    :cond_a2
    instance-of v13, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 832
    if-eqz v13, :cond_15f

    const/4 v4, 0x1

    :goto_a7
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 833
    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 834
    iget v4, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, v4, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v1, v1, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fSpin:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 835
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 836
    if-eqz v13, :cond_16c

    move-object v1, v2

    .line 837
    check-cast v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 838
    if-eqz v11, :cond_162

    const/4 v2, 0x1

    :goto_fa
    iget-boolean v3, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v3, :cond_164

    const/4 v3, 0x2

    :goto_ff
    or-int/2addr v3, v2

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    if-eqz v2, :cond_166

    const/4 v2, 0x4

    :goto_105
    or-int/2addr v3, v2

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    if-eqz v2, :cond_168

    const/16 v2, 0x8

    :goto_10c
    or-int/2addr v3, v2

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_16a

    const/16 v2, 0x10

    :goto_113
    or-int/2addr v2, v3

    .line 839
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 840
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 841
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 842
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_15b

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 847
    :cond_15b
    :goto_15b
    add-int/lit8 v1, v7, 0x1

    .line 848
    goto/16 :goto_1c

    .line 832
    :cond_15f
    const/4 v4, 0x0

    goto/16 :goto_a7

    .line 838
    :cond_162
    const/4 v2, 0x0

    goto :goto_fa

    :cond_164
    const/4 v3, 0x0

    goto :goto_ff

    :cond_166
    const/4 v2, 0x0

    goto :goto_105

    :cond_168
    const/4 v2, 0x0

    goto :goto_10c

    :cond_16a
    const/4 v2, 0x0

    goto :goto_113

    .line 844
    :cond_16c
    if-eqz v11, :cond_187

    const/4 v1, 0x1

    :goto_16f
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 845
    iget-object v1, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v1, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_15b

    .line 844
    :cond_187
    const/4 v1, 0x0

    goto :goto_16f

    .line 848
    :cond_189
    sget-object v3, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v2, v3, :cond_204

    .line 849
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fText:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 850
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fTSize:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 851
    if-eqz v2, :cond_302

    if-eqz v3, :cond_302

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0xc8

    if-le v9, v12, :cond_1ac

    move v1, v7

    goto/16 :goto_1c

    .line 852
    :cond_1ac
    const/4 v9, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 853
    iget v9, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v9, v9, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v1, v1, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 854
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 855
    if-eqz v11, :cond_202

    const/4 v1, 0x1

    :goto_1eb
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 856
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 857
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 858
    add-int/lit8 v1, v7, 0x1

    .line 859
    goto/16 :goto_1c

    .line 855
    :cond_202
    const/4 v1, 0x0

    goto :goto_1eb

    .line 859
    :cond_204
    sget-object v3, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v2, v3, :cond_253

    .line 860
    const/4 v2, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 861
    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v2, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v1, v1, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 862
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 863
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fPSize:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 864
    add-int/lit8 v1, v7, 0x1

    goto/16 :goto_1c

    .line 865
    :cond_253
    sget-object v3, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v2, v3, :cond_302

    .line 866
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 867
    instance-of v3, v2, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-nez v3, :cond_264

    move v1, v7

    goto/16 :goto_1c

    .line 868
    :cond_264
    check-cast v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 869
    const/4 v3, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 870
    iget v3, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v1, v1, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 871
    iget-object v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 872
    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->height:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 873
    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 874
    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extA:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extR:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extG:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extB:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 875
    add-int/lit8 v1, v7, 0x1

    goto/16 :goto_1c

    .line 878
    :cond_301
    return v7

    :cond_302
    move v1, v7

    goto/16 :goto_1c

    :cond_305
    move v3, v4

    goto/16 :goto_97
.end method

.method static captureForTest(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;)I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2154
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    .line 2155
    const/16 v8, 0x898

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v0

    return v0
.end method

.method static clean(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 253
    if-nez p0, :cond_5

    const-string v0, ""

    .line 259
    :goto_4
    return-object v0

    .line 254
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_2f

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 257
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2c

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 259
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static connectTo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 2295
    :goto_6
    return-void

    .line 2289
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$28;

    invoke-direct {v1, p1, p0}, Lfr/testudo/spacecorsair/mod/ModLan$28;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    const-string v2, "lan-join"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2294
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method public static countsAsEnemy(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 1614
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static defId(Lfr/testudo/spacecorsair/display/Texture;)I
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 712
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v2

    .line 713
    if-nez v2, :cond_9

    move v0, v1

    .line 729
    :goto_8
    return v0

    .line 714
    :cond_9
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v3

    .line 715
    :try_start_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 716
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 730
    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v0

    .line 717
    :cond_1f
    :try_start_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const v4, 0xea60

    if-lt v0, v4, :cond_2d

    monitor-exit v3

    move v0, v1

    goto :goto_8

    .line 718
    :cond_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 719
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_1c

    .line 721
    :try_start_3e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 722
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 723
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 724
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x1

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_56} :catch_5c
    .catchall {:try_start_3e .. :try_end_56} :catchall_1c

    .line 729
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 726
    :catch_5c
    move-exception v0

    .line 727
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_1c

    move v0, v1

    goto :goto_8
.end method

.method static defOk(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1100
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x60

    if-le v2, v3, :cond_14

    .line 1115
    :cond_13
    :goto_13
    return v0

    .line 1101
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1102
    const/16 v3, 0x52

    if-ne v2, v3, :cond_33

    .line 1104
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_7d

    move-result v2

    .line 1105
    ushr-int/lit8 v3, v2, 0x10

    const/16 v4, 0x7f02

    if-eq v3, v4, :cond_31

    ushr-int/lit8 v2, v2, 0x10

    const/16 v3, 0x7f03

    if-ne v2, v3, :cond_13

    :cond_31
    move v0, v1

    goto :goto_13

    .line 1110
    :cond_33
    const/16 v3, 0x4c

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_13

    :cond_3b
    move v2, v1

    .line 1111
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 1112
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1113
    const/16 v4, 0x61

    if-lt v3, v4, :cond_4e

    const/16 v4, 0x7a

    if-le v3, v4, :cond_6e

    :cond_4e
    const/16 v4, 0x41

    if-lt v3, v4, :cond_56

    const/16 v4, 0x5a

    if-le v3, v4, :cond_6e

    :cond_56
    const/16 v4, 0x30

    if-lt v3, v4, :cond_5e

    const/16 v4, 0x39

    if-le v3, v4, :cond_6e

    :cond_5e
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_6e

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_6e

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_6e

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_13

    .line 1111
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1115
    :cond_71
    const-string v2, ".."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7b

    :goto_79
    move v0, v1

    goto :goto_13

    :cond_7b
    move v1, v0

    goto :goto_79

    .line 1106
    :catch_7d
    move-exception v1

    goto :goto_13
.end method

.method static defineForTest(ILfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 2160
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method static drawProxy(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 5

    .prologue
    .line 1628
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 1635
    :goto_9
    return v0

    .line 1630
    :cond_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_41

    .line 1631
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    .line 1632
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 1633
    :cond_27
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v2, 0x43160000    # 150.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLanUi;->drawLabel(FFLjava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 1635
    const/4 v0, 0x1

    goto :goto_9

    .line 1630
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method static duel(Z)V
    .registers 4

    .prologue
    .line 2004
    if-eqz p0, :cond_7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_7

    .line 2007
    :goto_6
    return-void

    .line 2005
    :cond_7
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2006
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method static duelFloor(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)F
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2117
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_15

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_15

    if-eqz p0, :cond_15

    cmpg-float v0, p1, v2

    if-lez v0, :cond_15

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2123
    :cond_15
    :goto_15
    return p1

    .line 2118
    :cond_16
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2119
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_15

    .line 2120
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2121
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_15
.end method

.method private static enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 946
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x78

    if-gt v2, v3, :cond_14

    const-string v2, "fr.testudo.spacecorsair.business.ennemis."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move-object v0, v1

    .line 961
    :cond_15
    :goto_15
    return-object v0

    .line 947
    :cond_16
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    goto :goto_15

    .line 950
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    const-class v3, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 951
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 952
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_42
    if-ge v2, v5, :cond_83

    aget-object v0, v4, v2

    .line 953
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 954
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v3, :cond_7c

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7c

    const/4 v7, 0x0

    aget-object v7, v6, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_7c

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_6a} :catch_80

    if-ne v6, v7, :cond_7c

    .line 960
    :goto_6c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_15

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 952
    :cond_7c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 957
    :catch_80
    move-exception v0

    move-object v0, v1

    .line 958
    goto :goto_6c

    :cond_83
    move-object v0, v1

    goto :goto_6c
.end method

.method private static extent(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 1896
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fx:Ljava/lang/reflect/Field;

    if-nez v0, :cond_18

    const-class v0, Lfr/testudo/spacecorsair/engine/GameThread;

    const-string v1, "xDelta"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fx:Ljava/lang/reflect/Field;

    const-class v0, Lfr/testudo/spacecorsair/engine/GameThread;

    const-string v1, "yDelta"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fy:Ljava/lang/reflect/Field;

    .line 1897
    :cond_18
    const-string v0, "xDelta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fx:Ljava/lang/reflect/Field;

    :goto_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1899
    :goto_2a
    return v0

    .line 1897
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fy:Ljava/lang/reflect/Field;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 1898
    :catch_2e
    move-exception v0

    .line 1899
    const v0, 0x44bb8000    # 1500.0f

    goto :goto_2a
.end method

.method private static fail(Ljava/lang/Throwable;)V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 506
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 507
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 508
    const-string v0, "lan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "link failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 510
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 511
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 512
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Co-op link lost"

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p0, :cond_69

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_54
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 514
    if-eqz v1, :cond_62

    sput-boolean v8, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    .line 515
    :cond_62
    if-eqz v1, :cond_68

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-eqz v0, :cond_6c

    .line 542
    :cond_68
    :goto_68
    return-void

    .line 513
    :cond_69
    const-string v0, ""

    goto :goto_54

    .line 517
    :cond_6c
    if-ne v2, v8, :cond_87

    .line 518
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 520
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 521
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 522
    const-string v0, "Co-op link lost. Waiting 30 s for your friend to reconnect..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_68

    .line 523
    :cond_87
    const/4 v0, 0x2

    if-ne v2, v0, :cond_68

    if-eqz v3, :cond_68

    .line 524
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 525
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 526
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$8;

    invoke-direct {v4, v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan$8;-><init>(JLjava/lang/String;)V

    const-string v0, "lan-rejoin"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_68
.end method

.method private static fin(F)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    :cond_14
    return p0
.end method

.method private static findHosts(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 2249
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "LAN co-op"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Looking for games on this network..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2250
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$24;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$24;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lan-scan"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2260
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2261
    return-void
.end method

.method private static fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1641
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1642
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1643
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->shotClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1644
    if-nez v2, :cond_2b

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2a

    const-string v0, "shot class"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->violation(Ljava/lang/String;)V

    .line 1659
    :cond_2a
    :goto_2a
    return-void

    .line 1645
    :cond_2b
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->newProjectile(Ljava/lang/Class;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v3

    .line 1646
    if-eqz v3, :cond_2a

    .line 1647
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    :goto_36
    if-ge v0, v4, :cond_40

    aget-object v5, v2, v0

    invoke-static {v1, v5, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readField(Ljava/io/DataInputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1648
    :cond_40
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FF)Z

    move-result v0

    if-nez v0, :cond_72

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    const/4 v0, 0x1

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_57} :catch_58

    goto :goto_2a

    .line 1656
    :catch_58
    move-exception v0

    .line 1657
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shot failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 1649
    :cond_72
    :try_start_72
    iput-object p1, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 1650
    const/4 v0, 0x0

    iput-object v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 1651
    const/4 v0, 0x0

    iput-object v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->poisonSource:Lfr/testudo/spacecorsair/business/Element;

    .line 1652
    const/4 v0, 0x0

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    .line 1653
    const/4 v0, 0x0

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPlayer:Z

    .line 1654
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->updateSapCoords()V

    .line 1655
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_88} :catch_58

    goto :goto_2a
.end method

.method static frame()V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1428
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3c

    const-wide/16 v0, 0x10

    .line 1429
    :goto_10
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    .line 1430
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    .line 1431
    const/4 v4, -0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    .line 1432
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    .line 1434
    :try_start_23
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1435
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1436
    :cond_31
    if-eqz v5, :cond_3b

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_f9

    if-nez v4, :cond_4d

    .line 1460
    :cond_3b
    :goto_3b
    return-void

    .line 1428
    :cond_3c
    const-wide/16 v0, 0x1

    const-wide/16 v4, 0x64

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    sub-long v8, v6, v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_10

    .line 1437
    :cond_4d
    :try_start_4d
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->announce:Z

    if-eqz v4, :cond_94

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->announce:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CO-OP CONNECTED"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_fc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_82
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v5, v4, v8, v9, v10}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1438
    :cond_94
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    if-eqz v4, :cond_ac

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    const-string v4, "CO-OP LINK LOST"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ecccccd    # 0.4f

    const v10, 0x3e99999a    # 0.3f

    invoke-static {v5, v4, v8, v9, v10}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1439
    :cond_ac
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->testSwitch(J)V

    .line 1440
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    if-eqz v4, :cond_e1

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    if-eqz v4, :cond_e1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "wants to join your game."

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v5, v4, v8, v9, v10}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1441
    :cond_e1
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x7d0

    cmp-long v4, v8, v10

    if-lez v4, :cond_f0

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->persistedMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 1442
    :cond_f0
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v4, :cond_ff

    .line 1443
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    goto/16 :goto_3b

    .line 1457
    :catch_f9
    move-exception v0

    goto/16 :goto_3b

    .line 1437
    :cond_fc
    const-string v4, ""

    goto :goto_82

    .line 1446
    :cond_ff
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xbb8

    cmp-long v4, v8, v10

    if-lez v4, :cond_264

    .line 1447
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    .line 1448
    const-string v6, "lan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v4, v3, :cond_26d

    const-string v4, "host"

    :goto_118
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " level="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v7, v7, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v7, v7, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " sent="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " got="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " lastRecs="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " proxy="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v7, :cond_15d

    move v2, v3

    :cond_15d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " shotsIn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " shotsOut="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->shotsOut:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dmgSent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dmgSeen="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " xpSent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " xpSeen="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hull="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pos="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " killsOut="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " killsIn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " lootMine="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->lootMine:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " rawBs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->logRaw:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3

    div-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " outBs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->logOut:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3

    div-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " inBs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->logIn:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3

    div-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " strikes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logOut:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logIn:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logRaw:J

    .line 1455
    :cond_264
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_271

    invoke-static {v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto/16 :goto_3b

    .line 1448
    :cond_26d
    const-string v4, "guest"

    goto/16 :goto_118

    .line 1456
    :cond_271
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->guestFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_279
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_279} :catch_f9

    goto/16 :goto_3b
.end method

.method private static frameBytes(ILjava/io/ByteArrayOutputStream;)[B
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 672
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 673
    add-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    .line 674
    int-to-byte v2, p0

    aput-byte v2, v1, v4

    .line 675
    const/4 v2, 0x1

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 676
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    return-object v1
.end method

.method static guestActive()Z
    .registers 2

    .prologue
    .line 1789
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static guestDraw(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1778
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1779
    if-ne p0, v3, :cond_18

    move v0, v1

    :goto_9
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipNow:Z

    .line 1780
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v0, :cond_1a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1785
    :goto_17
    return v1

    :cond_18
    move v0, v2

    .line 1779
    goto :goto_9

    .line 1781
    :cond_1a
    if-eq p0, v3, :cond_1e

    move v1, v2

    goto :goto_17

    .line 1783
    :cond_1e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 1784
    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    goto :goto_17

    .line 1783
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private static guestDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2083
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2084
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_f

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2098
    :cond_e
    :goto_e
    return-void

    .line 2085
    :cond_f
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_28

    .line 2086
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2087
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_25

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    .line 2088
    :cond_25
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2090
    :cond_28
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_e

    .line 2091
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    if-le v0, v3, :cond_4e

    move v0, v1

    .line 2092
    :goto_35
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-nez v3, :cond_50

    .line 2093
    :goto_39
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2094
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2095
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2096
    if-nez v1, :cond_e

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    goto :goto_e

    :cond_4e
    move v0, v2

    .line 2091
    goto :goto_35

    :cond_50
    move v1, v2

    .line 2092
    goto :goto_39
.end method

.method private static guestFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 14

    .prologue
    const/high16 v7, 0x437a0000    # 250.0f

    const/high16 v12, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 1680
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_27

    .line 1681
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    if-eqz v0, :cond_22

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 1682
    :cond_22
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v0, :cond_2a

    .line 1755
    :cond_26
    :goto_26
    return-void

    .line 1680
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    .line 1683
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1685
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1686
    if-eq v0, p0, :cond_36

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_36

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1687
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v1, :cond_5a

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1688
    :cond_5a
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v1, :cond_79

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-nez v1, :cond_79

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-nez v1, :cond_79

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-nez v1, :cond_79

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Mine;

    if-nez v1, :cond_79

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_36

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v1, p0, :cond_36

    .line 1689
    :cond_79
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_36

    .line 1691
    :cond_7d
    const/4 v0, 0x0

    .line 1692
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_81
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_95

    new-instance v0, Ljava/util/ArrayList;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_81 .. :try_end_96} :catchall_ac

    .line 1693
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->rollLoot(Lfr/testudo/spacecorsair/mod/ModLan$Kill;)V

    goto :goto_9c

    .line 1692
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    .line 1694
    :cond_af
    if-eqz v6, :cond_26

    .line 1695
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 1697
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_14d

    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14d

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_14d

    .line 1698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1699
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v2, :cond_de

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0xbb8

    cmp-long v2, v8, v10

    if-lez v2, :cond_26

    .line 1700
    :cond_de
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 1701
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    .line 1703
    const/4 v1, 0x0

    .line 1704
    :try_start_e4
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v5

    array-length v7, v5

    move v2, v3

    :goto_ea
    if-ge v2, v7, :cond_27e

    aget-object v0, v5, v2

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v9, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13d

    .line 1705
    :goto_f8
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_141

    .line 1706
    iget-object v1, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v2, :cond_10a

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v1, :cond_10a

    iget-object v1, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1707
    :cond_10a
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v2, "VECTOR00_GATE"

    invoke-virtual {v4, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :cond_111
    :goto_111
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guest pulled to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_14b

    const/4 v0, 0x1

    :goto_12d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 1711
    :catch_13a
    move-exception v0

    goto/16 :goto_26

    .line 1704
    :cond_13d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ea

    .line 1709
    :cond_141
    if-eqz v0, :cond_111

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_14a} :catch_13a

    goto :goto_111

    :cond_14b
    move v0, v3

    .line 1710
    goto :goto_12d

    .line 1717
    :cond_14d
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v0, :cond_16b

    .line 1718
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 1719
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_25b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    const/high16 v3, 0x45160000    # 2400.0f

    add-float/2addr v1, v3

    iget v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1721
    :goto_163
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1722
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 1725
    :cond_16b
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_175

    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 1726
    :cond_175
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    sub-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sub-float v1, v0, v1

    .line 1727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1728
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_268

    move v0, v2

    .line 1729
    :goto_189
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_199

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v3, v12

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    const v3, 0x4e6e6b28    # 1.0E9f

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 1730
    :cond_199
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    .line 1732
    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v3, v12

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 1733
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1db

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v3, :cond_1db

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1db

    .line 1734
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    add-float/2addr v3, v1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    .line 1735
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1cf

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1736
    :cond_1cf
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    sub-float/2addr v3, v1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 1737
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1db

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 1740
    :cond_1db
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    cmp-long v1, v4, v10

    if-gez v1, :cond_1e5

    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 1741
    :cond_1e5
    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    sub-long/2addr v4, v8

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    sub-long/2addr v4, v8

    .line 1743
    const/high16 v1, 0x447a0000    # 1000.0f

    :try_start_1ef
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v8, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-float v3, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1744
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    mul-float/2addr v0, v1

    const/high16 v7, 0x42700000    # 60.0f

    div-float/2addr v0, v7

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_1ef .. :try_end_209} :catch_27a

    .line 1746
    :goto_209
    cmp-long v0, v4, v10

    if-lez v0, :cond_241

    .line 1747
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    add-long/2addr v0, v4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    .line 1748
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    float-to-long v0, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_27c

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v0, v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1749
    :goto_226
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    long-to-float v4, v0

    sub-float/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 1750
    cmp-long v3, v0, v10

    if-lez v3, :cond_241

    :try_start_230
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    const-wide/32 v4, 0x7fffffff

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V
    :try_end_241
    .catch Ljava/lang/Throwable; {:try_start_230 .. :try_end_241} :catch_278

    .line 1752
    :cond_241
    :goto_241
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 1753
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v0, v1, v2, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 1754
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    const/high16 v2, 0x43160000    # 150.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLanUi;->drawLabel(FFLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 1720
    :cond_25b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    add-float/2addr v1, v7

    iget v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    add-float/2addr v3, v7

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_163

    .line 1728
    :cond_268
    const/high16 v0, 0x40000000    # 2.0f

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    sub-long v8, v4, v8

    long-to-float v3, v8

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v3, v7

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_189

    .line 1750
    :catch_278
    move-exception v0

    goto :goto_241

    .line 1745
    :catch_27a
    move-exception v0

    goto :goto_209

    :cond_27c
    move-wide v0, v4

    goto :goto_226

    :cond_27e
    move-object v0, v1

    goto/16 :goto_f8
.end method

.method private static guestMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V
    .registers 20

    .prologue
    .line 1281
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-gtz v1, :cond_f

    .line 1314
    :cond_e
    :goto_e
    return-void

    .line 1283
    :cond_f
    :try_start_f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 1284
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v14, v2, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1285
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v15, v2

    .line 1286
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-lez v2, :cond_e

    .line 1287
    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    div-float v16, v2, v15

    .line 1288
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1289
    const/4 v2, 0x0

    move v13, v2

    :goto_3c
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-ge v13, v2, :cond_e

    .line 1290
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 1291
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 1292
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float v7, v6, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x437f0000    # 255.0f

    div-float v8, v6, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v9, v6, v9

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v10, v6, v10

    .line 1293
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v12

    .line 1294
    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v6, v2

    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v3, v6, v3

    .line 1295
    mul-float v6, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v6, v11

    mul-float v11, v15, v15

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_91

    .line 1289
    :cond_8d
    :goto_8d
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3c

    .line 1296
    :cond_91
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v11, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    neg-float v2, v2

    mul-float v2, v2, v16

    neg-float v3, v3

    mul-float v3, v3, v16

    invoke-virtual {v6, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1297
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_bd

    const/4 v2, 0x1

    .line 1298
    :goto_a7
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_cd

    .line 1299
    if-eqz v2, :cond_bf

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/Mission;->targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 1300
    :goto_af
    if-eqz v4, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto :goto_8d

    .line 1311
    :catch_ba
    move-exception v1

    goto/16 :goto_e

    .line 1297
    :cond_bd
    const/4 v2, 0x0

    goto :goto_a7

    .line 1299
    :cond_bf
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    array-length v2, v2

    if-ge v5, v2, :cond_cb

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aget-object v2, v2, v5

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_af

    :cond_cb
    const/4 v4, 0x0

    goto :goto_af

    .line 1301
    :cond_cd
    if-eqz v2, :cond_105

    .line 1302
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_f9

    const-string v2, "icon_skull"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 1303
    :goto_d9
    if-eqz v2, :cond_fb

    .line 1304
    const/high16 v6, 0x41500000    # 13.0f

    const v3, 0x3f555555

    mul-float v5, v6, v3

    .line 1305
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e6147ae    # 0.22f

    const v9, 0x3e3851ec    # 0.18f

    const v10, 0x3f59999a    # 0.85f

    invoke-static/range {v2 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->hudTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFF)V

    goto :goto_8d

    .line 1302
    :cond_f9
    const/4 v2, 0x0

    goto :goto_d9

    .line 1306
    :cond_fb
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-static/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto :goto_8d

    .line 1307
    :cond_105
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    array-length v2, v2

    if-ge v5, v2, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aget-object v2, v2, v5

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_8d

    .line 1308
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aget-object v4, v4, v5

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_128} :catch_ba

    goto/16 :goto_8d
.end method

.method private static guestMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V
    .registers 7

    .prologue
    .line 1337
    :try_start_0
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    if-nez v0, :cond_11

    .line 1347
    :cond_10
    :goto_10
    return-void

    .line 1338
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1339
    if-eqz v0, :cond_10

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1340
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_79

    .line 1341
    :try_start_34
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "done"

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4e} :catch_7b

    .line 1342
    :goto_4e
    :try_start_4e
    const-string v1, "CO-OP MISSION COMPLETE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1343
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shared mission completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_78} :catch_79

    goto :goto_10

    .line 1344
    :catch_79
    move-exception v0

    goto :goto_10

    .line 1341
    :catch_7b
    move-exception v1

    goto :goto_4e
.end method

.method private static hello(Ljava/net/Socket;J)Z
    .registers 16

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 402
    const/16 v2, 0xbb8

    :try_start_4
    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 403
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 404
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 405
    const-string v3, "SCLAN2"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [B

    .line 406
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 407
    const-string v5, "SCLAN2"

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 426
    :goto_33
    return v0

    .line 408
    :cond_34
    const/16 v3, 0x40

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x28

    invoke-static {v3, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    invoke-static {v3, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 409
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 410
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_80

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 412
    :goto_6a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6d} :catch_7e

    :try_start_6d
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_84

    .line 413
    if-eqz v8, :cond_87

    const/4 v1, 0x3

    :try_start_77
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_33

    .line 425
    :catch_7e
    move-exception v1

    goto :goto_33

    .line 410
    :cond_80
    const-string v2, ""
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_82} :catch_7e

    move-object v3, v2

    goto :goto_6a

    .line 412
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw v1

    .line 414
    :cond_87
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refused version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 415
    :cond_b9
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_105

    move v2, v1

    .line 416
    :goto_cc
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
    if-nez v2, :cond_107

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    if-nez v2, :cond_107

    invoke-static {v5, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->askAccept(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_107

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "declined "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_105
    move v2, v0

    .line 415
    goto :goto_cc

    .line 418
    :cond_107
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 419
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 421
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 422
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 423
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_12a} :catch_7e

    move v0, v1

    .line 424
    goto/16 :goto_33
.end method

.method static host()V
    .registers 5

    .prologue
    .line 115
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 116
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 117
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 118
    const-string v2, "Waiting for a player to join..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$1;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$1;-><init>(J)V

    const-string v4, "lan-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    .line 140
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 141
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$2;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$2;-><init>(J)V

    const-string v0, "lan-beacon"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    .line 163
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method private static hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2019
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_23

    .line 2020
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2021
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2022
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2023
    if-eqz p2, :cond_34

    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    :goto_1c
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2024
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2025
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2027
    :cond_23
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_36

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-nez v0, :cond_36

    .line 2028
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2029
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2030
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    .line 2065
    :cond_33
    :goto_33
    return-void

    :cond_34
    move v0, v1

    .line 2023
    goto :goto_1c

    .line 2033
    :cond_36
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_33

    .line 2034
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2036
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    if-eqz v3, :cond_52

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1770

    cmp-long v3, v4, v6

    if-lez v3, :cond_33

    .line 2037
    :cond_52
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2038
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    .line 2039
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_64

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v0, :cond_64

    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2040
    :cond_64
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v1, "VECTOR00_GATE"

    invoke-virtual {p1, v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host jumps to the duel bay from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 2046
    :cond_88
    if-eqz p2, :cond_106

    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_106

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_106

    move v0, v2

    .line 2047
    :goto_9f
    if-eqz v0, :cond_c1

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    const-string v3, "lan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duel round forced, dmg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    :cond_c1
    if-eqz p2, :cond_e2

    iget v3, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    if-gt v3, v4, :cond_cb

    if-eqz v0, :cond_e2

    .line 2049
    :cond_cb
    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2050
    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2051
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    .line 2052
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2053
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2054
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2056
    :cond_e2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_fb

    .line 2057
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2058
    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2059
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2060
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2061
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2062
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2064
    :cond_fb
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    if-eqz v0, :cond_33

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_33

    :cond_106
    move v0, v1

    .line 2046
    goto :goto_9f
.end method

.method static hostForTest()V
    .registers 1

    .prologue
    .line 2147
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    .line 1466
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1467
    :try_start_3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1468
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1469
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1470
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_50

    .line 1471
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1472
    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->hostMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;)V

    .line 1473
    invoke-static {p0, v4, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    .line 1474
    if-eqz v2, :cond_53

    iget-boolean v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    if-eqz v0, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x7d0

    cmp-long v0, v0, v6

    if-gez v0, :cond_53

    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_53

    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_53

    const/4 v0, 0x1

    .line 1476
    :goto_4a
    if-nez v0, :cond_55

    .line 1477
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1533
    :cond_4f
    :goto_4f
    return-void

    .line 1470
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 1474
    :cond_53
    const/4 v0, 0x0

    goto :goto_4a

    .line 1480
    :cond_55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_63

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_63

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eq v0, v4, :cond_6f

    :cond_63
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    .line 1481
    :cond_6f
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1482
    if-eqz v5, :cond_4f

    .line 1484
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    if-eq v2, v0, :cond_e7

    .line 1485
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1486
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sub-float v1, v0, v1

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    sub-float v6, v0, v6

    .line 1487
    const v0, 0x3c83126f    # 0.016f

    iget-wide v8, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1488
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v8

    iget v8, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    iget-object v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v8, v9

    .line 1489
    mul-float/2addr v0, v0

    mul-float/2addr v8, v8

    add-float/2addr v0, v8

    const v8, 0x4b742400    # 1.6E7f

    cmpg-float v0, v0, v8

    if-gez v0, :cond_e2

    const/4 v0, 0x1

    .line 1490
    :goto_ae
    const v8, 0x45bb8000    # 6000.0f

    mul-float/2addr v7, v8

    const v8, 0x44bb8000    # 1500.0f

    add-float/2addr v7, v8

    .line 1491
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_19c

    if-nez v0, :cond_19c

    mul-float v0, v1, v1

    mul-float v1, v6, v6

    add-float/2addr v0, v1

    mul-float v1, v7, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19c

    .line 1492
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1493
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_e4

    const-string v0, "movement"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->violation(Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 1489
    :cond_e2
    const/4 v0, 0x0

    goto :goto_ae

    .line 1494
    :cond_e4
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1500
    :cond_e7
    :goto_e7
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    .line 1501
    mul-float v6, v1, v1

    mul-float v7, v0, v0

    add-float/2addr v6, v7

    .line 1502
    const v7, 0x461c4000    # 10000.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_103

    const/high16 v7, 0x42c80000    # 100.0f

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    div-float v6, v7, v6

    mul-float/2addr v1, v6

    mul-float/2addr v0, v6

    .line 1503
    :cond_103
    const-wide/16 v6, 0xfa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-float v6, v6

    const/high16 v7, 0x41800000    # 16.0f

    div-float/2addr v6, v7

    .line 1504
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-eqz v7, :cond_1ad

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1506
    :goto_121
    iget-object v6, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1507
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1508
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1510
    const v0, 0x49742400    # 1000000.0f

    iget v1, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    sub-float/2addr v0, v1

    .line 1511
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_146

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    add-float/2addr v1, v0

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v1, :cond_146

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    add-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 1512
    :cond_146
    const v0, 0x49742400    # 1000000.0f

    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1513
    const v0, 0x49742400    # 1000000.0f

    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1514
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1bd

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    div-float/2addr v0, v1

    :goto_164
    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 1515
    const/4 v0, 0x0

    iput-boolean v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 1516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 1517
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_17b

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    .line 1518
    :cond_17b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1519
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    const/16 v3, 0x50

    if-le v2, v3, :cond_1c0

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_17f

    .line 1496
    :cond_19c
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1497
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    iget-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    goto/16 :goto_e7

    .line 1505
    :cond_1ad
    iget-object v7, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    mul-float v9, v1, v6

    add-float/2addr v8, v9

    iget v9, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    mul-float/2addr v6, v0

    add-float/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_121

    .line 1514
    :cond_1bd
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_164

    .line 1520
    :cond_1c0
    invoke-static {v0, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_17f

    .line 1522
    :cond_1c4
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1523
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_4f

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4f

    .line 1524
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1525
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1df
    :goto_1df
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1526
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_1df

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_1df

    if-eq v0, v5, :cond_1df

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_1df

    move-object v1, v0

    .line 1527
    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1528
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v3, p0, :cond_1df

    .line 1529
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 1530
    const v4, 0x451c4000    # 2500.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1df

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1df

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpg-double v0, v6, v8

    if-gez v0, :cond_1df

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_1df
.end method

.method static hostHides(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 988
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v0, :cond_a

    instance-of v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static hostMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;)V
    .registers 13

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1246
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1247
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1249
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1250
    const/16 v0, 0xff

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x33

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0xff

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x99

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPointSize:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1252
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v5

    :cond_4b
    :goto_4b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1253
    const/16 v1, 0x12c

    if-lt v7, v1, :cond_7a

    .line 1266
    :cond_5b
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 1267
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 1268
    const/4 v2, 0x0

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, v1, v2

    .line 1269
    const/4 v2, 0x0

    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1270
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 1274
    :goto_79
    return-void

    .line 1254
    :cond_7a
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_4b

    if-eq v0, p0, :cond_4b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq v0, v1, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    if-eqz v1, :cond_4b

    .line 1255
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-eqz v1, :cond_125

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    if-eqz v1, :cond_125

    move v6, v5

    .line 1256
    :goto_93
    if-nez v6, :cond_a9

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->drawOnRadar:Z

    if-eqz v1, :cond_4b

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v1, :cond_a9

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-nez v1, :cond_a9

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-nez v1, :cond_a9

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Mine;

    if-eqz v1, :cond_4b

    .line 1257
    :cond_a9
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const v4, 0x469c4000    # 20000.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_4b

    .line 1258
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->isPoint:Z
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_bc} :catch_14d

    if-eqz v1, :cond_128

    move v4, v5

    :goto_bf
    if-eqz v6, :cond_12a

    move v1, v2

    :goto_c2
    or-int/2addr v1, v4

    .line 1259
    if-nez v6, :cond_d3

    :try_start_c5
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->isPoint:Z

    if-eqz v4, :cond_d3

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLive;->outlevels(Lfr/testudo/spacecorsair/business/Element;)Z
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_ce} :catch_153

    move-result v4

    if-eqz v4, :cond_d3

    or-int/lit8 v1, v1, 0x4

    .line 1260
    :cond_d3
    :goto_d3
    :try_start_d3
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->ordinal()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1261
    if-eqz v6, :cond_12c

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1263
    :goto_11b
    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1264
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 1265
    goto/16 :goto_4b

    :cond_125
    move v6, v3

    .line 1255
    goto/16 :goto_93

    :cond_128
    move v4, v3

    .line 1258
    goto :goto_bf

    :cond_12a
    move v1, v3

    goto :goto_c2

    .line 1262
    :cond_12c
    const/16 v1, 0xff

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarColorR:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarColorG:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarColorB:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_14c} :catch_14d

    goto :goto_11b

    .line 1271
    :catch_14d
    move-exception v0

    .line 1272
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    goto/16 :goto_79

    .line 1259
    :catch_153
    move-exception v4

    goto/16 :goto_d3
.end method

.method private static hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 5

    .prologue
    .line 1762
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_18

    .line 1763
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1764
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "CO-OP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 1766
    :cond_18
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;-><init>()V

    .line 1767
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 1768
    iput p1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 1769
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 1770
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p0, p1, v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 1774
    :goto_2c
    return-void

    .line 1771
    :catch_2d
    move-exception v0

    .line 1772
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sub-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    goto :goto_2c
.end method

.method private static inBay()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2011
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2012
    if-eqz v1, :cond_10

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_11

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 2014
    :cond_10
    :goto_10
    return v0

    .line 2013
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method static isAlly(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 1623
    if-eqz p0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static isProxy(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 1618
    if-eqz p0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static join(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v8, 0x2

    .line 168
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 169
    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 170
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 171
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 173
    :try_start_15
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 174
    new-instance v0, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v0, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v1, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 175
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_31

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 204
    :goto_30
    return-void

    .line 176
    :cond_31
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    const-string v4, "SCLAN2"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 178
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 180
    const-string v0, "Waiting for the host to accept..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 181
    const v0, 0x88b8

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 182
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 184
    if-ne v5, v8, :cond_91

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_7e
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 186
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_94

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_8b} :catch_8c

    goto :goto_30

    .line 201
    :catch_8c
    move-exception v0

    .line 202
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V

    goto :goto_30

    .line 184
    :cond_91
    :try_start_91
    const-string v0, ""

    goto :goto_7e

    .line 187
    :cond_94
    if-eqz v5, :cond_115

    .line 188
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 189
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 191
    if-ne v5, v8, :cond_104

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different game versions. Your friend has"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "you have"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_e8
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 193
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "join refused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 192
    :cond_104
    const/4 v0, 0x3

    if-ne v5, v0, :cond_10e

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e8

    :cond_10e
    const-string v0, "The host declined."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e8

    .line 196
    :cond_115
    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 197
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 199
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 200
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_126} :catch_8c

    goto/16 :goto_30
.end method

.method public static keepRunning()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1009
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->menuAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1f

    move v0, v1

    .line 1010
    :goto_13
    if-eqz v0, :cond_1e

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    const-string v1, "lan"

    const-string v2, "menu open: game keeps running"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_1e
    return v0

    .line 1009
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static kick()V
    .registers 4

    .prologue
    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_33

    .line 314
    :cond_11
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 316
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 317
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 318
    return-void

    .line 313
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method static killed(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 4

    .prologue
    .line 931
    :try_start_0
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_17

    if-eqz p0, :cond_17

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq p0, v0, :cond_17

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_17

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_18

    .line 942
    :cond_17
    :goto_17
    return-void

    .line 932
    :cond_18
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 933
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 934
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 935
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 936
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 937
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 938
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_17

    .line 939
    :catch_5f
    move-exception v0

    goto :goto_17
.end method

.method private static lanPrefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 1385
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v1, "corsair_lan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static leaveBay()V
    .registers 4

    .prologue
    .line 2069
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2070
    if-eqz v0, :cond_8

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v1, :cond_9

    .line 2080
    :cond_8
    :goto_8
    return-void

    .line 2071
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2073
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2074
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leaving the duel bay for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_8

    .line 2077
    :catch_38
    move-exception v0

    goto :goto_8
.end method

.method public static menuOpening()V
    .registers 2

    .prologue
    .line 1005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->menuAt:J

    return-void
.end method

.method static missionDone()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1327
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1328
    if-eqz v1, :cond_14

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    if-eqz v2, :cond_14

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 1330
    :cond_14
    :goto_14
    return v0

    .line 1329
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method static missionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1318
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1319
    if-eqz v0, :cond_d

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    .line 1321
    :goto_c
    return-object v0

    .line 1319
    :cond_d
    const-string v0, ""
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_c

    .line 1320
    :catch_10
    move-exception v0

    .line 1321
    const-string v0, ""

    goto :goto_c
.end method

.method private static missionLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2176
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    .line 2177
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    if-eqz v2, :cond_1e

    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->mission:Ljava/lang/String;

    :goto_11
    if-eqz v2, :cond_40

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->solo:Z

    if-eqz v2, :cond_40

    const-string v0, "Your friend is flying their own missions."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2180
    :goto_1d
    return-object v0

    .line 2177
    :cond_1e
    const-string v0, ""

    goto :goto_11

    .line 2178
    :cond_21
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_24
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3a

    if-eqz v0, :cond_3d

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    :goto_2f
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v2, :cond_40

    const-string v0, "You are flying your own missions. Follow the host to fight together again."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    const-string v0, ""

    goto :goto_2f

    .line 2179
    :cond_40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_53

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "Same mission: you work on it together. When the host completes it, it completes for both."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 2180
    :cond_53
    const-string v0, "Missions: pick the same mission to work on it together, or the guest can fly their own missions and come back later."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method static myAddresses()Ljava/lang/String;
    .registers 5

    .prologue
    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 382
    :cond_9
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 383
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 384
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 385
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 386
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 387
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2b

    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4a

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_4a
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_51} :catch_52

    goto :goto_2b

    .line 393
    :catch_52
    move-exception v0

    .line 396
    :cond_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "?"

    :goto_5b
    return-object v0

    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b
.end method

.method static myCountry()Ljava/lang/String;
    .registers 1

    .prologue
    .line 223
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myNick()Ljava/lang/String;
    .registers 1

    .prologue
    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->nick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    .line 218
    :goto_6
    return-object v0

    .line 213
    :cond_7
    :try_start_7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_21

    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    goto :goto_6

    .line 215
    :catch_21
    move-exception v0

    .line 216
    const-string v0, "?"

    goto :goto_6
.end method

.method private static newProjectile(Ljava/lang/Class;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lfr/testudo/spacecorsair/business/projectiles/Projectile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1665
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1673
    :goto_12
    if-eqz v0, :cond_4a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1674
    :goto_1a
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    return-object v0

    .line 1668
    :cond_1d
    const-class v0, Lfr/testudo/spacecorsair/business/factory/GamePools;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_25
    if-ge v2, v5, :cond_4f

    aget-object v0, v4, v2

    .line 1669
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_46

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p0, :cond_46

    .line 1671
    :goto_40
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 1668
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 1673
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    :cond_4f
    move-object v0, v1

    goto :goto_40
.end method

.method private static noRejoin()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 274
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    return-void
.end method

.method private static packed(I[B)[B
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 624
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    .line 625
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_91

    .line 626
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    monitor-enter v1

    .line 627
    :try_start_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 628
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 629
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 630
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    array-length v0, v0

    array-length v2, p1

    if-ge v0, v2, :cond_32

    array-length v0, p1

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 631
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 632
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 633
    add-int/lit8 v0, v2, 0xa

    new-array v0, v0, [B

    .line 634
    add-int/lit8 v3, v2, 0x5

    .line 635
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput-byte v5, v0, v4

    .line 636
    const/4 v4, 0x1

    ushr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x2

    ushr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x3

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 637
    const/4 v3, 0x5

    int-to-byte v4, p0

    aput-byte v4, v0, v3

    .line 638
    const/4 v3, 0x6

    array-length v4, p1

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x7

    array-length v4, p1

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/16 v3, 0x8

    array-length v4, p1

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/16 v3, 0x9

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 639
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    monitor-exit v1

    .line 648
    :goto_8f
    return-object v0

    .line 642
    :cond_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_16 .. :try_end_91} :catchall_b5

    .line 644
    :cond_91
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    .line 645
    int-to-byte v1, p0

    aput-byte v1, v0, v5

    .line 646
    array-length v1, p1

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    array-length v1, p1

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    array-length v1, p1

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    array-length v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    .line 647
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    .line 642
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method static packedForTest(I[B)[B
    .registers 3

    .prologue
    .line 2149
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static peerLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    :goto_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "Player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static persistedMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 4

    .prologue
    .line 1390
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    if-nez v0, :cond_12

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "done"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    .line 1391
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 1407
    :cond_1a
    :goto_1a
    return-void

    .line 1392
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1393
    if-eqz v0, :cond_5e

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1394
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1395
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1396
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 1397
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restored completed co-op mission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 1404
    :catch_5c
    move-exception v0

    goto :goto_1a

    .line 1399
    :cond_5e
    if-nez v0, :cond_64

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    if-eqz v0, :cond_1a

    .line 1400
    :cond_64
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    .line 1401
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1402
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "done"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7c} :catch_5c

    goto :goto_1a
.end method

.method private static pickHost(Landroid/app/Activity;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2264
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2265
    const-string v1, "192.168.1.10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2267
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Join a game"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2268
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 2269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2270
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$25;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$25;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2273
    const-string v0, "Type address"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$26;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$26;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2284
    :goto_45
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2285
    return-void

    .line 2277
    :cond_49
    const-string v2, "No game found. Type the host\'s address (shown on the host\'s LAN co-op screen):"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2278
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2279
    const-string v2, "Join"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$27;

    invoke-direct {v3, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$27;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2282
    const-string v0, "Close"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_45
.end method

.method static queueSize()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 793
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 794
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 796
    :cond_11
    :goto_11
    return v0

    .line 795
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method static queueSizeOf(Lfr/testudo/spacecorsair/engine/RenderQueue;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2145
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static readField(Ljava/io/DataInputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1868
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1869
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 1885
    :cond_f
    :goto_f
    return-void

    .line 1870
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_f

    .line 1871
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_f

    .line 1872
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_f

    .line 1873
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_f

    .line 1874
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_f

    .line 1875
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_f

    .line 1876
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_f

    .line 1877
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 1878
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1879
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 1880
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1881
    if-nez v0, :cond_86

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1882
    :cond_86
    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_f
.end method

.method static readFieldForTest(Ljava/io/DataInputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2166
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->readField(Ljava/io/DataInputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method private static readPeerId(Ljava/io/DataInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 228
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 229
    return-void
.end method

.method private static readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    .line 1119
    new-array v1, p1, [Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1120
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1c8

    .line 1121
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$Rec;-><init>()V

    .line 1122
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    .line 1123
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v3, :cond_1e

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-ne v3, v8, :cond_b9

    .line 1124
    :cond_1e
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    .line 1125
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->spin:F

    .line 1126
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    .line 1127
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1128
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    .line 1129
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-ne v3, v8, :cond_b0

    .line 1130
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    .line 1131
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_aa

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    .line 1154
    :cond_aa
    :goto_aa
    aput-object v2, v1, v0

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 1133
    :cond_b0
    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    goto :goto_aa

    .line 1135
    :cond_b9
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_103

    .line 1136
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    .line 1137
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    .line 1138
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1139
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    .line 1140
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    goto :goto_aa

    .line 1141
    :cond_103
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13c

    .line 1142
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    .line 1143
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    .line 1144
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    goto/16 :goto_aa

    .line 1145
    :cond_13c
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1ad

    .line 1146
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    .line 1147
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    .line 1148
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    .line 1149
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    .line 1150
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xa:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xr:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xg:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xb:F

    goto/16 :goto_aa

    .line 1152
    :cond_1ad
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad record "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_1c8
    return-object v1
.end method

.method static readRecsForTest([BI)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2158
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v0

    return-object v0
.end method

.method private static readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 433
    mul-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "string too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_10
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 435
    const/4 v2, 0x0

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 436
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 437
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static receive(I[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x45bb8000    # 6000.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1015
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1016
    const/4 v1, 0x6

    if-ne p0, v1, :cond_19

    .line 1017
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLan;->unpack([B)V

    .line 1082
    :cond_18
    :goto_18
    return-void

    .line 1018
    :cond_19
    if-ne p0, v2, :cond_61

    .line 1019
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 1020
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->defOk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1022
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v2

    .line 1023
    :try_start_2c
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x1000

    if-lt v3, v4, :cond_4d

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many textures"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :catchall_4a
    move-exception v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_4a

    throw v0

    .line 1024
    :cond_4d
    :try_start_4d
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_4a

    goto :goto_18

    .line 1026
    :cond_61
    if-ne p0, v3, :cond_135

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_135

    .line 1027
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1028
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1029
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1030
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    .line 1031
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1032
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v3, 0x898

    if-le v2, v3, :cond_b4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_b4
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1034
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_dc

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    .line 1035
    :cond_dc
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_11c

    .line 1036
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1037
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1038
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1039
    if-lez v2, :cond_12e

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v3

    if-gt v2, v3, :cond_12e

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    const/16 v4, 0x7d0

    if-gt v3, v4, :cond_12e

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    mul-int/lit8 v3, v3, 0xe

    if-lt v2, v3, :cond_12e

    new-array v2, v2, [B

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1041
    :cond_11c
    :goto_11c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11f
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_132

    .line 1042
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1043
    iget v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_18

    .line 1039
    :cond_12e
    const/4 v0, 0x0

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    goto :goto_11c

    .line 1041
    :catchall_132
    move-exception v0

    :try_start_133
    monitor-exit v2
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v0

    .line 1044
    :cond_135
    const/4 v1, 0x3

    if-ne p0, v1, :cond_250

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v2, :cond_250

    .line 1045
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$InState;-><init>()V

    .line 1046
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    .line 1047
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    .line 1048
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    .line 1049
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    .line 1051
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    .line 1052
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const v3, 0x4c3ebc20    # 5.0E7f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1d4

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1e9

    :cond_1d4
    const v2, 0x4c3ebc20    # 5.0E7f

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1053
    :cond_1e9
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    .line 1054
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    .line 1055
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_207

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many ship records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_207
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1057
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_21c

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    .line 1058
    :cond_21c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_235

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->solo:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->mission:Ljava/lang/String;

    .line 1059
    :cond_235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    .line 1060
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_23e
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v2
    :try_end_241
    .catchall {:try_start_23e .. :try_end_241} :catchall_24d

    .line 1061
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1062
    iget v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_18

    .line 1060
    :catchall_24d
    move-exception v0

    :try_start_24e
    monitor-exit v2
    :try_end_24f
    .catchall {:try_start_24e .. :try_end_24f} :catchall_24d

    throw v0

    .line 1063
    :cond_250
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2cc

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_2cc

    .line 1064
    array-length v1, p1

    const/16 v2, 0x100

    if-le v1, v2, :cond_265

    new-instance v0, Ljava/io/IOException;

    const-string v1, "kill too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1066
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_277

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    .line 1067
    :cond_277
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_289

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_18

    .line 1068
    :cond_289
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$Kill;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$Kill;-><init>()V

    .line 1069
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->cls:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->level:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->elite:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->x:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->y:F

    .line 1070
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2b7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_2c6

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c6
    monitor-exit v2

    goto/16 :goto_18

    :catchall_2c9
    move-exception v0

    monitor-exit v2
    :try_end_2cb
    .catchall {:try_start_2b7 .. :try_end_2cb} :catchall_2c9

    throw v0

    .line 1071
    :cond_2cc
    const/4 v1, 0x7

    if-ne p0, v1, :cond_2f9

    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1073
    array-length v1, p1

    const/16 v4, 0x200

    if-le v1, v4, :cond_2e0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "chat too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_2e0
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-ltz v1, :cond_18

    .line 1075
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    .line 1076
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->onChat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1077
    :cond_2f9
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_18

    .line 1078
    array-length v0, p1

    const/16 v1, 0x1000

    if-le v0, v1, :cond_30d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shot too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_30d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_310
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x190

    if-ge v0, v2, :cond_31f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31f
    monitor-exit v1
    :try_end_320
    .catchall {:try_start_310 .. :try_end_320} :catchall_328

    .line 1080
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    goto/16 :goto_18

    .line 1079
    :catchall_328
    move-exception v0

    :try_start_329
    monitor-exit v1
    :try_end_32a
    .catchall {:try_start_329 .. :try_end_32a} :catchall_328

    throw v0
.end method

.method private static refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 2

    .prologue
    .line 2108
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 2109
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 2110
    return-void
.end method

.method private static refl()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 770
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    if-eqz v1, :cond_6

    .line 782
    :goto_5
    return v0

    .line 772
    :cond_6
    :try_start_6
    const-class v0, Lfr/testudo/spacecorsair/display/RenderElement;

    .line 773
    const-string v1, "renderType"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fType:Ljava/lang/reflect/Field;

    const-string v1, "position"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fPos:Ljava/lang/reflect/Field;

    const-string v1, "spin"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fSpin:Ljava/lang/reflect/Field;

    .line 774
    const-string v1, "a"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fA:Ljava/lang/reflect/Field;

    const-string v1, "r"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fR:Ljava/lang/reflect/Field;

    const-string v1, "g"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fG:Ljava/lang/reflect/Field;

    const-string v1, "b"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fB:Ljava/lang/reflect/Field;

    .line 775
    const-string v1, "zoomInsensitive"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fZoom:Ljava/lang/reflect/Field;

    const-string v1, "backgroundMode"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fBack:Ljava/lang/reflect/Field;

    const-string v1, "text"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fText:Ljava/lang/reflect/Field;

    .line 776
    const-string v1, "textSize"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fTSize:Ljava/lang/reflect/Field;

    const-string v1, "pointSize"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fPSize:Ljava/lang/reflect/Field;

    const-string v1, "infoBar"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fInfo:Ljava/lang/reflect/Field;

    .line 777
    const-class v0, Lfr/testudo/spacecorsair/engine/RenderQueue;

    const-string v1, "queueSize"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    const-class v0, Lfr/testudo/spacecorsair/engine/RenderQueue;

    const-string v1, "waitingQueueIndex"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acc(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    .line 778
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_87} :catch_8b

    .line 782
    :goto_87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto/16 :goto_5

    .line 779
    :catch_8b
    move-exception v0

    .line 780
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto :goto_87
.end method

.method private static removeProxy()V
    .registers 2

    .prologue
    .line 1607
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1608
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1609
    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 1610
    :cond_e
    return-void
.end method

.method private static replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V
    .registers 25

    .prologue
    .line 1168
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1219
    :cond_8
    :goto_8
    return-void

    .line 1169
    :cond_9
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v16, v0

    .line 1170
    move-object/from16 v0, v16

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aget-object v17, v1, v2

    .line 1171
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 1172
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    rem-int/lit8 v18, v1, 0x3

    .line 1173
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v1, v1, v18

    if-nez v1, :cond_3f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/16 v2, 0x898

    new-array v2, v2, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aput-object v2, v1, v18

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v2, 0x898

    new-array v2, v2, [Lfr/testudo/spacecorsair/engine/Vector2;

    aput-object v2, v1, v18

    .line 1174
    :cond_3f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v19, v1, v18

    .line 1175
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v20, v1, v18

    .line 1176
    const/4 v13, 0x0

    .line 1177
    const/4 v12, 0x0

    .line 1178
    const/4 v1, 0x0

    move v15, v1

    :goto_4b
    move/from16 v0, p1

    if-ge v15, v0, :cond_60

    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit16 v1, v1, -0x12c

    if-ge v14, v1, :cond_60

    const/16 v1, 0x898

    if-ge v13, v1, :cond_60

    .line 1179
    aget-object v11, p0, v15

    .line 1180
    aget-object v1, v17, v14

    .line 1181
    if-nez v1, :cond_6a

    .line 1215
    :cond_60
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_8

    .line 1216
    :catch_68
    move-exception v1

    goto :goto_8

    .line 1182
    :cond_6a
    aget-object v3, v20, v13

    .line 1183
    if-nez v3, :cond_75

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    aput-object v3, v20, v13

    .line 1184
    :cond_75
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    add-float v2, v2, p2

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    add-float v4, v4, p3

    invoke-virtual {v3, v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1185
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a0

    const/4 v10, 0x1

    .line 1186
    :goto_87
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v2, :cond_90

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_120

    .line 1187
    :cond_90
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->texFor(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 1188
    if-nez v4, :cond_a2

    move v3, v13

    move v4, v14

    .line 1178
    :goto_9a
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    move v13, v3

    move v14, v4

    goto :goto_4b

    .line 1185
    :cond_a0
    const/4 v10, 0x0

    goto :goto_87

    .line 1189
    :cond_a2
    aget-object v2, v19, v13

    .line 1190
    if-nez v2, :cond_ad

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v2, v19, v13

    .line 1191
    :cond_ad
    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 1192
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 1193
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 1194
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_116

    const/4 v4, 0x1

    :goto_ce
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 1195
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_118

    const/4 v4, 0x1

    :goto_d7
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 1196
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_11a

    const/4 v4, 0x1

    :goto_e0
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 1197
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11c

    .line 1198
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-nez v4, :cond_f1

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    .line 1199
    :cond_f1
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x0

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    aput v6, v4, v5

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x1

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    aput v6, v4, v5

    .line 1201
    :goto_ff
    const/4 v4, 0x0

    iget v5, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->spin:F

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iget v7, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iget v8, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iget v9, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFFZZ)V

    move v1, v12

    .line 1212
    :goto_10f
    add-int/lit8 v4, v14, 0x1

    .line 1213
    add-int/lit8 v2, v13, 0x1

    move v12, v1

    move v3, v2

    goto :goto_9a

    .line 1194
    :cond_116
    const/4 v4, 0x0

    goto :goto_ce

    .line 1195
    :cond_118
    const/4 v4, 0x0

    goto :goto_d7

    .line 1196
    :cond_11a
    const/4 v4, 0x0

    goto :goto_e0

    .line 1200
    :cond_11c
    const/4 v4, 0x0

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    goto :goto_ff

    .line 1202
    :cond_120
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_147

    .line 1203
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    array-length v4, v4

    if-lt v2, v4, :cond_130

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1204
    :cond_130
    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iget v7, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iget v8, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    iget v9, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    iget v10, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    aget-object v10, v2, v10

    move-object v2, v1

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/display/RenderElement;->setAsText(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;ZFFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    move v1, v12

    goto :goto_10f

    .line 1205
    :cond_147
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_15d

    .line 1206
    const/4 v4, 0x0

    iget v5, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iget v7, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    iget v8, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iget v9, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lfr/testudo/spacecorsair/display/RenderElement;->setAsPoint(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    move v1, v12

    goto :goto_10f

    .line 1207
    :cond_15d
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_176

    .line 1208
    add-int/lit8 v2, v12, 0x1

    move/from16 v0, v18

    invoke-static {v0, v12, v11}, Lfr/testudo/spacecorsair/mod/ModLan;->barFor(IILfr/testudo/spacecorsair/mod/ModLan$Rec;)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v4

    .line 1209
    if-nez v4, :cond_171

    move v12, v2

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1210
    :cond_171
    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V
    :try_end_174
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_174} :catch_68

    move v1, v2

    goto :goto_10f

    :cond_176
    move v3, v13

    move v4, v14

    goto/16 :goto_9a
.end method

.method static replayForTest([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V
    .registers 4

    .prologue
    .line 2162
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    return-void
.end method

.method private static resetTables()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 687
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_43

    .line 688
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_46

    .line 689
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1e
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_49

    .line 690
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 691
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 692
    return-void

    .line 687
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    .line 688
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0

    .line 689
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method private static rollLoot(Lfr/testudo/spacecorsair/mod/ModLan$Kill;)V
    .registers 7

    .prologue
    .line 967
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->cls:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 968
    if-nez v0, :cond_9

    .line 981
    :cond_8
    :goto_8
    return-void

    .line 969
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x11

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 970
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 971
    if-eqz v0, :cond_8

    .line 972
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->elite:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 973
    :cond_38
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 974
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 975
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->GenerateLoots(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/Element;)V

    .line 976
    :cond_52
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drops(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 977
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_8

    .line 978
    :catch_5c
    move-exception v0

    .line 979
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loot roll failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    .line 2101
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_92

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    :goto_c
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v2, :cond_96

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2102
    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9a

    const-string v2, "ROUND WON"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2103
    if-eqz p1, :cond_a2

    move v5, v3

    :goto_58
    if-eqz p1, :cond_a4

    :goto_5a
    if-eqz p1, :cond_a9

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2102
    :goto_5e
    invoke-static {p0, v6, v5, v4, v2}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 2104
    const-string v3, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duel round "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_ab

    const-string v2, "won"

    :goto_72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    return-void

    .line 2101
    :cond_92
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    goto/16 :goto_c

    :cond_96
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    goto/16 :goto_12

    .line 2102
    :cond_9a
    const-string v2, "ROUND LOST"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1f

    :cond_a2
    move v5, v4

    .line 2103
    goto :goto_58

    :cond_a4
    const v2, 0x3ecccccd    # 0.4f

    move v4, v2

    goto :goto_5a

    :cond_a9
    move v2, v3

    goto :goto_5e

    .line 2104
    :cond_ab
    const-string v2, "lost"

    goto :goto_72
.end method

.method static scan(I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    :try_start_6
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_c} :catch_120
    .catchall {:try_start_6 .. :try_end_c} :catchall_110

    .line 333
    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 334
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 335
    new-instance v1, Ljava/net/InetSocketAddress;

    const v3, 0x9089

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 336
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p0

    add-long/2addr v4, v6

    .line 338
    const/16 v1, 0x100

    new-array v3, v1, [B

    .line 339
    :cond_2e
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_10a

    .line 340
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v1, v3, v6}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_3c} :catch_e6
    .catchall {:try_start_d .. :try_end_3c} :catchall_11c

    .line 341
    :try_start_3c
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3c .. :try_end_3f} :catch_119
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_e6
    .catchall {:try_start_3c .. :try_end_3f} :catchall_11c

    .line 342
    :try_start_3f
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 343
    const-string v7, "SCLAN2|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 344
    const-string v7, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 345
    array-length v7, v6

    const/4 v8, 0x6

    if-lt v7, v8, :cond_2e

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x2

    aget-object v7, v6, v7

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v6, v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "  \u00b7  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x4

    aget-object v7, v6, v7

    const/16 v8, 0x28

    .line 347
    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v1, 0x5

    aget-object v1, v6, v1

    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    const-string v1, "  \u00b7  PvP"

    :goto_ba
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 348
    const/4 v1, 0x1

    aget-object v1, v6, v1

    const/16 v6, 0x28

    invoke-static {v1, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    const-string v1, ""

    :goto_d3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_e4} :catch_e6
    .catchall {:try_start_3f .. :try_end_e4} :catchall_11c

    goto/16 :goto_2e

    .line 351
    :catch_e6
    move-exception v1

    .line 354
    :goto_e7
    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 356
    :cond_ec
    :goto_ec
    return-object v2

    .line 347
    :cond_ed
    :try_start_ed
    const-string v1, ""

    goto :goto_ba

    .line 348
    :cond_f0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  \u00b7  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "other version"

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_108} :catch_e6
    .catchall {:try_start_ed .. :try_end_108} :catchall_11c

    move-result-object v1

    goto :goto_d3

    .line 354
    :cond_10a
    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_ec

    :catchall_110
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_113
    if-eqz v3, :cond_118

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 355
    :cond_118
    throw v2

    .line 341
    :catch_119
    move-exception v1

    goto/16 :goto_2e

    .line 354
    :catchall_11c
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_113

    .line 351
    :catch_120
    move-exception v0

    move-object v0, v1

    goto :goto_e7
.end method

.method static sendChat(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 239
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v1, :cond_13

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_14

    .line 247
    :cond_13
    :goto_13
    return v0

    .line 240
    :cond_14
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    .line 242
    :try_start_16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x78

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_2f

    .line 245
    const/4 v0, 0x1

    goto :goto_13

    .line 246
    :catch_2f
    move-exception v1

    goto :goto_13
.end method

.method private static sendLatest(ILjava/io/ByteArrayOutputStream;)V
    .registers 4

    .prologue
    .line 612
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    .line 613
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0
.end method

.method private static sendReliable(ILjava/io/ByteArrayOutputStream;)V
    .registers 5

    .prologue
    .line 607
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->frameBytes(ILjava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 608
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0
.end method

.method static setPvpRoom(Z)V
    .registers 4

    .prologue
    .line 1998
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    .line 1999
    if-nez p0, :cond_7

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2000
    :cond_7
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pvp room "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    return-void
.end method

.method static setSolo(Z)V
    .registers 4

    .prologue
    .line 1351
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-ne v0, p0, :cond_5

    .line 1355
    :goto_4
    return-void

    .line 1352
    :cond_5
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 1353
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    .line 1354
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guest solo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static shipEnd()V
    .registers 1

    .prologue
    .line 1796
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipNow:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    :cond_10
    return-void
.end method

.method static shipStart()V
    .registers 1

    .prologue
    .line 1794
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipNow:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    :cond_10
    return-void
.end method

.method private static shotClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1551
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x78

    if-gt v0, v2, :cond_13

    const-string v0, "fr.testudo.spacecorsair."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v1

    .line 1561
    :cond_14
    :goto_14
    return-object v0

    .line 1552
    :cond_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_14

    .line 1555
    :cond_26
    const/4 v0, 0x0

    :try_start_27
    const-class v2, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1556
    const-class v2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-class v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_48} :catch_5c

    move-result v2

    if-eqz v2, :cond_4c

    :cond_4b
    move-object v0, v1

    .line 1560
    :cond_4c
    :goto_4c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_14

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 1557
    :catch_5c
    move-exception v0

    move-object v0, v1

    .line 1558
    goto :goto_4c
.end method

.method static shotClassForTest(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2151
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1827
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 1828
    if-eqz v0, :cond_c

    .line 1847
    :goto_b
    return-object v0

    .line 1829
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 1830
    :goto_12
    if-eqz v0, :cond_24

    const-class v3, Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_12

    .line 1831
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1833
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1834
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$11;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$11;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1835
    array-length v5, v4

    move v0, v1

    :goto_47
    if-ge v0, v5, :cond_2d

    aget-object v6, v4, v0

    .line 1836
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 1837
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_67

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 1835
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1838
    :cond_6a
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->SKIP:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 1839
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 1840
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_84

    const-class v8, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v7, v8, :cond_67

    .line 1841
    :cond_84
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1842
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 1845
    :cond_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 1846
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b
.end method

.method static shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FF)Z
    .registers 11

    .prologue
    const-wide/32 v6, 0xea60

    const v4, 0x49742400    # 1000000.0f

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1568
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v1, :cond_11

    .line 1575
    :cond_10
    :goto_10
    return v0

    .line 1569
    :cond_11
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->life:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->maxLife:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1570
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, p2

    .line 1571
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const v2, 0x491c4000    # 640000.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_10

    .line 1572
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_75

    iput v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 1573
    :cond_75
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_83

    iput v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1574
    :cond_83
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_91

    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1575
    :cond_91
    const/4 v0, 0x1

    goto/16 :goto_10
.end method

.method static showMenu(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 2185
    :try_start_2
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 2186
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v4, :cond_16

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    if-eqz v1, :cond_16

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-nez v1, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2246
    :goto_15
    return-void

    .line 2187
    :cond_16
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$12;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$12;-><init>(Landroid/app/Activity;)V

    .line 2188
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->hasProfile()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_15

    .line 2243
    :catch_25
    move-exception v0

    goto :goto_15

    .line 2189
    :cond_27
    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2190
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_165

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v3, v4, :cond_165

    .line 2191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You are hosting."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "plays in your sector."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PvP is"

    .line 2192
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_141

    const-string v2, "ON"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PvP duel: both ships go to the old multiplayer bay and fight rounds. A ship stops at 1 hull and loses the round; nobody dies or pays a death fee. Undock to start."

    .line 2193
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2194
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v2, :cond_149

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Duel score"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_cb
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2195
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2196
    const/4 v2, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2197
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v5, :cond_14c

    const-string v5, "PvP: ON (tap to turn off)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_f0
    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 2198
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v6, :cond_153

    :goto_f7
    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "Kick player"

    .line 2199
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "Disconnect"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "Close"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$13;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$13;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$14;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$14;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$15;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$15;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$16;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$16;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2196
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 2192
    :cond_141
    const-string v2, "OFF"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_82

    .line 2194
    :cond_149
    const-string v2, ""

    goto :goto_cb

    .line 2197
    :cond_14c
    const-string v5, "PvP: OFF (tap to turn on)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f0

    .line 2198
    :cond_153
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v0, :cond_15e

    const-string v0, "End duel"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f7

    :cond_15e
    const-string v0, "PvP duel"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f7

    .line 2207
    :cond_165
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_22b

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You joined the game of"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "You follow the host between sectors."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2209
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_221

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Duel score"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1cb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2210
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2211
    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2212
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v0, :cond_224

    const-string v0, "Follow the host"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f0
    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "Disconnect"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "Close"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$17;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$17;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$18;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$18;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2211
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 2209
    :cond_221
    const-string v0, ""

    goto :goto_1cb

    .line 2212
    :cond_224
    const-string v0, "Fly my own missions"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f0

    .line 2218
    :cond_22b
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v4, :cond_2a3

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Your address:"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myAddresses()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2220
    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2221
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_29c

    const-string v0, "PvP: ON (tap to turn off)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26b
    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "Stop hosting"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "Close"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$19;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$19;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$20;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$20;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2220
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 2221
    :cond_29c
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26b

    .line 2228
    :cond_2a3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_36b

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 2229
    :goto_2ad
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->profileRow(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Local game (same Wi-Fi)"

    .line 2230
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Play with someone on the same Wi-Fi or phone hotspot. No internet needed. Hosts on your network appear here automatically."

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "Host local game"

    .line 2231
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "Find local games"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "Join by address"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Public games (internet)"

    .line 2232
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Play with anyone over the internet. Public games show up here for everyone; tap Join to enter. Private games are hidden and need the 4-character code. Uses mobile data or Wi-Fi."

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "Not available yet in this version"

    .line 2233
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "Close"

    .line 2234
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$21;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$21;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$22;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$22;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$23;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$23;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

    aput-object v6, v5, v0

    const/4 v0, 0x6

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2229
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 2228
    :cond_36b
    const-string v3, ""
    :try_end_36d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36d} :catch_25

    goto/16 :goto_2ad
.end method

.method static skipRange(II)V
    .registers 5

    .prologue
    .line 992
    if-le p1, p0, :cond_1f

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    add-int/lit8 v0, v0, 0x2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    array-length v1, v1

    if-gt v0, v1, :cond_1f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    aput p0, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    aput p1, v0, v1

    .line 993
    :cond_1f
    return-void
.end method

.method private static skipped(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 996
    move v0, v1

    :goto_2
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    if-ge v0, v2, :cond_15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    aget v2, v2, v0

    if-lt p0, v2, :cond_16

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge p0, v2, :cond_16

    const/4 v1, 0x1

    .line 997
    :cond_15
    return v1

    .line 996
    :cond_16
    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private static spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1580
    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1581
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v0, v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 1582
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 1583
    const/4 v2, 0x1

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    .line 1584
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 1585
    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 1586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 1587
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1588
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1589
    const/4 v0, 0x0

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->drawLifeBar:Z

    .line 1590
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1591
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1592
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1593
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 1594
    const-string v0, "CO-OP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 1595
    const/4 v0, -0x1

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 1596
    const/4 v0, 0x0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 1597
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1598
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 1599
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1600
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy spawned at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a3} :catch_a4

    .line 1604
    :goto_a3
    return-void

    .line 1601
    :catch_a4
    move-exception v0

    .line 1602
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_a3
.end method

.method static stop()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 574
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 575
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 576
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 577
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 578
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 579
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 580
    if-eqz v0, :cond_26

    .line 581
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$9;

    invoke-direct {v3, v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan$9;-><init>(ZLjava/net/Socket;)V

    const-string v0, "lan-bye"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 588
    :cond_26
    :try_start_26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_2f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2f} :catch_6f

    .line 589
    :cond_2f
    :goto_2f
    :try_start_2f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_38

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_38} :catch_6d

    .line 590
    :cond_38
    :goto_38
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 591
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    .line 592
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_6a

    .line 593
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    .line 594
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 595
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 596
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 597
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 598
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 599
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 600
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 601
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 602
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 603
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->clearChat()V

    .line 604
    return-void

    .line 592
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0

    .line 589
    :catch_6d
    move-exception v0

    goto :goto_38

    .line 588
    :catch_6f
    move-exception v0

    goto :goto_2f
.end method

.method private static testSwitch(J)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1364
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 1375
    :cond_b
    :goto_b
    return-void

    .line 1365
    :cond_c
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    .line 1366
    const-string v0, "corsair_lan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1368
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    .line 1369
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    goto :goto_b

    .line 1371
    :cond_46
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_b

    .line 1372
    :cond_52
    const-string v1, "duel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1373
    :cond_60
    const-string v1, "duel-off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1374
    :cond_6d
    const-string v1, "join:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$10;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan$10;-><init>(Ljava/lang/String;)V

    const-string v0, "lan-join"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method private static texFor(I)Lfr/testudo/spacecorsair/display/Texture;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 738
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v3

    .line 739
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 740
    if-eqz v0, :cond_14

    monitor-exit v3

    .line 761
    :goto_13
    return-object v0

    .line 741
    :cond_14
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 742
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2c

    :cond_29
    monitor-exit v3

    move-object v0, v2

    goto :goto_13

    .line 743
    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 744
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4b

    move-result-object v1

    .line 746
    const/16 v5, 0x4c

    if-ne v4, v5, :cond_4e

    :try_start_3a
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_aa
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4b

    move-result-object v0

    .line 760
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_49

    :try_start_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_49
    monitor-exit v3

    goto :goto_13

    .line 762
    :catchall_4b
    move-exception v0

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v0

    .line 747
    :cond_4e
    const/16 v5, 0x4d

    if-ne v4, v5, :cond_57

    :try_start_52
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    goto :goto_3e

    .line 748
    :cond_57
    const/16 v5, 0x52

    if-ne v4, v5, :cond_3e

    .line 749
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texByRes:Ljava/lang/reflect/Method;

    if-nez v0, :cond_91

    .line 750
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "textureLibrary"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 751
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 752
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texLib:Ljava/lang/Object;

    .line 753
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texLib:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getTextureByResource"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texByRes:Ljava/lang/reflect/Method;

    .line 755
    :cond_91
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texByRes:Ljava/lang/reflect/Method;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->texLib:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_a9} :catch_aa
    .catchall {:try_start_52 .. :try_end_a9} :catchall_4b

    goto :goto_3e

    .line 757
    :catch_aa
    move-exception v0

    move-object v0, v2

    .line 758
    goto :goto_3e
.end method

.method private static texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 696
    if-nez p0, :cond_4

    .line 707
    :cond_3
    :goto_3
    return-object v1

    .line 697
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 698
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    move-object v0, v1

    :cond_15
    move-object v1, v0

    goto :goto_3

    .line 699
    :cond_17
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    :goto_33
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 701
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->nameOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 703
    :cond_5a
    iget v0, p0, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    if-eqz v0, :cond_74

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 704
    :cond_74
    const-string v0, ""

    goto :goto_33
.end method

.method private static tryRejoin(Ljava/lang/String;J)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 546
    const/4 v3, 0x0

    .line 548
    :try_start_3
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_88

    .line 549
    :try_start_8
    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v3, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x9c4

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 550
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 551
    const-string v4, "SCLAN2"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 552
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 554
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 555
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 556
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 557
    if-nez v4, :cond_5b

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_5f

    :cond_5b
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 568
    :goto_5e
    return v0

    .line 558
    :cond_5f
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 559
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 560
    const/4 v3, 0x2

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 561
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 562
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 563
    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V

    .line 564
    const-string v3, "lan"

    const-string v4, "reconnected"

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_7c} :catch_7d

    goto :goto_5e

    .line 566
    :catch_7d
    move-exception v0

    move-object v0, v2

    .line 567
    :goto_7f
    if-eqz v0, :cond_84

    :try_start_81
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_86

    :cond_84
    :goto_84
    move v0, v1

    .line 568
    goto :goto_5e

    .line 567
    :catch_86
    move-exception v0

    goto :goto_84

    .line 566
    :catch_88
    move-exception v0

    move-object v0, v3

    goto :goto_7f
.end method

.method private static unpack([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 653
    array-length v0, p0

    if-ge v0, v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "short packed message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_e
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 655
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 656
    if-eq v0, v3, :cond_32

    if-ne v0, v4, :cond_38

    :cond_32
    if-ltz v1, :cond_38

    const/high16 v2, 0x40000

    if-le v1, v2, :cond_40

    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_40
    new-array v2, v1, [B

    .line 658
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 660
    const/4 v4, 0x5

    :try_start_48
    array-length v5, p0

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 661
    invoke-virtual {v3, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .line 662
    if-ne v4, v1, :cond_5a

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_70

    :cond_5a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_62
    .catch Ljava/util/zip/DataFormatException; {:try_start_48 .. :try_end_62} :catch_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_6b

    .line 663
    :catch_62
    move-exception v0

    .line 664
    :try_start_63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_6b

    .line 666
    :catchall_6b
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 667
    throw v0

    .line 666
    :cond_70
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 668
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V

    .line 669
    return-void
.end method

.method private static viewHalfH()F
    .registers 1

    .prologue
    .line 1890
    const-string v0, "yDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static viewHalfW()F
    .registers 1

    .prologue
    .line 1888
    const-string v0, "xDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static violation(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 322
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "violation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v3, :cond_21

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->kick()V

    .line 325
    :goto_20
    return-void

    .line 324
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    const-string v0, "Co-op ended: the other game sent invalid data."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    goto :goto_20
.end method

.method private static writeField(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1851
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1852
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1865
    :cond_f
    :goto_f
    return-void

    .line 1853
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_f

    .line 1854
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_f

    .line 1855
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_f

    .line 1856
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_f

    .line 1857
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_f

    .line 1858
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_f

    .line 1859
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_f

    .line 1860
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 1861
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1862
    if-eqz v0, :cond_81

    const/4 v1, 0x1

    :goto_71
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1863
    if-eqz v0, :cond_f

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_f

    .line 1862
    :cond_81
    const/4 v1, 0x0

    goto :goto_71
.end method

.method static writeFieldForTest(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->writeField(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method
