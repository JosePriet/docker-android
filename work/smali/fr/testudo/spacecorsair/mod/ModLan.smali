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

.field static final MAX_SHOTS_S:I = 0x12c

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

.field private static final MSG_LFRAME:I = 0xa

.field private static final MSG_LSTATE:I = 0xb

.field private static final MSG_PING:I = 0x9

.field private static final MSG_SHOT:I = 0x4

.field private static final MSG_STATE:I = 0x3

.field private static final MSG_STYLE:I = 0xc

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

.field static final SHOT_REACH:F = 1500.0f

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

.field private static volatile askId:I

.field private static volatile autoAccept:Z

.field private static final barCol:[I

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

.field private static idleAt:J

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

.field static volatile internet:Z

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

.field private static leanDmg:F

.field private static leanDone:Z

.field private static leanGw:I

.field private static leanHw:I

.field private static leanLevel:Ljava/lang/String;

.field private static leanMarks:[B

.field private static leanMarksN:I

.field private static leanMission:Ljava/lang/String;

.field private static leanPvp:Z

.field private static leanRound:I

.field private static leanXp:J

.field private static volatile linkGen:J

.field private static logIn:J

.field private static logOut:J

.field private static logRaw:J

.field static volatile lootMine:I

.field private static lost:Z

.field private static lostRound:Z

.field private static marksAt:J

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

.field private static volatile netJoinId:Ljava/lang/String;

.field private static volatile netPeerId:Ljava/lang/String;

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

.field private static volatile rejoinId:Ljava/lang/String;

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

.field private static slowAt:J

.field private static slowLast:[B

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

.field private static volatile writeLock:Ljava/util/concurrent/locks/ReentrantLock;

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
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 92
    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 99
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    .line 235
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    .line 335
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 336
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 752
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, v6}, Ljava/util/zip/Deflater;-><init>(I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    .line 753
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 815
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    .line 816
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    .line 817
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    .line 818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    .line 1035
    new-array v0, v2, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1039
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    .line 1087
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    .line 1094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    .line 1098
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    .line 1099
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    .line 1157
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    .line 1374
    new-array v0, v5, [[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1376
    new-array v0, v5, [[Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1377
    invoke-static {}, Lfr/testudo/spacecorsair/textengine/TextSize;->values()[Lfr/testudo/spacecorsair/textengine/TextSize;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1436
    const/16 v0, 0x60

    filled-new-array {v5, v0}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 1490
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->values()[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 1491
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1626
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    .line 1633
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 1634
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 1635
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 1760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    .line 1874
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    .line 2040
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    .line 2041
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v2, [Ljava/lang/String;

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

    .line 2192
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2260
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
    .line 923
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 924
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 925
    return-object v0
.end method

.method private static acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 377
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

    .line 378
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$5;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$5;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Decline"

    .line 379
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$4;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$4;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_51} :catch_52

    .line 384
    :goto_51
    return-void

    .line 381
    :catch_52
    move-exception v0

    goto :goto_51
.end method

.method static acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    :try_start_2
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 190
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v4, v0, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v4, :cond_12

    :cond_10
    move v0, v1

    .line 197
    :goto_11
    return v0

    .line 191
    :cond_12
    if-nez p1, :cond_16

    const-string p1, ""

    :cond_16
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    .line 192
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;J)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_26

    :cond_24
    move v0, v1

    goto :goto_11

    .line 193
    :cond_26
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 194
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 196
    :catch_2e
    move-exception v0

    move v0, v1

    .line 197
    goto :goto_11
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

.method static synthetic access$1000(I[B)V
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

.method static synthetic access$1100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300()[B
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    return-object v0
.end method

.method static synthetic access$1302([B)[B
    .registers 1

    .prologue
    .line 87
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    return-object p0
.end method

.method static synthetic access$1400(Ljava/lang/String;J)Z
    .registers 4

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->tryRejoin(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Z
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 87
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->report(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1700()V
    .registers 0

    .prologue
    .line 87
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 87
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->findHosts(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/Activity;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V

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

.method static synthetic access$2000(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 87
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->publicList(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 87
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->typeCode(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2200()I
    .registers 1

    .prologue
    .line 87
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    return v0
.end method

.method static synthetic access$2300(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->joinCode(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->connectTo(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
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

.method static synthetic access$502(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .registers 1

    .prologue
    .line 87
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$600(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V

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

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 87
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .prologue
    .line 87
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    return p0
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
    .line 2019
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 2037
    :cond_8
    :goto_8
    return-void

    .line 2021
    :cond_9
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2022
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2023
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

    .line 2034
    :catch_2f
    move-exception v0

    goto :goto_8

    .line 2024
    :cond_31
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_11

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v1, :cond_11

    .line 2025
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 2026
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v1, v2, :cond_11

    .line 2027
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2028
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2029
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2030
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

    .line 2031
    :cond_68
    const/4 v0, 0x4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 2032
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

    .line 2242
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v3, v1, :cond_11

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_11

    if-nez p0, :cond_12

    .line 2250
    :cond_11
    :goto_11
    return v2

    .line 2243
    :cond_12
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2244
    if-eqz v4, :cond_11

    .line 2245
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2246
    if-eqz v3, :cond_11

    .line 2247
    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    add-float/2addr v5, v6

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    add-float/2addr v6, v3

    .line 2248
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 2249
    if-eqz v7, :cond_55

    iget v3, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v8

    :goto_29
    if-eqz v7, :cond_2e

    iget v0, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v0, v8

    .line 2250
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

    .line 2249
    goto :goto_29

    :cond_57
    move v0, v2

    .line 2250
    goto :goto_53
.end method

.method static arenaLevel(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2398
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

    .line 2410
    :goto_16
    return-object v0

    .line 2400
    :cond_17
    :try_start_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 2402
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2403
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 2404
    const v3, 0x7f06002d

    iput v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 2405
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 2406
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

    .line 2408
    :catch_57
    move-exception v0

    .line 2409
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

    .line 2410
    goto :goto_16
.end method

.method private static askAccept(Ljava/lang/String;J)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 350
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    .line 351
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 352
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 354
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->activity()Landroid/app/Activity;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_18
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 357
    :cond_1a
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2a

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$3;

    invoke-direct {v4, v2, p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan$3;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2a} :catch_5c

    .line 361
    :cond_2a
    :goto_2a
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    .line 364
    :goto_33
    :try_start_33
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-nez v4, :cond_4c

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_4c

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_4a} :catch_4b

    goto :goto_33

    .line 365
    :catch_4b
    move-exception v2

    .line 368
    :cond_4c
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 369
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-ne v2, v0, :cond_5a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_5a

    :goto_59
    return v0

    :cond_5a
    move v0, v1

    goto :goto_59

    .line 358
    :catch_5c
    move-exception v2

    goto :goto_2a
.end method

.method static autoAcceptForTest()V
    .registers 1

    .prologue
    .line 2421
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static b255(F)I
    .registers 3

    .prologue
    .line 938
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    .line 939
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
    .line 1777
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
    .line 1440
    const/16 v0, 0x60

    if-lt p1, v0, :cond_6

    const/4 v0, 0x0

    .line 1448
    :cond_5
    :goto_5
    return-object v0

    .line 1441
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    .line 1442
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

    .line 1443
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

    .line 1445
    :cond_50
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 1446
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xa:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xr:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xg:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xb:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 1447
    iget v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->pourcentageValue:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    goto :goto_5
.end method

.method public static beforeSwap(Lfr/testudo/spacecorsair/engine/RenderQueue;)V
    .registers 19

    .prologue
    .line 2124
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_5

    .line 2190
    :cond_4
    :goto_4
    return-void

    .line 2126
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2127
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastSendMs:J

    sub-long v2, v6, v2

    const/16 v4, 0x3e8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->hz()I

    move-result v5

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x3

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 2128
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastSendMs:J

    .line 2129
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2130
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 2131
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v2, :cond_4

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v2, :cond_4

    .line 2132
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2133
    if-eqz v4, :cond_4

    .line 2134
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_140

    .line 2135
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_4

    .line 2136
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v13, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2137
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2138
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2139
    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_ad

    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_67
    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2140
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2141
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2142
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 2143
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    const-wide/16 v16, 0x0

    cmp-long v2, v10, v16

    if-ltz v2, :cond_9d

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_9d

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sget-wide v16, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    sub-long v16, v8, v16

    add-long v10, v10, v16

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    .line 2144
    :cond_9d
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2145
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v2, :cond_b0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModLan;->leanHost(Lfr/testudo/spacecorsair/engine/RenderQueue;ILfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;J)V

    goto/16 :goto_4

    .line 2187
    :catch_aa
    move-exception v2

    goto/16 :goto_4

    .line 2139
    :cond_ad
    const-string v2, ""

    goto :goto_67

    .line 2146
    :cond_b0
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v14, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2147
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2148
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2149
    const/4 v5, 0x0

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    if-gez v4, :cond_127

    const/4 v7, 0x0

    :goto_c8
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    if-gez v4, :cond_12a

    const/4 v8, 0x0

    :goto_cd
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x898

    move-object/from16 v4, p0

    move v6, v3

    invoke-static/range {v4 .. v12}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v3

    .line 2150
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2151
    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2152
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2153
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2154
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2155
    if-nez v4, :cond_12d

    const/4 v2, 0x0

    move v3, v2

    .line 2156
    :goto_106
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-nez v3, :cond_13c

    const/4 v2, 0x0

    :goto_10c
    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lez v3, :cond_118

    const/4 v2, 0x2

    array-length v3, v4

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v14, v4, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2157
    :cond_118
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 2158
    const/4 v2, 0x2

    invoke-static {v2, v13}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2159
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2149
    :cond_127
    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    goto :goto_c8

    :cond_12a
    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    goto :goto_cd

    .line 2155
    :cond_12d
    const/4 v2, 0x0

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v3, v2

    goto :goto_106

    .line 2156
    :cond_13c
    array-length v2, v4

    add-int/lit8 v2, v2, -0x2

    goto :goto_10c

    .line 2160
    :cond_140
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2161
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v11, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2162
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2163
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2164
    iget-boolean v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_22e

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_22e

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_22e

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v2, :cond_22e

    const/4 v2, 0x1

    move v3, v2

    .line 2165
    :goto_170
    sget-boolean v13, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    .line 2166
    if-eqz v13, :cond_182

    if-nez v3, :cond_182

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v8, v6, v8

    const-wide/16 v14, 0x1f4

    cmp-long v2, v8, v14

    if-ltz v2, :cond_4

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2167
    :cond_182
    if-eqz v13, :cond_187

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2168
    :cond_187
    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2169
    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_232

    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_192
    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2170
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2171
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2172
    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2173
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfW()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfH()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2174
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v14, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2175
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2176
    const/4 v2, 0x0

    .line 2177
    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-ltz v5, :cond_200

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sget v6, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-le v5, v6, :cond_200

    if-nez v3, :cond_1e9

    if-nez v13, :cond_200

    :cond_1e9
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sget v15, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v10, 0xc8

    move-object/from16 v2, p0

    move v4, v15

    invoke-static/range {v2 .. v10}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v2

    .line 2178
    :cond_200
    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2179
    invoke-virtual {v14, v12}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2180
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2181
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 2183
    if-eqz v13, :cond_21f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2184
    :cond_21f
    if-eqz v13, :cond_236

    const/16 v2, 0xb

    :goto_223
    invoke-static {v2, v11}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2185
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2164
    :cond_22e
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_170

    .line 2169
    :cond_232
    const-string v2, ""
    :try_end_234
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_234} :catch_aa

    goto/16 :goto_192

    .line 2184
    :cond_236
    const/4 v2, 0x3

    goto :goto_223
.end method

.method private static begin(Ljava/net/Socket;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x10000

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 520
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 521
    invoke-virtual {p0, v7}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 522
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 523
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 524
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 525
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 526
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 527
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    .line 528
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    .line 529
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-nez v2, :cond_2f

    const-string v2, "corsair_lean"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    :cond_2f
    move v0, v1

    :cond_30
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    .line 530
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 531
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_37
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_c2

    .line 532
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->resetTables()V

    .line 533
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 534
    const-string v0, "Co-op connected"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 535
    const-string v0, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected role="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " peer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->announce:Z

    .line 537
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 538
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 539
    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_9a

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    move-object v6, p0

    .line 540
    :cond_9a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$6;

    invoke-direct {v2, p1, p2, v6, v0}, Lfr/testudo/spacecorsair/mod/ModLan$6;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/io/DataInputStream;)V

    const-string v0, "lan-read"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    .line 574
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$7;

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLan$7;-><init>(JLjava/util/concurrent/locks/ReentrantLock;Ljava/io/DataOutputStream;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    const-string v2, "lan-write"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    .line 607
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 608
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 609
    return-void

    .line 531
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

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
    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 442
    :cond_9
    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 443
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 444
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 445
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

    .line 446
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

    .line 449
    :catch_4f
    move-exception v0

    .line 452
    :cond_50
    :try_start_50
    const-string v0, "255.255.255.255"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_5a

    .line 453
    :goto_59
    return-object v1

    .line 452
    :catch_5a
    move-exception v0

    goto :goto_59
.end method

.method static buttonLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2444
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_f

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_f

    const-string v0, "Multiplayer"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2445
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
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aget-object v23, v2, v3

    .line 948
    const/16 v22, 0x0

    .line 949
    :goto_10
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_4d6

    move/from16 v0, v22

    move/from16 v1, p8

    if-ge v0, v1, :cond_4d6

    .line 950
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2f

    move/from16 v0, p1

    move/from16 v1, p4

    if-ge v0, v1, :cond_2f

    move/from16 v2, v22

    .line 949
    :goto_2a
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, v2

    goto :goto_10

    .line 951
    :cond_2f
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    if-lez v2, :cond_41

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLan;->skipped(I)Z

    move-result v2

    if-eqz v2, :cond_41

    move/from16 v2, v22

    goto :goto_2a

    .line 952
    :cond_41
    aget-object v13, v23, p1

    .line 953
    if-eqz v13, :cond_4d7

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    if-nez v2, :cond_4d7

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fBack:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move/from16 v2, v22

    goto :goto_2a

    .line 954
    :cond_54
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fType:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 955
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPos:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 956
    if-nez v2, :cond_67

    move/from16 v2, v22

    goto :goto_2a

    .line 957
    :cond_67
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fA:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fR:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fG:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fB:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v8

    .line 958
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fZoom:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    .line 959
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_28b

    .line 960
    iget-object v3, v13, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 961
    if-eqz v3, :cond_4d7

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eq v3, v4, :cond_4d7

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-ne v3, v4, :cond_98

    move/from16 v2, v22

    goto :goto_2a

    .line 962
    :cond_98
    instance-of v4, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    if-eqz v4, :cond_4db

    .line 963
    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v5, v7, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    .line 964
    check-cast v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    iget-object v14, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;->base:Lfr/testudo/spacecorsair/display/Drawable;

    move v11, v4

    move v10, v5

    move v9, v6

    .line 966
    :goto_ae
    iget-object v3, v14, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->defId(Lfr/testudo/spacecorsair/display/Texture;)I

    move-result v4

    .line 967
    if-gez v4, :cond_ba

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 968
    :cond_ba
    instance-of v3, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 969
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v5, :cond_1a7

    .line 970
    if-eqz v3, :cond_16d

    move-object v5, v14

    check-cast v5, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v21, v5

    .line 971
    :goto_c7
    if-eqz v3, :cond_181

    if-eqz v12, :cond_172

    const/4 v5, 0x1

    :goto_cc
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v6, :cond_175

    const/4 v6, 0x2

    :goto_d3
    or-int/2addr v6, v5

    move-object/from16 v0, v21

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    if-eqz v5, :cond_178

    const/4 v5, 0x4

    :goto_db
    or-int/2addr v6, v5

    move-object/from16 v0, v21

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    if-eqz v5, :cond_17b

    const/16 v5, 0x8

    :goto_e4
    or-int/2addr v6, v5

    move-object/from16 v0, v21

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v5, :cond_17e

    const/16 v5, 0x10

    :goto_ed
    or-int v12, v6, v5

    .line 972
    :goto_ef
    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v5, v5, p5

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v6, v2, p6

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fSpin:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v8

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v9

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v10

    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v11

    .line 973
    if-eqz v3, :cond_189

    move-object/from16 v0, v21

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    :goto_113
    if-eqz v3, :cond_18e

    move-object/from16 v0, v21

    iget v14, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    :goto_119
    if-eqz v3, :cond_193

    move-object/from16 v0, v21

    iget v15, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    :goto_11f
    if-eqz v3, :cond_195

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    move/from16 v16, v0

    :goto_127
    if-eqz v3, :cond_198

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    move/from16 v17, v0

    :goto_12f
    if-eqz v3, :cond_19b

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    move/from16 v18, v0

    :goto_137
    if-eqz v3, :cond_19e

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_19e

    const/16 v19, 0x1

    .line 974
    :goto_141
    if-eqz v3, :cond_1a1

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_1a1

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/16 v20, 0x0

    aget v20, v2, v20

    :goto_151
    if-eqz v3, :cond_1a4

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_1a4

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/16 v21, 0x1

    aget v21, v2, v21

    :goto_161
    move-object/from16 v2, p7

    .line 972
    invoke-static/range {v2 .. v21}, Lfr/testudo/spacecorsair/mod/ModLanSync;->sprite(Ljava/io/DataOutputStream;ZIFFFIIIIIFFFFFFZFF)Z

    move-result v2

    if-eqz v2, :cond_4d7

    .line 974
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 970
    :cond_16d
    const/4 v5, 0x0

    move-object/from16 v21, v5

    goto/16 :goto_c7

    .line 971
    :cond_172
    const/4 v5, 0x0

    goto/16 :goto_cc

    :cond_175
    const/4 v6, 0x0

    goto/16 :goto_d3

    :cond_178
    const/4 v5, 0x0

    goto/16 :goto_db

    :cond_17b
    const/4 v5, 0x0

    goto/16 :goto_e4

    :cond_17e
    const/4 v5, 0x0

    goto/16 :goto_ed

    :cond_181
    if-eqz v12, :cond_186

    const/4 v12, 0x1

    goto/16 :goto_ef

    :cond_186
    const/4 v12, 0x0

    goto/16 :goto_ef

    .line 973
    :cond_189
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto :goto_113

    :cond_18e
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v14, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto :goto_119

    :cond_193
    const/4 v15, 0x0

    goto :goto_11f

    :cond_195
    const/16 v16, 0x0

    goto :goto_127

    :cond_198
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_12f

    :cond_19b
    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_137

    :cond_19e
    const/16 v19, 0x0

    goto :goto_141

    .line 974
    :cond_1a1
    const/16 v20, 0x0

    goto :goto_151

    :cond_1a4
    const/16 v21, 0x0

    goto :goto_161

    .line 977
    :cond_1a7
    if-eqz v3, :cond_261

    const/4 v5, 0x1

    :goto_1aa
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 978
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 979
    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, v4, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fSpin:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 980
    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 981
    if-eqz v3, :cond_26e

    .line 982
    check-cast v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 983
    if-eqz v12, :cond_264

    const/4 v2, 0x1

    :goto_1fc
    iget-boolean v3, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v3, :cond_266

    const/4 v3, 0x2

    :goto_201
    or-int/2addr v3, v2

    iget-boolean v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    if-eqz v2, :cond_268

    const/4 v2, 0x4

    :goto_207
    or-int/2addr v3, v2

    iget-boolean v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    if-eqz v2, :cond_26a

    const/16 v2, 0x8

    :goto_20e
    or-int/2addr v3, v2

    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_26c

    const/16 v2, 0x10

    :goto_215
    or-int/2addr v2, v3

    .line 984
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 985
    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 986
    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 987
    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_25d

    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 992
    :cond_25d
    :goto_25d
    add-int/lit8 v2, v22, 0x1

    .line 993
    goto/16 :goto_2a

    .line 977
    :cond_261
    const/4 v5, 0x0

    goto/16 :goto_1aa

    .line 983
    :cond_264
    const/4 v2, 0x0

    goto :goto_1fc

    :cond_266
    const/4 v3, 0x0

    goto :goto_201

    :cond_268
    const/4 v2, 0x0

    goto :goto_207

    :cond_26a
    const/4 v2, 0x0

    goto :goto_20e

    :cond_26c
    const/4 v2, 0x0

    goto :goto_215

    .line 989
    :cond_26e
    if-eqz v12, :cond_289

    const/4 v2, 0x1

    :goto_271
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 990
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_25d

    .line 989
    :cond_289
    const/4 v2, 0x0

    goto :goto_271

    .line 993
    :cond_28b
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_339

    .line 994
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fText:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 995
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fTSize:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 996
    if-eqz v11, :cond_4d7

    if-eqz v10, :cond_4d7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2b0

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 997
    :cond_2b0
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_2e1

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v4, v2, p6

    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v5

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v7

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v8

    if-eqz v12, :cond_2df

    const/4 v9, 0x1

    :goto_2cf
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v10

    move-object/from16 v2, p7

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModLanSync;->text(Ljava/io/DataOutputStream;FFIIIIIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d7

    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    :cond_2df
    const/4 v9, 0x0

    goto :goto_2cf

    .line 998
    :cond_2e1
    const/4 v3, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 999
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1000
    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1001
    if-eqz v12, :cond_337

    const/4 v2, 0x1

    :goto_320
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1002
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1003
    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1004
    add-int/lit8 v2, v22, 0x1

    .line 1005
    goto/16 :goto_2a

    .line 1001
    :cond_337
    const/4 v2, 0x0

    goto :goto_320

    .line 1005
    :cond_339
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_3b6

    .line 1006
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_36b

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v4, v2, p6

    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v5

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v7

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v9

    move-object/from16 v2, p7

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModLanSync;->point(Ljava/io/DataOutputStream;FFIIIIF)Z

    move-result v2

    if-eqz v2, :cond_4d7

    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1007
    :cond_36b
    const/4 v3, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1008
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1009
    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1010
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1011
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1012
    :cond_3b6
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_4d7

    .line 1013
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1014
    instance-of v4, v3, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-nez v4, :cond_3c8

    move/from16 v2, v22

    goto/16 :goto_2a

    :cond_3c8
    move-object v9, v3

    .line 1015
    check-cast v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 1016
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_43b

    .line 1017
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1018
    const/4 v3, 0x0

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    const/4 v3, 0x1

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    const/4 v3, 0x2

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    const/4 v3, 0x3

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    .line 1019
    const/4 v3, 0x4

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extA:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    const/4 v3, 0x5

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extR:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    const/4 v3, 0x6

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extG:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    const/4 v3, 0x7

    iget v4, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extB:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v4

    aput v4, v10, v3

    .line 1020
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v4, v2, p6

    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v7, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    iget v8, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->height:F

    iget v9, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    move-object/from16 v2, p7

    invoke-static/range {v2 .. v10}, Lfr/testudo/spacecorsair/mod/ModLanSync;->bar(Ljava/io/DataOutputStream;FFFFFFF[I)Z

    move-result v2

    if-eqz v2, :cond_4d7

    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1023
    :cond_43b
    const/4 v3, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1024
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1025
    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1026
    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->height:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1027
    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1028
    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extA:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extR:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extG:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extB:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->b255(F)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1029
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1032
    :cond_4d6
    return v22

    :cond_4d7
    move/from16 v2, v22

    goto/16 :goto_2a

    :cond_4db
    move-object v14, v3

    move v11, v8

    move v10, v7

    move v9, v6

    goto/16 :goto_ae
.end method

.method static captureForTest(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;)I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2428
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    .line 2429
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
    .line 325
    if-nez p0, :cond_5

    const-string v0, ""

    .line 331
    :goto_4
    return-object v0

    .line 326
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_2f

    .line 328
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 329
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2c

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 331
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static connectTo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2694
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 2701
    :goto_6
    return-void

    .line 2695
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$44;

    invoke-direct {v1, p1, p0}, Lfr/testudo/spacecorsair/mod/ModLan$44;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    const-string v2, "lan-join"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2700
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method public static countsAsEnemy(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 1827
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

    .line 849
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v2

    .line 850
    if-nez v2, :cond_9

    move v0, v1

    .line 866
    :goto_8
    return v0

    .line 851
    :cond_9
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v3

    .line 852
    :try_start_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 853
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 867
    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v0

    .line 854
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

    .line 855
    :cond_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 856
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_1c

    .line 858
    :try_start_3e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 859
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 860
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 861
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 862
    const/4 v2, 0x1

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_56} :catch_5c
    .catchall {:try_start_3e .. :try_end_56} :catchall_1c

    .line 866
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 863
    :catch_5c
    move-exception v0

    .line 864
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

    .line 1314
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x60

    if-le v2, v3, :cond_14

    .line 1329
    :cond_13
    :goto_13
    return v0

    .line 1315
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1316
    const/16 v3, 0x52

    if-ne v2, v3, :cond_33

    .line 1318
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_7d

    move-result v2

    .line 1319
    ushr-int/lit8 v3, v2, 0x10

    const/16 v4, 0x7f02

    if-eq v3, v4, :cond_31

    ushr-int/lit8 v2, v2, 0x10

    const/16 v3, 0x7f03

    if-ne v2, v3, :cond_13

    :cond_31
    move v0, v1

    goto :goto_13

    .line 1324
    :cond_33
    const/16 v3, 0x4c

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_13

    :cond_3b
    move v2, v1

    .line 1325
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 1326
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1327
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

    .line 1325
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1329
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

    .line 1320
    :catch_7d
    move-exception v1

    goto :goto_13
.end method

.method static defineForTest(ILfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 2434
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
    .line 1841
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 1848
    :goto_9
    return v0

    .line 1843
    :cond_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_41

    .line 1844
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    .line 1845
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 1846
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

    .line 1847
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 1848
    const/4 v0, 0x1

    goto :goto_9

    .line 1843
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
    .line 2274
    if-eqz p0, :cond_7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_7

    .line 2277
    :goto_6
    return-void

    .line 2275
    :cond_7
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2276
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

    .line 2387
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

    .line 2393
    :cond_15
    :goto_15
    return p1

    .line 2388
    :cond_16
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2389
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_15

    .line 2390
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2391
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_15
.end method

.method private static enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1119
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

    .line 1134
    :cond_15
    :goto_15
    return-object v0

    .line 1120
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

    .line 1123
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    const-class v3, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1124
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1125
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_42
    if-ge v2, v5, :cond_83

    aget-object v0, v4, v2

    .line 1126
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1127
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

    .line 1133
    :goto_6c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_15

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1125
    :cond_7c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 1130
    :catch_80
    move-exception v0

    move-object v0, v1

    .line 1131
    goto :goto_6c

    :cond_83
    move-object v0, v1

    goto :goto_6c
.end method

.method private static extent(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 2115
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

    .line 2116
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

    .line 2118
    :goto_2a
    return v0

    .line 2116
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fy:Ljava/lang/reflect/Field;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 2117
    :catch_2e
    move-exception v0

    .line 2118
    const v0, 0x44bb8000    # 1500.0f

    goto :goto_2a
.end method

.method private static fail(Ljava/lang/Throwable;)V
    .registers 15

    .prologue
    const-wide/16 v12, 0x7530

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 612
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 613
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 614
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

    .line 615
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 616
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 617
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 618
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 619
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 620
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Co-op link lost"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p0, :cond_84

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 622
    if-eqz v1, :cond_69

    sput-boolean v10, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    .line 623
    :cond_69
    if-eqz v6, :cond_9b

    .line 624
    if-ne v2, v10, :cond_87

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_87

    .line 625
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 626
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 660
    :cond_83
    :goto_83
    return-void

    .line 621
    :cond_84
    const-string v0, ""

    goto :goto_5b

    .line 627
    :cond_87
    if-ne v2, v11, :cond_83

    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 628
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 629
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->rejoin()V

    goto :goto_83

    .line 633
    :cond_9b
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 635
    if-ne v2, v10, :cond_ba

    .line 636
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 638
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 639
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 640
    const-string v0, "Co-op link lost. Waiting 30 s for your friend to reconnect..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_83

    .line 641
    :cond_ba
    if-ne v2, v11, :cond_83

    if-eqz v3, :cond_83

    .line 642
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 643
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 644
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$8;

    invoke-direct {v4, v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan$8;-><init>(JLjava/lang/String;)V

    const-string v0, "lan-rejoin"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_83
.end method

.method private static fin(F)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1308
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

    .line 1309
    :cond_14
    return p0
.end method

.method private static findHosts(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 2654
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

    .line 2655
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$40;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$40;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lan-scan"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2666
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2667
    return-void
.end method

.method private static fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1854
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1855
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1856
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->shotClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1857
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

    .line 1872
    :cond_2a
    :goto_2a
    return-void

    .line 1858
    :cond_2b
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->newProjectile(Ljava/lang/Class;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v3

    .line 1859
    if-eqz v3, :cond_2a

    .line 1860
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    :goto_36
    if-ge v0, v4, :cond_40

    aget-object v5, v2, v0

    invoke-static {v1, v5, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readField(Ljava/io/DataInputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1861
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

    .line 1869
    :catch_58
    move-exception v0

    .line 1870
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

    .line 1862
    :cond_72
    :try_start_72
    iput-object p1, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 1863
    const/4 v0, 0x0

    iput-object v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 1864
    const/4 v0, 0x0

    iput-object v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->poisonSource:Lfr/testudo/spacecorsair/business/Element;

    .line 1865
    const/4 v0, 0x0

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    .line 1866
    const/4 v0, 0x0

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPlayer:Z

    .line 1867
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->updateSapCoords()V

    .line 1868
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_88} :catch_58

    goto :goto_2a
.end method

.method private static flushStyles()V
    .registers 7

    .prologue
    .line 2195
    const-class v1, Lfr/testudo/spacecorsair/mod/ModLanSync;

    monitor-enter v1

    .line 2196
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2197
    array-length v3, v0

    add-int/lit8 v3, v3, 0x5

    new-array v3, v3, [B

    .line 2198
    const/4 v4, 0x0

    const/16 v5, 0xc

    aput-byte v5, v3, v4

    const/4 v4, 0x4

    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2199
    const/4 v4, 0x0

    const/4 v5, 0x5

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2200
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_37

    :try_start_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_9

    :catchall_34
    move-exception v0

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    :try_start_36
    throw v0

    .line 2203
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v0

    .line 2202
    :cond_3a
    :try_start_3a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2203
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 2204
    return-void
.end method

.method static frame()V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1642
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3c

    const-wide/16 v0, 0x10

    .line 1643
    :goto_10
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    .line 1644
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    .line 1645
    const/4 v4, -0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    .line 1646
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    .line 1648
    :try_start_23
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1649
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1650
    :cond_31
    if-eqz v5, :cond_3b

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_f9

    if-nez v4, :cond_4d

    .line 1674
    :cond_3b
    :goto_3b
    return-void

    .line 1642
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

    .line 1651
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

    .line 1652
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

    .line 1653
    :cond_ac
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->testSwitch(J)V

    .line 1654
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

    .line 1655
    :cond_e1
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x7d0

    cmp-long v4, v8, v10

    if-lez v4, :cond_f0

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->persistedMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 1656
    :cond_f0
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v4, :cond_ff

    .line 1657
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    goto/16 :goto_3b

    .line 1671
    :catch_f9
    move-exception v0

    goto/16 :goto_3b

    .line 1651
    :cond_fc
    const-string v4, ""

    goto :goto_82

    .line 1660
    :cond_ff
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xbb8

    cmp-long v4, v8, v10

    if-lez v4, :cond_264

    .line 1661
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    .line 1662
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

    .line 1667
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logOut:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logIn:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logRaw:J

    .line 1669
    :cond_264
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_271

    invoke-static {v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto/16 :goto_3b

    .line 1662
    :cond_26d
    const-string v4, "guest"

    goto/16 :goto_118

    .line 1670
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

    .line 806
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 807
    add-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    .line 808
    int-to-byte v2, p0

    aput-byte v2, v1, v4

    .line 809
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

    .line 810
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    return-object v1
.end method

.method static guestActive()Z
    .registers 2

    .prologue
    .line 2008
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

    .line 1997
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1998
    if-ne p0, v3, :cond_18

    move v0, v1

    :goto_9
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipNow:Z

    .line 1999
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v0, :cond_1a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2004
    :goto_17
    return v1

    :cond_18
    move v0, v2

    .line 1998
    goto :goto_9

    .line 2000
    :cond_1a
    if-eq p0, v3, :cond_1e

    move v1, v2

    goto :goto_17

    .line 2002
    :cond_1e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 2003
    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    goto :goto_17

    .line 2002
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

    .line 2353
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2354
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_f

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2368
    :cond_e
    :goto_e
    return-void

    .line 2355
    :cond_f
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_28

    .line 2356
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2357
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_25

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    .line 2358
    :cond_25
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2360
    :cond_28
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_e

    .line 2361
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    if-le v0, v3, :cond_4e

    move v0, v1

    .line 2362
    :goto_35
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-nez v3, :cond_50

    .line 2363
    :goto_39
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2364
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2365
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2366
    if-nez v1, :cond_e

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    goto :goto_e

    :cond_4e
    move v0, v2

    .line 2361
    goto :goto_35

    :cond_50
    move v1, v2

    .line 2362
    goto :goto_39
.end method

.method static guestFeeFree()Z
    .registers 2

    .prologue
    .line 97
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_13

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static guestFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 15

    .prologue
    const/high16 v10, 0x3fc00000    # 1.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 1893
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_30

    .line 1894
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    if-eqz v0, :cond_22

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 1895
    :cond_22
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v0, :cond_36

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_29
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_33

    .line 1974
    :cond_2f
    :goto_2f
    return-void

    .line 1893
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 1895
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 1896
    :cond_36
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1898
    iget-object v0, v5, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_42
    :goto_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1899
    if-eq v0, p0, :cond_42

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_42

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1900
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v1, :cond_66

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1901
    :cond_66
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v1, :cond_85

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-nez v1, :cond_85

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-nez v1, :cond_85

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-nez v1, :cond_85

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Mine;

    if-nez v1, :cond_85

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_42

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v1, p0, :cond_42

    .line 1902
    :cond_85
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_42

    .line 1904
    :cond_89
    const/4 v0, 0x0

    .line 1905
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8d
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a1

    new-instance v0, Ljava/util/ArrayList;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_ca

    .line 1906
    if-eqz v0, :cond_cd

    if-eqz v6, :cond_cd

    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_cd

    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v7, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->rollLoot(Lfr/testudo/spacecorsair/mod/ModLan$Kill;)V

    goto :goto_ba

    .line 1905
    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0

    .line 1907
    :cond_cd
    if-eqz v6, :cond_2f

    .line 1908
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 1910
    iget-object v0, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_16b

    iget-object v0, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16b

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_16b

    .line 1911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1912
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v2, :cond_fc

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    sub-long v2, v0, v2

    const-wide/16 v8, 0xbb8

    cmp-long v2, v2, v8

    if-lez v2, :cond_2f

    .line 1913
    :cond_fc
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 1914
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    .line 1916
    const/4 v1, 0x0

    .line 1917
    :try_start_102
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    array-length v7, v3

    move v2, v4

    :goto_108
    if-ge v2, v7, :cond_2e1

    aget-object v0, v3, v2

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v9, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15b

    .line 1918
    :goto_116
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_15f

    .line 1919
    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v2, :cond_128

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v1, :cond_128

    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1920
    :cond_128
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v2, "VECTOR00_GATE"

    invoke-virtual {v5, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    :cond_12f
    :goto_12f
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guest pulled to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_169

    const/4 v0, 0x1

    :goto_14b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1924
    :catch_158
    move-exception v0

    goto/16 :goto_2f

    .line 1917
    :cond_15b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_108

    .line 1922
    :cond_15f
    if-eqz v0, :cond_12f

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_168} :catch_158

    goto :goto_12f

    :cond_169
    move v0, v4

    .line 1923
    goto :goto_14b

    .line 1930
    :cond_16b
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v0, :cond_189

    .line 1931
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 1932
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_2a4

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    const/high16 v4, 0x45160000    # 2400.0f

    add-float/2addr v1, v4

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1934
    :goto_181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1935
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 1938
    :cond_189
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_193

    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 1939
    :cond_193
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    sub-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sub-float v1, v0, v1

    .line 1940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1941
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v0, v8, v12

    if-nez v0, :cond_2b5

    move v0, v2

    .line 1942
    :goto_1a7
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_1b7

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v10

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    const v7, 0x4e6e6b28    # 1.0E9f

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 1943
    :cond_1b7
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    .line 1945
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v4, v10

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 1946
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v4, :cond_1f9

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1f9

    .line 1947
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    add-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    .line 1948
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1ed

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1949
    :cond_1ed
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    sub-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 1950
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 1953
    :cond_1f9
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    cmp-long v1, v4, v12

    if-gez v1, :cond_203

    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 1954
    :cond_203
    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    sub-long/2addr v4, v8

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    sub-long/2addr v4, v8

    .line 1956
    const/high16 v1, 0x447a0000    # 1000.0f

    :try_start_20d
    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v7, v7, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v8, v7, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-float v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1957
    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    mul-float/2addr v0, v1

    const/high16 v8, 0x42700000    # 60.0f

    div-float/2addr v0, v8

    add-float/2addr v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F
    :try_end_227
    .catch Ljava/lang/Throwable; {:try_start_20d .. :try_end_227} :catch_2d8

    .line 1959
    :goto_227
    cmp-long v0, v4, v12

    if-lez v0, :cond_25f

    .line 1960
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    add-long/2addr v0, v4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    .line 1961
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    float-to-long v0, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_2de

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v0, v0

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1962
    :goto_244
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    long-to-float v5, v0

    sub-float/2addr v4, v5

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 1963
    cmp-long v4, v0, v12

    if-lez v4, :cond_25f

    :try_start_24e
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    const-wide/32 v8, 0x7fffffff

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V
    :try_end_25f
    .catch Ljava/lang/Throwable; {:try_start_24e .. :try_end_25f} :catch_2d6

    .line 1965
    :cond_25f
    :goto_25f
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 1966
    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    .line 1967
    iget-boolean v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    if-eqz v0, :cond_2db

    .line 1968
    iget-wide v8, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    cmp-long v0, v8, v12

    if-gtz v0, :cond_2c5

    move v0, v3

    .line 1969
    :goto_271
    iget-object v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v5, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v5, v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->glide([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IF)V

    .line 1970
    iget-wide v8, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    cmp-long v3, v8, v12

    if-lez v3, :cond_2db

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phx:F

    iget v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phx:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phy:F

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    iget v5, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phy:F

    sub-float/2addr v4, v5

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    move v3, v1

    .line 1972
    :goto_291
    iget-object v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v4, v2, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 1973
    const/high16 v1, 0x43160000    # 150.0f

    add-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->drawLabel(FFLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1933
    :cond_2a4
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    const/high16 v4, 0x437a0000    # 250.0f

    add-float/2addr v1, v4

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    const/high16 v5, 0x437a0000    # 250.0f

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_181

    .line 1941
    :cond_2b5
    const/high16 v0, 0x40000000    # 2.0f

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    sub-long v8, v4, v8

    long-to-float v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_1a7

    .line 1968
    :cond_2c5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    sub-long/2addr v8, v10

    long-to-float v0, v8

    iget-wide v8, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    long-to-float v5, v8

    div-float/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_271

    .line 1963
    :catch_2d6
    move-exception v0

    goto :goto_25f

    .line 1958
    :catch_2d8
    move-exception v0

    goto/16 :goto_227

    :cond_2db
    move v0, v1

    move v3, v4

    goto :goto_291

    :cond_2de
    move-wide v0, v4

    goto/16 :goto_244

    :cond_2e1
    move-object v0, v1

    goto/16 :goto_116
.end method

.method private static guestMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V
    .registers 20

    .prologue
    .line 1495
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-gtz v1, :cond_f

    .line 1528
    :cond_e
    :goto_e
    return-void

    .line 1497
    :cond_f
    :try_start_f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 1498
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v14, v2, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1499
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v15, v2

    .line 1500
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-lez v2, :cond_e

    .line 1501
    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    div-float v16, v2, v15

    .line 1502
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1503
    const/4 v2, 0x0

    move v13, v2

    :goto_3c
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-ge v13, v2, :cond_e

    .line 1504
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 1505
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 1506
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

    .line 1507
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v12

    .line 1508
    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v6, v2

    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v3, v6, v3

    .line 1509
    mul-float v6, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v6, v11

    mul-float v11, v15, v15

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_91

    .line 1503
    :cond_8d
    :goto_8d
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3c

    .line 1510
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

    .line 1511
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_bd

    const/4 v2, 0x1

    .line 1512
    :goto_a7
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_cd

    .line 1513
    if-eqz v2, :cond_bf

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/Mission;->targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 1514
    :goto_af
    if-eqz v4, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto :goto_8d

    .line 1525
    :catch_ba
    move-exception v1

    goto/16 :goto_e

    .line 1511
    :cond_bd
    const/4 v2, 0x0

    goto :goto_a7

    .line 1513
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

    .line 1515
    :cond_cd
    if-eqz v2, :cond_105

    .line 1516
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_f9

    const-string v2, "icon_skull"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 1517
    :goto_d9
    if-eqz v2, :cond_fb

    .line 1518
    const/high16 v6, 0x41500000    # 13.0f

    const v3, 0x3f555555

    mul-float v5, v6, v3

    .line 1519
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

    .line 1516
    :cond_f9
    const/4 v2, 0x0

    goto :goto_d9

    .line 1520
    :cond_fb
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-static/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto :goto_8d

    .line 1521
    :cond_105
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    array-length v2, v2

    if-ge v5, v2, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aget-object v2, v2, v5

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_8d

    .line 1522
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
    .line 1551
    :try_start_0
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    if-nez v0, :cond_11

    .line 1561
    :cond_10
    :goto_10
    return-void

    .line 1552
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1553
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

    .line 1554
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_79

    .line 1555
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

    .line 1556
    :goto_4e
    :try_start_4e
    const-string v1, "CO-OP MISSION COMPLETE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1557
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

    .line 1558
    :catch_79
    move-exception v0

    goto :goto_10

    .line 1555
    :catch_7b
    move-exception v1

    goto :goto_4e
.end method

.method private static hello(Ljava/net/Socket;J)Z
    .registers 16

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 481
    const/16 v2, 0xbb8

    :try_start_4
    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 482
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 483
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 484
    const-string v3, "SCLAN2"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [B

    .line 485
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 486
    const-string v5, "SCLAN2"

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 505
    :goto_33
    return v0

    .line 487
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

    .line 488
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 489
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_87

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 491
    :goto_6a
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    monitor-enter v8
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6d} :catch_85

    :try_start_6d
    instance-of v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-nez v2, :cond_8b

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v2, v1

    :goto_7a
    monitor-exit v8
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_8d

    .line 492
    if-eqz v2, :cond_90

    const/4 v1, 0x3

    :try_start_7e
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_33

    .line 504
    :catch_85
    move-exception v1

    goto :goto_33

    .line 489
    :cond_87
    const-string v2, ""
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_89} :catch_85

    move-object v3, v2

    goto :goto_6a

    :cond_8b
    move v2, v0

    .line 491
    goto :goto_7a

    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v1

    .line 493
    :cond_90
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

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

    .line 494
    :cond_c2
    instance-of v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v2, :cond_11c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_124

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    :cond_d8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_124

    move v2, v1

    .line 495
    :goto_e3
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 496
    if-nez v2, :cond_126

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    if-nez v2, :cond_126

    invoke-static {v5, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->askAccept(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_126

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

    .line 494
    :cond_11c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    :cond_124
    move v2, v0

    goto :goto_e3

    .line 497
    :cond_126
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 498
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 500
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 501
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 502
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_149} :catch_85

    move v0, v1

    .line 503
    goto/16 :goto_33
.end method

.method static host()V
    .registers 5

    .prologue
    .line 121
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 122
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 123
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 124
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 125
    const-string v2, "Waiting for a player to join..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 126
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$1;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$1;-><init>(J)V

    const-string v4, "lan-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    .line 148
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 149
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$2;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$2;-><init>(J)V

    const-string v0, "lan-beacon"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method

.method private static hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2289
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_23

    .line 2290
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2291
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2292
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2293
    if-eqz p2, :cond_34

    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    :goto_1c
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2294
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2295
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2297
    :cond_23
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_36

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-nez v0, :cond_36

    .line 2298
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2299
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2300
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    .line 2335
    :cond_33
    :goto_33
    return-void

    :cond_34
    move v0, v1

    .line 2293
    goto :goto_1c

    .line 2303
    :cond_36
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_33

    .line 2304
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2306
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    if-eqz v3, :cond_52

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1770

    cmp-long v3, v4, v6

    if-lez v3, :cond_33

    .line 2307
    :cond_52
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2308
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    .line 2309
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_64

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v0, :cond_64

    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2310
    :cond_64
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v1, "VECTOR00_GATE"

    invoke-virtual {p1, v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
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

    .line 2316
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

    .line 2317
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

    .line 2318
    :cond_c1
    if-eqz p2, :cond_e2

    iget v3, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    if-gt v3, v4, :cond_cb

    if-eqz v0, :cond_e2

    .line 2319
    :cond_cb
    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2320
    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2321
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    .line 2322
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2323
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2324
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2326
    :cond_e2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_fb

    .line 2327
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2328
    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2329
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2330
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2331
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2332
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2334
    :cond_fb
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    if-eqz v0, :cond_33

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_33

    :cond_106
    move v0, v1

    .line 2316
    goto :goto_9f
.end method

.method static hostForTest()V
    .registers 1

    .prologue
    .line 2417
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    .line 1680
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1681
    :try_start_3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1682
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1683
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1684
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_50

    .line 1685
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1686
    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->hostMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;)V

    .line 1687
    invoke-static {p0, v4, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    .line 1688
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

    .line 1690
    :goto_4a
    if-nez v0, :cond_55

    .line 1691
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1746
    :cond_4f
    return-void

    .line 1684
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 1688
    :cond_53
    const/4 v0, 0x0

    goto :goto_4a

    .line 1694
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

    .line 1695
    :cond_6f
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1696
    if-eqz v5, :cond_4f

    .line 1698
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    if-eq v2, v0, :cond_d4

    .line 1699
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1700
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sub-float v1, v0, v1

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    sub-float v6, v0, v6

    .line 1701
    const v0, 0x3c83126f    # 0.016f

    iget-wide v8, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1702
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v8

    iget v8, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    iget-object v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v8, v9

    .line 1703
    mul-float/2addr v0, v0

    mul-float/2addr v8, v8

    add-float/2addr v0, v8

    const v8, 0x4b742400    # 1.6E7f

    cmpg-float v0, v0, v8

    if-gez v0, :cond_189

    const/4 v0, 0x1

    .line 1704
    :goto_ae
    const v8, 0x45bb8000    # 6000.0f

    mul-float/2addr v7, v8

    const v8, 0x44bb8000    # 1500.0f

    add-float/2addr v7, v8

    .line 1705
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_18c

    if-nez v0, :cond_18c

    mul-float v0, v1, v1

    mul-float v1, v6, v6

    add-float/2addr v0, v1

    mul-float v1, v7, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18c

    .line 1706
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1707
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1713
    :cond_d4
    :goto_d4
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    .line 1714
    mul-float v6, v1, v1

    mul-float v7, v0, v0

    add-float/2addr v6, v7

    .line 1715
    const v7, 0x461c4000    # 10000.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_f0

    const/high16 v7, 0x42c80000    # 100.0f

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    div-float v6, v7, v6

    mul-float/2addr v1, v6

    mul-float/2addr v0, v6

    .line 1716
    :cond_f0
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

    .line 1717
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-eqz v7, :cond_19d

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1719
    :goto_10e
    iget-object v6, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1720
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1721
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1723
    const v0, 0x49742400    # 1000000.0f

    iget v1, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    sub-float/2addr v0, v1

    .line 1724
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_133

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    add-float/2addr v1, v0

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v1, :cond_133

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    add-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 1725
    :cond_133
    const v0, 0x49742400    # 1000000.0f

    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1726
    const v0, 0x49742400    # 1000000.0f

    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1727
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1ad

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    div-float/2addr v0, v1

    :goto_151
    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 1728
    const/4 v0, 0x0

    iput-boolean v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 1729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 1730
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_168

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    .line 1731
    :cond_168
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1732
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    const/16 v3, 0x12c

    if-le v2, v3, :cond_1b0

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_16c

    .line 1703
    :cond_189
    const/4 v0, 0x0

    goto/16 :goto_ae

    .line 1709
    :cond_18c
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1710
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    iget-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    goto/16 :goto_d4

    .line 1718
    :cond_19d
    iget-object v7, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    mul-float v9, v1, v6

    add-float/2addr v8, v9

    iget v9, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    mul-float/2addr v6, v0

    add-float/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_10e

    .line 1727
    :cond_1ad
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_151

    .line 1733
    :cond_1b0
    invoke-static {v0, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_16c

    .line 1735
    :cond_1b4
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1736
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_4f

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4f

    .line 1737
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1738
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1cf
    :goto_1cf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1739
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_1cf

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_1cf

    if-eq v0, v5, :cond_1cf

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_1cf

    move-object v1, v0

    .line 1740
    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1741
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v3, p0, :cond_1cf

    .line 1742
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 1743
    const v4, 0x451c4000    # 2500.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1cf

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1cf

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpg-double v0, v6, v8

    if-gez v0, :cond_1cf

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_1cf
.end method

.method static hostHides(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1161
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

    .line 1460
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1461
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1463
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

    .line 1464
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

    .line 1466
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

    .line 1467
    const/16 v1, 0x12c

    if-lt v7, v1, :cond_7a

    .line 1480
    :cond_5b
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 1481
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 1482
    const/4 v2, 0x0

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, v1, v2

    .line 1483
    const/4 v2, 0x0

    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1484
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 1488
    :goto_79
    return-void

    .line 1468
    :cond_7a
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_4b

    if-eq v0, p0, :cond_4b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq v0, v1, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    if-eqz v1, :cond_4b

    .line 1469
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-eqz v1, :cond_125

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    if-eqz v1, :cond_125

    move v6, v5

    .line 1470
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

    .line 1471
    :cond_a9
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const v4, 0x469c4000    # 20000.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_4b

    .line 1472
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

    .line 1473
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

    .line 1474
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

    .line 1475
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

    .line 1477
    :goto_11b
    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1478
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 1479
    goto/16 :goto_4b

    :cond_125
    move v6, v3

    .line 1469
    goto/16 :goto_93

    :cond_128
    move v4, v3

    .line 1472
    goto :goto_bf

    :cond_12a
    move v1, v3

    goto :goto_c2

    .line 1476
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

    .line 1485
    :catch_14d
    move-exception v0

    .line 1486
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    goto/16 :goto_79

    .line 1473
    :catch_153
    move-exception v4

    goto/16 :goto_d3
.end method

.method static hostNet()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 180
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 181
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 182
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 183
    const-string v0, "Waiting for a player to join..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 184
    return-void
.end method

.method static hostNetForTest()V
    .registers 1

    .prologue
    .line 2419
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 5

    .prologue
    .line 1981
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_18

    .line 1982
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1983
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "CO-OP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 1985
    :cond_18
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;-><init>()V

    .line 1986
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 1987
    iput p1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 1988
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 1989
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p0, p1, v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 1993
    :goto_2c
    return-void

    .line 1990
    :catch_2d
    move-exception v0

    .line 1991
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sub-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    goto :goto_2c
.end method

.method private static inBay()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2281
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2282
    if-eqz v1, :cond_10

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_11

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 2284
    :cond_10
    :goto_10
    return v0

    .line 2283
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method static isAlly(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 1836
    if-eqz p0, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_10

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static isProxy(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 1831
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

    .line 238
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 239
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 240
    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 241
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 242
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 244
    :try_start_18
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 245
    new-instance v0, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v0, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v1, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 246
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_34

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 275
    :cond_33
    :goto_33
    return-void

    .line 247
    :cond_34
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 248
    const-string v4, "SCLAN2"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 249
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 251
    const-string v0, "Waiting for the host to accept..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 252
    const v0, 0x88b8

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 253
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 254
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 255
    if-ne v5, v8, :cond_9a

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_81
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 257
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_9d

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_8e} :catch_8f

    goto :goto_33

    .line 272
    :catch_8f
    move-exception v0

    .line 273
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_33

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V

    goto :goto_33

    .line 255
    :cond_9a
    :try_start_9a
    const-string v0, ""

    goto :goto_81

    .line 258
    :cond_9d
    if-eqz v5, :cond_11e

    .line 259
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 260
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 261
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 262
    if-ne v5, v8, :cond_10d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Different game versions. Your friend has"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x28

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

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

    .line 263
    :goto_f1
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 264
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "join refused "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 263
    :cond_10d
    const/4 v0, 0x3

    if-ne v5, v0, :cond_117

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f1

    :cond_117
    const-string v0, "The host declined."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f1

    .line 267
    :cond_11e
    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 268
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 269
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 270
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 271
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_12f} :catch_8f

    goto/16 :goto_33
.end method

.method private static joinCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2636
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Connecting... This can take up to a minute. The host has to accept."

    .line 2637
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 2638
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$38;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$38;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2639
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$39;

    invoke-direct {v2, p1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$39;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lobby-join"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2650
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2651
    return-void
.end method

.method static joinNet(Ljava/net/Socket;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v0, 0x0

    .line 203
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 204
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 205
    sput v10, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 206
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 207
    const-string v2, "Waiting for the host to accept..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 209
    :try_start_19
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    const-string v3, "SCLAN2"

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 211
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 213
    const v2, 0x88b8

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 214
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 215
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 216
    if-ne v6, v10, :cond_67

    const/16 v2, 0x40

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 217
    :goto_60
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_6a

    .line 231
    :cond_66
    :goto_66
    return v0

    .line 216
    :cond_67
    const-string v2, ""

    goto :goto_60

    .line 218
    :cond_6a
    if-eqz v6, :cond_df

    .line 219
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 220
    if-ne v6, v10, :cond_ce

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Different game versions. Your friend has"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x28

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "you have"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :goto_b8
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_ba} :catch_bb

    goto :goto_66

    .line 229
    :catch_bb
    move-exception v1

    .line 230
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_66

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    const-string v1, "The host did not answer."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_66

    .line 221
    :cond_ce
    const/4 v1, 0x3

    if-ne v6, v1, :cond_d8

    :try_start_d1
    const-string v1, "The host removed you from this game."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b8

    :cond_d8
    const-string v1, "The host declined."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b8

    .line 224
    :cond_df
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 225
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 227
    invoke-static {p0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_ee} :catch_bb

    move v0, v1

    .line 228
    goto/16 :goto_66
.end method

.method public static keepRunning()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1182
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

    .line 1183
    :goto_13
    if-eqz v0, :cond_1e

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    const-string v1, "lan"

    const-string v2, "menu open: game keeps running"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_1e
    return v0

    .line 1182
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static kick()V
    .registers 5

    .prologue
    .line 388
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 389
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 390
    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_f
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_42

    .line 391
    :cond_15
    const-string v2, "lan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_26

    const-string v0, "internet guest"

    :cond_26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 393
    if-eqz v1, :cond_39

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->kicked()V

    .line 394
    :cond_39
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 395
    if-nez v1, :cond_45

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 397
    :cond_41
    :goto_41
    return-void

    .line 390
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0

    .line 396
    :cond_45
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_41

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    goto :goto_41
.end method

.method static killed(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 4

    .prologue
    .line 1104
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

    .line 1115
    :cond_17
    :goto_17
    return-void

    .line 1105
    :cond_18
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1107
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1108
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

    .line 1109
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1110
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 1111
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_17

    .line 1112
    :catch_5f
    move-exception v0

    goto :goto_17
.end method

.method private static lanPrefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 1599
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v1, "corsair_lan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static leanHost(Lfr/testudo/spacecorsair/engine/RenderQueue;ILfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;J)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2208
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2209
    if-eqz v2, :cond_35

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    if-eqz v3, :cond_35

    iget-wide v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long v4, p4, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_35

    move-object/from16 v0, p3

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v3, :cond_35

    move-object/from16 v0, p3

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    move v5, v2

    .line 2210
    :goto_28
    if-nez v5, :cond_3a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v2, p4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-gez v2, :cond_38

    .line 2238
    :goto_34
    return-void

    .line 2209
    :cond_35
    const/4 v2, 0x0

    move v5, v2

    goto :goto_28

    .line 2210
    :cond_38
    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2211
    :cond_3a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x60

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2212
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2213
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_148

    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_52
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2214
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2215
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2216
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2217
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 2218
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->slowAt:J

    sub-long v2, p4, v2

    const-wide/16 v8, 0x1f4

    cmp-long v2, v2, v8

    if-gez v2, :cond_97

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->slowLast:[B

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_14c

    :cond_97
    const/4 v2, 0x1

    .line 2219
    :goto_98
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2220
    if-nez v13, :cond_14f

    const/4 v3, 0x0

    move v12, v3

    .line 2221
    :goto_9e
    if-eqz v5, :cond_15f

    if-lez v12, :cond_15f

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->marksAt:J

    sub-long v8, p4, v8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->marksEveryMs()I

    move-result v3

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-ltz v3, :cond_15f

    const/4 v3, 0x1

    move v11, v3

    .line 2222
    :goto_b1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v14, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2223
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2224
    if-eqz v2, :cond_163

    const/4 v3, 0x1

    move v4, v3

    :goto_c1
    if-eqz v11, :cond_167

    const/4 v3, 0x2

    :goto_c4
    or-int/2addr v3, v4

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2225
    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2226
    if-eqz v2, :cond_e3

    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->write([B)V

    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->slowAt:J

    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->slowLast:[B

    .line 2227
    :cond_e3
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2228
    new-instance v9, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2229
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2230
    if-eqz v5, :cond_170

    const/4 v3, 0x0

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    if-gez v2, :cond_16a

    const/4 v5, 0x0

    :goto_fe
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    if-gez v2, :cond_16d

    const/4 v6, 0x0

    :goto_103
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v10, 0x898

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-static/range {v2 .. v10}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v2

    .line 2231
    :goto_119
    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2232
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2233
    if-eqz v11, :cond_135

    invoke-virtual {v15, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v2, v13

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x2

    array-length v3, v13

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v15, v13, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->marksAt:J

    .line 2234
    :cond_135
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 2235
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2236
    const/16 v2, 0xa

    invoke-static {v2, v14}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2237
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_34

    .line 2213
    :cond_148
    const-string v2, ""

    goto/16 :goto_52

    .line 2218
    :cond_14c
    const/4 v2, 0x0

    goto/16 :goto_98

    .line 2220
    :cond_14f
    const/4 v3, 0x0

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v12, v3

    goto/16 :goto_9e

    .line 2221
    :cond_15f
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_b1

    .line 2224
    :cond_163
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_c1

    :cond_167
    const/4 v3, 0x0

    goto/16 :goto_c4

    .line 2230
    :cond_16a
    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    goto :goto_fe

    :cond_16d
    sget v6, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    goto :goto_103

    :cond_170
    const/4 v2, 0x0

    goto :goto_119
.end method

.method private static leaveBay()V
    .registers 4

    .prologue
    .line 2339
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2340
    if-eqz v0, :cond_8

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v1, :cond_9

    .line 2350
    :cond_8
    :goto_8
    return-void

    .line 2341
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2343
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2344
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
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

    .line 2347
    :catch_38
    move-exception v0

    goto :goto_8
.end method

.method public static menuOpening()V
    .registers 2

    .prologue
    .line 1178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->menuAt:J

    return-void
.end method

.method static missionDone()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1541
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1542
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

    .line 1544
    :cond_14
    :goto_14
    return v0

    .line 1543
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method static missionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1532
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1533
    if-eqz v0, :cond_d

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    .line 1535
    :goto_c
    return-object v0

    .line 1533
    :cond_d
    const-string v0, ""
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_c

    .line 1534
    :catch_10
    move-exception v0

    .line 1535
    const-string v0, ""

    goto :goto_c
.end method

.method private static missionLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2450
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    .line 2451
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

    .line 2454
    :goto_1d
    return-object v0

    .line 2451
    :cond_1e
    const-string v0, ""

    goto :goto_11

    .line 2452
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

    .line 2453
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

    .line 2454
    :cond_53
    const-string v0, "Missions: pick the same mission to work on it together, or the guest can fly their own missions and come back later."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method static myAddresses()Ljava/lang/String;
    .registers 5

    .prologue
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 461
    :cond_9
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 462
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 463
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 464
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

    .line 465
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 466
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2b

    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4a

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_4a
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_51} :catch_52

    goto :goto_2b

    .line 472
    :catch_52
    move-exception v0

    .line 475
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
    .line 295
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myNick()Ljava/lang/String;
    .registers 1

    .prologue
    .line 293
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->nick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 282
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    .line 290
    :goto_6
    return-object v0

    .line 284
    :cond_7
    :try_start_7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_37} :catch_3a

    .line 290
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    goto :goto_6

    .line 287
    :catch_3a
    move-exception v0

    .line 288
    const-string v0, "?"

    goto :goto_6
.end method

.method private static netLines()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2562
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->linkLine()Ljava/lang/String;

    move-result-object v0

    .line 2563
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
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

    .line 1878
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1886
    :goto_12
    if-eqz v0, :cond_4a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1887
    :goto_1a
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    return-object v0

    .line 1881
    :cond_1d
    const-class v0, Lfr/testudo/spacecorsair/business/factory/GamePools;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_25
    if-ge v2, v5, :cond_4f

    aget-object v0, v4, v2

    .line 1882
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

    .line 1884
    :goto_40
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 1881
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 1886
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

    .line 346
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

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

    .line 758
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    .line 759
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_91

    .line 760
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    monitor-enter v1

    .line 761
    :try_start_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 762
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 763
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 764
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    array-length v0, v0

    array-length v2, p1

    if-ge v0, v2, :cond_32

    array-length v0, p1

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 765
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 766
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 767
    add-int/lit8 v0, v2, 0xa

    new-array v0, v0, [B

    .line 768
    add-int/lit8 v3, v2, 0x5

    .line 769
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput-byte v5, v0, v4

    .line 770
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

    .line 771
    const/4 v3, 0x5

    int-to-byte v4, p0

    aput-byte v4, v0, v3

    .line 772
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

    .line 773
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    monitor-exit v1

    .line 782
    :goto_8f
    return-object v0

    .line 776
    :cond_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_16 .. :try_end_91} :catchall_b5

    .line 778
    :cond_91
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    .line 779
    int-to-byte v1, p0

    aput-byte v1, v0, v5

    .line 780
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

    .line 781
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    .line 776
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
    .line 2423
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static peerLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
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
    .line 1604
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

    .line 1605
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 1621
    :cond_1a
    :goto_1a
    return-void

    .line 1606
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1607
    if-eqz v0, :cond_5e

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1608
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1609
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1610
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 1611
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

    .line 1618
    :catch_5c
    move-exception v0

    goto :goto_1a

    .line 1613
    :cond_5e
    if-nez v0, :cond_64

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    if-eqz v0, :cond_1a

    .line 1614
    :cond_64
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    .line 1615
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1616
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
    .line 2670
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2671
    const-string v1, "192.168.1.10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2672
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2673
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Join a game"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2674
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 2675
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2676
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$41;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$41;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2679
    const-string v0, "Type address"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$42;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$42;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2690
    :goto_45
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2691
    return-void

    .line 2683
    :cond_49
    const-string v2, "No game found. Type the host\'s address (shown on the host\'s LAN co-op screen):"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2684
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2685
    const-string v2, "Join"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$43;

    invoke-direct {v3, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$43;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2688
    const-string v0, "Close"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_45
.end method

.method private static publicList(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 2585
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Public games (internet)"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Loading the list..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2586
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$36;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$36;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lobby-list"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2620
    return-void
.end method

.method static queueSize()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 930
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 931
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 933
    :cond_11
    :goto_11
    return v0

    .line 932
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
    .line 2415
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
    .line 2087
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2088
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 2104
    :cond_f
    :goto_f
    return-void

    .line 2089
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_f

    .line 2090
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_f

    .line 2091
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_f

    .line 2092
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_f

    .line 2093
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_f

    .line 2094
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_f

    .line 2095
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_f

    .line 2096
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2097
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2098
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 2099
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2100
    if-nez v0, :cond_86

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2101
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
    .line 2440
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
    .line 299
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 300
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 301
    return-void
.end method

.method private static readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, -0x3963c000    # -20000.0f

    const/high16 v8, 0x44000000    # 512.0f

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x437f0000    # 255.0f

    .line 1333
    new-array v1, p1, [Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1334
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_244

    .line 1335
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$Rec;-><init>()V

    .line 1336
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    .line 1337
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v3, :cond_23

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ed

    .line 1338
    :cond_23
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    .line 1339
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

    .line 1340
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

    .line 1341
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1342
    const v3, 0x469c4000    # 20000.0f

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    const v3, 0x469c4000    # 20000.0f

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    .line 1343
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e4

    .line 1344
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    .line 1345
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_de

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    .line 1368
    :cond_de
    :goto_de
    aput-object v2, v1, v0

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 1347
    :cond_e4
    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    goto :goto_de

    .line 1349
    :cond_ed
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13f

    .line 1350
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

    .line 1351
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

    .line 1352
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1353
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    .line 1354
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    goto :goto_de

    .line 1355
    :cond_13f
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18c

    .line 1356
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

    .line 1357
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

    .line 1358
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    goto/16 :goto_de

    .line 1359
    :cond_18c
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_229

    .line 1360
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

    .line 1361
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    .line 1362
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    .line 1363
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

    .line 1364
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

    goto/16 :goto_de

    .line 1366
    :cond_229
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

    .line 1370
    :cond_244
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
    .line 2432
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
    .line 511
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 512
    mul-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "string too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_10
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 514
    const/4 v2, 0x0

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 515
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 516
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static receive(I[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x40

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1188
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1189
    const/4 v1, 0x6

    if-ne p0, v1, :cond_17

    .line 1190
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLan;->unpack([B)V

    .line 1296
    :cond_16
    :goto_16
    return-void

    .line 1191
    :cond_17
    if-ne p0, v2, :cond_5f

    .line 1192
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 1193
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->defOk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1195
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v2

    .line 1196
    :try_start_2a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x1000

    if-lt v3, v4, :cond_4b

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many textures"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v0

    .line 1197
    :cond_4b
    :try_start_4b
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_48

    goto :goto_16

    .line 1199
    :cond_5f
    if-ne p0, v3, :cond_130

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_130

    .line 1200
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1201
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1202
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1203
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

    .line 1204
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1205
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v3, 0x898

    if-le v2, v3, :cond_b0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_b0
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1207
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_d8

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

    .line 1208
    :cond_d8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_118

    .line 1209
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1210
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1211
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1212
    if-lez v2, :cond_12a

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v3

    if-gt v2, v3, :cond_12a

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    const/16 v4, 0x7d0

    if-gt v3, v4, :cond_12a

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    mul-int/lit8 v3, v3, 0xe

    if-lt v2, v3, :cond_12a

    new-array v2, v2, [B

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1214
    :cond_118
    :goto_118
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11b
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_12d

    .line 1215
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1216
    iget v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1212
    :cond_12a
    iput v6, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    goto :goto_118

    .line 1214
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v0

    .line 1217
    :cond_130
    const/16 v1, 0xc

    if-ne p0, v1, :cond_139

    .line 1218
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->style([B)V

    goto/16 :goto_16

    .line 1219
    :cond_139
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2a7

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_2a7

    .line 1220
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1221
    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    .line 1223
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 1224
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    .line 1225
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1ae

    .line 1226
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    .line 1227
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDmg:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->leanXp:J

    .line 1228
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanPvp:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanRound:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanHw:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanGw:I

    .line 1229
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    .line 1231
    :cond_1ae
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    .line 1232
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    iput-object v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDmg:F

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->leanXp:J

    iput-wide v4, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanPvp:Z

    iput-boolean v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanRound:I

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanHw:I

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanGw:I

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    .line 1233
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    iput-object v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    iput-boolean v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1234
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1235
    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v4, 0x898

    if-le v3, v4, :cond_1ee

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1236
    :cond_1ee
    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v5, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {v0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->read(Ljava/io/DataInputStream;IFF)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v3

    iput-object v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1237
    iget-object v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLanSync;->compact([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)I

    move-result v3

    iput v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1238
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_22b

    .line 1239
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1240
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1241
    if-lez v3, :cond_29b

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-gt v3, v4, :cond_29b

    const/16 v4, 0x7d0

    if-gt v2, v4, :cond_29b

    mul-int/lit8 v4, v2, 0xe

    if-lt v3, v4, :cond_29b

    new-array v3, v3, [B

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    .line 1244
    :cond_22b
    :goto_22b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1245
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->index([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1247
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_240
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_243
    .catchall {:try_start_240 .. :try_end_243} :catchall_2a1

    .line 1248
    if-eqz v0, :cond_284

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    if-eqz v2, :cond_284

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    iget-object v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_284

    iget-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_284

    .line 1249
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pair([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I[Lfr/testudo/spacecorsair/mod/ModLan$Rec;Ljava/util/HashMap;)V

    .line 1250
    const-wide/16 v2, 0x1e

    const-wide/16 v4, 0xfa

    iget-wide v6, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    iget-wide v8, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    .line 1251
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phx:F

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phy:F

    .line 1253
    :cond_284
    if-eqz v0, :cond_289

    const/4 v2, 0x0

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1254
    :cond_289
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_28c
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_28f
    .catchall {:try_start_28c .. :try_end_28f} :catchall_2a4

    .line 1255
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1256
    iget v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1242
    :cond_29b
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    goto :goto_22b

    .line 1247
    :catchall_2a1
    move-exception v0

    :try_start_2a2
    monitor-exit v2
    :try_end_2a3
    .catchall {:try_start_2a2 .. :try_end_2a3} :catchall_2a1

    throw v0

    .line 1254
    :catchall_2a4
    move-exception v0

    :try_start_2a5
    monitor-exit v2
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2a4

    throw v0

    .line 1257
    :cond_2a7
    const/4 v1, 0x3

    if-eq p0, v1, :cond_2ae

    const/16 v1, 0xb

    if-ne p0, v1, :cond_3e5

    :cond_2ae
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v2, :cond_3e5

    .line 1258
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$InState;-><init>()V

    .line 1259
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    .line 1260
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    .line 1261
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

    .line 1262
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

    .line 1264
    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x45bb8000    # 6000.0f

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x45bb8000    # 6000.0f

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    .line 1265
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const v3, 0x4c3ebc20    # 5.0E7f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_352

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_367

    :cond_352
    const v2, 0x4c3ebc20    # 5.0E7f

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1266
    :cond_367
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    .line 1267
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    .line 1268
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_385

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many ship records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_385
    const/16 v2, 0xb

    if-ne p0, v2, :cond_3d9

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v0, v2, v5, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->read(Ljava/io/DataInputStream;IFF)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->compact([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    .line 1271
    :goto_39b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3a8

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    .line 1272
    :cond_3a8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3c1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->solo:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->mission:Ljava/lang/String;

    .line 1273
    :cond_3c1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    .line 1274
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3ca
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v2
    :try_end_3cd
    .catchall {:try_start_3ca .. :try_end_3cd} :catchall_3e2

    .line 1275
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1276
    iget v0, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1270
    :cond_3d9
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    goto :goto_39b

    .line 1274
    :catchall_3e2
    move-exception v0

    :try_start_3e3
    monitor-exit v2
    :try_end_3e4
    .catchall {:try_start_3e3 .. :try_end_3e4} :catchall_3e2

    throw v0

    .line 1277
    :cond_3e5
    const/16 v1, 0x8

    if-ne p0, v1, :cond_460

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_460

    .line 1278
    array-length v1, p1

    const/16 v2, 0x100

    if-le v1, v2, :cond_3fa

    new-instance v0, Ljava/io/IOException;

    const-string v1, "kill too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_3fa
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1280
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_40b

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    .line 1281
    :cond_40b
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_41d

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_16

    .line 1282
    :cond_41d
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$Kill;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$Kill;-><init>()V

    .line 1283
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

    .line 1284
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_44b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_45a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45a
    monitor-exit v2

    goto/16 :goto_16

    :catchall_45d
    move-exception v0

    monitor-exit v2
    :try_end_45f
    .catchall {:try_start_44b .. :try_end_45f} :catchall_45d

    throw v0

    .line 1285
    :cond_460
    const/4 v1, 0x7

    if-ne p0, v1, :cond_48d

    .line 1286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1287
    array-length v1, p1

    const/16 v4, 0x200

    if-le v1, v4, :cond_474

    new-instance v0, Ljava/io/IOException;

    const-string v1, "chat too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_474
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-ltz v1, :cond_16

    .line 1289
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    .line 1290
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->onChat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1291
    :cond_48d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_16

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_16

    .line 1292
    array-length v0, p1

    const/16 v1, 0x1000

    if-le v0, v1, :cond_4a1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shot too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_4a1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4a4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x190

    if-ge v0, v2, :cond_4b3

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b3
    monitor-exit v1
    :try_end_4b4
    .catchall {:try_start_4a4 .. :try_end_4b4} :catchall_4bc

    .line 1294
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    goto/16 :goto_16

    .line 1293
    :catchall_4bc
    move-exception v0

    :try_start_4bd
    monitor-exit v1
    :try_end_4be
    .catchall {:try_start_4bd .. :try_end_4be} :catchall_4bc

    throw v0
.end method

.method private static refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 2

    .prologue
    .line 2378
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 2379
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 2380
    return-void
.end method

.method private static refl()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 907
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    if-eqz v1, :cond_6

    .line 919
    :goto_5
    return v0

    .line 909
    :cond_6
    :try_start_6
    const-class v0, Lfr/testudo/spacecorsair/display/RenderElement;

    .line 910
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

    .line 911
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

    .line 912
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

    .line 913
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

    .line 914
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

    .line 915
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_87} :catch_8b

    .line 919
    :goto_87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto/16 :goto_5

    .line 916
    :catch_8b
    move-exception v0

    .line 917
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto :goto_87
.end method

.method private static removeProxy()V
    .registers 2

    .prologue
    .line 1820
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1821
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1822
    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 1823
    :cond_e
    return-void
.end method

.method private static replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V
    .registers 25

    .prologue
    .line 1382
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1433
    :cond_8
    :goto_8
    return-void

    .line 1383
    :cond_9
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v16, v0

    .line 1384
    move-object/from16 v0, v16

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aget-object v17, v1, v2

    .line 1385
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 1386
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    rem-int/lit8 v18, v1, 0x3

    .line 1387
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

    .line 1388
    :cond_3f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v19, v1, v18

    .line 1389
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v20, v1, v18

    .line 1390
    const/4 v13, 0x0

    .line 1391
    const/4 v12, 0x0

    .line 1392
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

    .line 1393
    aget-object v11, p0, v15

    .line 1394
    aget-object v1, v17, v14

    .line 1395
    if-nez v1, :cond_6a

    .line 1429
    :cond_60
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_8

    .line 1430
    :catch_68
    move-exception v1

    goto :goto_8

    .line 1396
    :cond_6a
    aget-object v3, v20, v13

    .line 1397
    if-nez v3, :cond_75

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    aput-object v3, v20, v13

    .line 1398
    :cond_75
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    add-float v2, v2, p2

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    add-float v4, v4, p3

    invoke-virtual {v3, v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1399
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a0

    const/4 v10, 0x1

    .line 1400
    :goto_87
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v2, :cond_90

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_120

    .line 1401
    :cond_90
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->texFor(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 1402
    if-nez v4, :cond_a2

    move v3, v13

    move v4, v14

    .line 1392
    :goto_9a
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    move v13, v3

    move v14, v4

    goto :goto_4b

    .line 1399
    :cond_a0
    const/4 v10, 0x0

    goto :goto_87

    .line 1403
    :cond_a2
    aget-object v2, v19, v13

    .line 1404
    if-nez v2, :cond_ad

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v2, v19, v13

    .line 1405
    :cond_ad
    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 1406
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 1407
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 1408
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_116

    const/4 v4, 0x1

    :goto_ce
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 1409
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_118

    const/4 v4, 0x1

    :goto_d7
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 1410
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_11a

    const/4 v4, 0x1

    :goto_e0
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 1411
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11c

    .line 1412
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-nez v4, :cond_f1

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    .line 1413
    :cond_f1
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x0

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    aput v6, v4, v5

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x1

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    aput v6, v4, v5

    .line 1415
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

    .line 1426
    :goto_10f
    add-int/lit8 v4, v14, 0x1

    .line 1427
    add-int/lit8 v2, v13, 0x1

    move v12, v1

    move v3, v2

    goto :goto_9a

    .line 1408
    :cond_116
    const/4 v4, 0x0

    goto :goto_ce

    .line 1409
    :cond_118
    const/4 v4, 0x0

    goto :goto_d7

    .line 1410
    :cond_11a
    const/4 v4, 0x0

    goto :goto_e0

    .line 1414
    :cond_11c
    const/4 v4, 0x0

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    goto :goto_ff

    .line 1416
    :cond_120
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_147

    .line 1417
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    array-length v4, v4

    if-lt v2, v4, :cond_130

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1418
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

    .line 1419
    :cond_147
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_15d

    .line 1420
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

    .line 1421
    :cond_15d
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_176

    .line 1422
    add-int/lit8 v2, v12, 0x1

    move/from16 v0, v18

    invoke-static {v0, v12, v11}, Lfr/testudo/spacecorsair/mod/ModLan;->barFor(IILfr/testudo/spacecorsair/mod/ModLan$Rec;)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v4

    .line 1423
    if-nez v4, :cond_171

    move v12, v2

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1424
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
    .line 2436
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    return-void
.end method

.method private static report(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 2568
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Report player"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send a report about this player? It contains the chat of this game and what the anti-cheat checks counted. Nothing else."

    .line 2569
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    .line 2570
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$35;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$35;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    .line 2580
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2581
    return-void
.end method

.method private static resetTables()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 821
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->reset()V

    .line 822
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->slowAt:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->marksAt:J

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->slowLast:[B

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->leanDmg:F

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->leanXp:J

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    sput v5, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    .line 823
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_68

    .line 824
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_6b

    .line 825
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_3b
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_6e

    .line 826
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 827
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 828
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_61
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_71

    .line 829
    return-void

    .line 823
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    .line 824
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    .line 825
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 828
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method private static rollLoot(Lfr/testudo/spacecorsair/mod/ModLan$Kill;)V
    .registers 7

    .prologue
    .line 1140
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->cls:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1141
    if-nez v0, :cond_9

    .line 1154
    :cond_8
    :goto_8
    return-void

    .line 1142
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x11

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1143
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

    .line 1144
    if-eqz v0, :cond_8

    .line 1145
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->elite:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1146
    :cond_38
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1147
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1148
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->GenerateLoots(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/Element;)V

    .line 1149
    :cond_52
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drops(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 1150
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_8

    .line 1151
    :catch_5c
    move-exception v0

    .line 1152
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

    .line 2371
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_92

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    :goto_c
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v2, :cond_96

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2372
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

    .line 2373
    if-eqz p1, :cond_a2

    move v5, v3

    :goto_58
    if-eqz p1, :cond_a4

    :goto_5a
    if-eqz p1, :cond_a9

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2372
    :goto_5e
    invoke-static {p0, v6, v5, v4, v2}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 2374
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

    .line 2375
    return-void

    .line 2371
    :cond_92
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    goto/16 :goto_c

    :cond_96
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    goto/16 :goto_12

    .line 2372
    :cond_9a
    const-string v2, "ROUND LOST"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1f

    :cond_a2
    move v5, v4

    .line 2373
    goto :goto_58

    :cond_a4
    const v2, 0x3ecccccd    # 0.4f

    move v4, v2

    goto :goto_5a

    :cond_a9
    move v2, v3

    goto :goto_5e

    .line 2374
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

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 411
    :try_start_6
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_c} :catch_120
    .catchall {:try_start_6 .. :try_end_c} :catchall_110

    .line 412
    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 413
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 414
    new-instance v1, Ljava/net/InetSocketAddress;

    const v3, 0x9089

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 415
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p0

    add-long/2addr v4, v6

    .line 417
    const/16 v1, 0x100

    new-array v3, v1, [B

    .line 418
    :cond_2e
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_10a

    .line 419
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v1, v3, v6}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_3c} :catch_e6
    .catchall {:try_start_d .. :try_end_3c} :catchall_11c

    .line 420
    :try_start_3c
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3c .. :try_end_3f} :catch_119
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_e6
    .catchall {:try_start_3c .. :try_end_3f} :catchall_11c

    .line 421
    :try_start_3f
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 422
    const-string v7, "SCLAN2|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 423
    const-string v7, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 424
    array-length v7, v6

    const/4 v8, 0x6

    if-lt v7, v8, :cond_2e

    .line 425
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

    .line 426
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

    .line 427
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

    .line 428
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_e4} :catch_e6
    .catchall {:try_start_3f .. :try_end_e4} :catchall_11c

    goto/16 :goto_2e

    .line 430
    :catch_e6
    move-exception v1

    .line 433
    :goto_e7
    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 435
    :cond_ec
    :goto_ec
    return-object v2

    .line 426
    :cond_ed
    :try_start_ed
    const-string v1, ""

    goto :goto_ba

    .line 427
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

    .line 433
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

    .line 434
    :cond_118
    throw v2

    .line 420
    :catch_119
    move-exception v1

    goto/16 :goto_2e

    .line 433
    :catchall_11c
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_113

    .line 430
    :catch_120
    move-exception v0

    move-object v0, v1

    goto :goto_e7
.end method

.method static sendChat(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 311
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v1, :cond_13

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_14

    .line 319
    :cond_13
    :goto_13
    return v0

    .line 312
    :cond_14
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    .line 314
    :try_start_16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x78

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 316
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_2f

    .line 317
    const/4 v0, 0x1

    goto :goto_13

    .line 318
    :catch_2f
    move-exception v1

    goto :goto_13
.end method

.method private static sendLatest(ILjava/io/ByteArrayOutputStream;)V
    .registers 5

    .prologue
    const/high16 v2, 0x40000

    .line 745
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    .line 746
    array-length v1, v0

    add-int/lit8 v1, v1, -0x5

    if-gt v1, v2, :cond_15

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-le v1, v2, :cond_1c

    :cond_15
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 748
    :goto_1b
    return-void

    .line 747
    :cond_1c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1f
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_1b

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private static sendReliable(ILjava/io/ByteArrayOutputStream;)V
    .registers 5

    .prologue
    .line 740
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->frameBytes(ILjava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 741
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 742
    return-void

    .line 741
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
    .line 2268
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    .line 2269
    if-nez p0, :cond_7

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2270
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

    .line 2271
    return-void
.end method

.method static setSolo(Z)V
    .registers 4

    .prologue
    .line 1565
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-ne v0, p0, :cond_5

    .line 1569
    :goto_4
    return-void

    .line 1566
    :cond_5
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 1567
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    .line 1568
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
    .line 2015
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
    .line 2013
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

    .line 1764
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

    .line 1774
    :cond_14
    :goto_14
    return-object v0

    .line 1765
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

    .line 1768
    :cond_26
    const/4 v0, 0x0

    :try_start_27
    const-class v2, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1769
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

    .line 1773
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

    .line 1770
    :catch_5c
    move-exception v0

    move-object v0, v1

    .line 1771
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
    .line 2425
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

    .line 2046
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2047
    if-eqz v0, :cond_c

    .line 2066
    :goto_b
    return-object v0

    .line 2048
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 2049
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

    .line 2050
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2052
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2053
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$11;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$11;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2054
    array-length v5, v4

    move v0, v1

    :goto_47
    if-ge v0, v5, :cond_2d

    aget-object v6, v4, v0

    .line 2055
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 2056
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

    .line 2054
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 2057
    :cond_6a
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->SKIP:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 2058
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 2059
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_84

    const-class v8, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v7, v8, :cond_67

    .line 2060
    :cond_84
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2061
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 2064
    :cond_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2065
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

    .line 1781
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v1, :cond_11

    .line 1788
    :cond_10
    :goto_10
    return v0

    .line 1782
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

    .line 1783
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, p2

    .line 1784
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const v2, 0x4a095440    # 2250000.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_10

    .line 1785
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_75

    iput v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 1786
    :cond_75
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_83

    iput v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1787
    :cond_83
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_91

    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1788
    :cond_91
    const/4 v0, 0x1

    goto/16 :goto_10
.end method

.method static showMenu(Landroid/app/Activity;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2459
    :try_start_2
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 2460
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_18

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    if-eqz v1, :cond_18

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-nez v1, :cond_18

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2559
    :goto_17
    return-void

    .line 2461
    :cond_18
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$12;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModLan$12;-><init>(Landroid/app/Activity;)V

    .line 2462
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->hasProfile()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_17

    .line 2556
    :catch_27
    move-exception v0

    goto :goto_17

    .line 2463
    :cond_29
    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2464
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_187

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_187

    .line 2465
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

    .line 2466
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_161

    const-string v2, "ON"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PvP duel: both ships go to the old multiplayer bay and fight rounds. A ship stops at 1 hull and loses the round; nobody dies or pays a death fee. Undock to start."

    .line 2467
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2468
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v2, :cond_169

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

    :goto_cd
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2469
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->netLines()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2470
    const/4 v2, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2471
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v5, :cond_16d

    const-string v5, "PvP: ON (tap to turn off)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_fa
    aput-object v5, v4, v6

    const/4 v6, 0x1

    .line 2472
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v5, :cond_174

    move-object v5, v0

    :goto_102
    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "Kick player"

    .line 2473
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v6, :cond_118

    const-string v0, "Report player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_118
    aput-object v0, v4, v5

    const/4 v0, 0x4

    const-string v5, "Disconnect"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "Close"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

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

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$16;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$17;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$17;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x5

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2470
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2466
    :cond_161
    const-string v2, "OFF"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_84

    .line 2468
    :cond_169
    const-string v2, ""

    goto/16 :goto_cd

    .line 2471
    :cond_16d
    const-string v5, "PvP: OFF (tap to turn on)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_fa

    .line 2472
    :cond_174
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v5, :cond_17f

    const-string v5, "End duel"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_102

    :cond_17f
    const-string v5, "PvP duel"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_102

    .line 2482
    :cond_187
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_26a

    .line 2483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You joined the game of"

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

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "You follow the host between sectors."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2484
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v2, :cond_260

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

    :goto_1ed
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2485
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->netLines()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2486
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2487
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v5, :cond_263

    const-string v5, "Follow the host"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_21a
    aput-object v5, v4, v6

    const/4 v5, 0x1

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v6, :cond_227

    const-string v0, "Report player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_227
    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "Disconnect"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "Close"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$18;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$18;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$19;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$19;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$20;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$20;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2486
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2484
    :cond_260
    const-string v2, ""

    goto :goto_1ed

    .line 2487
    :cond_263
    const-string v5, "Fly my own missions"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_21a

    .line 2494
    :cond_26a
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_34b

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_34b

    .line 2495
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 2496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_335

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    :goto_283
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2497
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_341

    .line 2499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Game code:"

    .line 2497
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2498
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v2, :cond_339

    const-string v2, "Public game: listed for everyone, and anyone with the code can join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2bd
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "You accept or decline each player."

    .line 2499
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2d5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2500
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2501
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2ef

    const-string v0, "Share code"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2ef
    aput-object v0, v4, v5

    const/4 v5, 0x1

    .line 2502
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_344

    const-string v0, "PvP: ON (tap to turn off)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2fc
    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "Stop hosting"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "Close"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModLan$21;

    invoke-direct {v7, v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$21;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    aput-object v7, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$22;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$22;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$23;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$23;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2500
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2496
    :cond_335
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto/16 :goto_283

    .line 2498
    :cond_339
    const-string v2, "Private game: only players with the code can join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2bd

    .line 2499
    :cond_341
    const-string v2, ""

    goto :goto_2d5

    .line 2502
    :cond_344
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2fc

    .line 2516
    :cond_34b
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_3c3

    .line 2517
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

    .line 2518
    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2519
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_3bc

    const-string v0, "PvP: ON (tap to turn off)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38b
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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$24;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$24;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$25;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$25;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2518
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2519
    :cond_3bc
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38b

    .line 2526
    :cond_3c3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_541

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 2527
    :goto_3cd
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v6

    .line 2528
    if-eqz v6, :cond_3fc

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v2

    if-nez v2, :cond_3fc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_545

    const-string v2, "\n\n"

    :goto_3ea
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2529
    :cond_3fc
    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->profileRow(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Local game (same Wi-Fi)"

    .line 2530
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Play with someone on the same Wi-Fi or phone hotspot. No internet needed. Hosts on your network appear here automatically."

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "Host local game"

    .line 2531
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "Find local games"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "Join by address"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Public games (internet)"

    .line 2532
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Play with anyone over the internet. Public games show up here for everyone; tap Join to enter. Private games are hidden and need the 4-character code. Uses mobile data or Wi-Fi."

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v7, 0x5

    .line 2533
    if-eqz v6, :cond_549

    move-object v5, v0

    :goto_47b
    aput-object v5, v4, v7

    const/4 v7, 0x6

    .line 2534
    if-eqz v6, :cond_551

    const-string v5, "Find public games"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_486
    aput-object v5, v4, v7

    const/4 v7, 0x7

    .line 2535
    if-eqz v6, :cond_554

    const-string v5, "Host public game"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_491
    aput-object v5, v4, v7

    const/16 v7, 0x8

    .line 2536
    if-eqz v6, :cond_557

    const-string v5, "Host private game (code only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_49d
    aput-object v5, v4, v7

    const/16 v7, 0x9

    .line 2537
    if-eqz v6, :cond_55a

    const-string v5, "Join by code"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4a9
    aput-object v5, v4, v7

    const/16 v7, 0xa

    .line 2538
    if-eqz v6, :cond_565

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v5

    if-eqz v5, :cond_55d

    const-string v5, "Hide my IP: ON (relay only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4bb
    aput-object v5, v4, v7

    const/16 v5, 0xb

    .line 2539
    if-eqz v6, :cond_4cd

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->saverPref()Z

    move-result v0

    if-eqz v0, :cond_568

    const-string v0, "Data saver: ON"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4cd
    :goto_4cd
    aput-object v0, v4, v5

    const/16 v0, 0xc

    const-string v5, "Close"

    .line 2540
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xd

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$26;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$26;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$27;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$27;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$28;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$28;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

    aput-object v6, v5, v0

    const/4 v0, 0x6

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$29;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$29;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x7

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$30;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$30;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0x8

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$31;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$31;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0x9

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$32;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$32;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xa

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$33;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$33;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xb

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$34;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$34;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xc

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2529
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2526
    :cond_541
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto/16 :goto_3cd

    .line 2528
    :cond_545
    const-string v2, ""

    goto/16 :goto_3ea

    .line 2533
    :cond_549
    const-string v5, "Not available yet in this version"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_47b

    :cond_551
    move-object v5, v0

    .line 2534
    goto/16 :goto_486

    :cond_554
    move-object v5, v0

    .line 2535
    goto/16 :goto_491

    :cond_557
    move-object v5, v0

    .line 2536
    goto/16 :goto_49d

    :cond_55a
    move-object v5, v0

    .line 2537
    goto/16 :goto_4a9

    .line 2538
    :cond_55d
    const-string v5, "Hide my IP: OFF"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4bb

    :cond_565
    move-object v5, v0

    goto/16 :goto_4bb

    .line 2539
    :cond_568
    const-string v0, "Data saver: AUTO (on with mobile data or relay)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_56d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_56d} :catch_27

    move-result-object v0

    goto/16 :goto_4cd
.end method

.method static skipRange(II)V
    .registers 5

    .prologue
    .line 1165
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

    .line 1166
    :cond_1f
    return-void
.end method

.method private static skipped(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1169
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

    .line 1170
    :cond_15
    return v1

    .line 1169
    :cond_16
    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private static spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1793
    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1794
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v0, v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 1795
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 1796
    const/4 v2, 0x1

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    .line 1797
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 1798
    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 1799
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

    .line 1800
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1801
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1802
    const/4 v0, 0x0

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->drawLifeBar:Z

    .line 1803
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1804
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1805
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1806
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 1807
    const-string v0, "CO-OP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 1808
    const/4 v0, -0x1

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 1809
    const/4 v0, 0x0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 1810
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1811
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 1812
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1813
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

    .line 1817
    :goto_a3
    return-void

    .line 1814
    :catch_a4
    move-exception v0

    .line 1815
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_a3
.end method

.method static stop()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 696
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 697
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 698
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 699
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 700
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 701
    sput v5, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 702
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 703
    const-string v3, ""

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 704
    if-eqz v0, :cond_2a

    .line 705
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$9;

    invoke-direct {v4, v2, v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan$9;-><init>(ZLjava/util/concurrent/locks/ReentrantLock;Ljava/net/Socket;)V

    const-string v0, "lan-bye"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 721
    :cond_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_33

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_33} :catch_73

    .line 722
    :cond_33
    :goto_33
    :try_start_33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3c} :catch_71

    .line 723
    :cond_3c
    :goto_3c
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 724
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    .line 725
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_6e

    .line 726
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    .line 727
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 728
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 729
    sput v5, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 730
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 731
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 732
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 733
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 734
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 735
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 736
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->clearChat()V

    .line 737
    return-void

    .line 725
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 722
    :catch_71
    move-exception v0

    goto :goto_3c

    .line 721
    :catch_73
    move-exception v0

    goto :goto_33
.end method

.method private static testSwitch(J)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1578
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 1589
    :cond_b
    :goto_b
    return-void

    .line 1579
    :cond_c
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    .line 1580
    const-string v0, "corsair_lan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1582
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    .line 1583
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

    .line 1584
    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    goto :goto_b

    .line 1585
    :cond_46
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_b

    .line 1586
    :cond_52
    const-string v1, "duel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1587
    :cond_60
    const-string v1, "duel-off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1588
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

    .line 875
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v3

    .line 876
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 877
    if-eqz v0, :cond_14

    monitor-exit v3

    .line 898
    :goto_13
    return-object v0

    .line 878
    :cond_14
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 879
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2c

    :cond_29
    monitor-exit v3

    move-object v0, v2

    goto :goto_13

    .line 880
    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 881
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4b

    move-result-object v1

    .line 883
    const/16 v5, 0x4c

    if-ne v4, v5, :cond_4e

    :try_start_3a
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_aa
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4b

    move-result-object v0

    .line 897
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_49

    :try_start_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    :cond_49
    monitor-exit v3

    goto :goto_13

    .line 899
    :catchall_4b
    move-exception v0

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v0

    .line 884
    :cond_4e
    const/16 v5, 0x4d

    if-ne v4, v5, :cond_57

    :try_start_52
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    goto :goto_3e

    .line 885
    :cond_57
    const/16 v5, 0x52

    if-ne v4, v5, :cond_3e

    .line 886
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texByRes:Ljava/lang/reflect/Method;

    if-nez v0, :cond_91

    .line 887
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "textureLibrary"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 888
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 889
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texLib:Ljava/lang/Object;

    .line 890
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

    .line 892
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

    .line 894
    :catch_aa
    move-exception v0

    move-object v0, v2

    .line 895
    goto :goto_3e
.end method

.method private static texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 833
    if-nez p0, :cond_4

    .line 844
    :cond_3
    :goto_3
    return-object v1

    .line 834
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 835
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    move-object v0, v1

    :cond_15
    move-object v1, v0

    goto :goto_3

    .line 836
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

    .line 843
    :goto_33
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 838
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->nameOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v0

    .line 839
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

    .line 840
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

    .line 841
    :cond_74
    const-string v0, ""

    goto :goto_33
.end method

.method private static tryRejoin(Ljava/lang/String;J)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 664
    const/4 v3, 0x0

    .line 666
    :try_start_3
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_96

    .line 667
    :try_start_8
    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v3, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x9c4

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 668
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 669
    const-string v4, "SCLAN2"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 670
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 672
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 673
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 674
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 675
    if-nez v4, :cond_5b

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_6d

    .line 676
    :cond_5b
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 677
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_6c

    const-string v3, "Co-op link lost"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 690
    :cond_6c
    :goto_6c
    return v0

    .line 680
    :cond_6d
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 681
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 682
    const/4 v3, 0x2

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 683
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 684
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 685
    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V

    .line 686
    const-string v3, "lan"

    const-string v4, "reconnected"

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8a} :catch_8b

    goto :goto_6c

    .line 688
    :catch_8b
    move-exception v0

    move-object v0, v2

    .line 689
    :goto_8d
    if-eqz v0, :cond_92

    :try_start_8f
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_94

    :cond_92
    :goto_92
    move v0, v1

    .line 690
    goto :goto_6c

    .line 689
    :catch_94
    move-exception v0

    goto :goto_92

    .line 688
    :catch_96
    move-exception v0

    move-object v0, v3

    goto :goto_8d
.end method

.method private static typeCode(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2623
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2624
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2625
    const-string v1, "ABCD"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2626
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    new-instance v2, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v2}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2627
    const v1, 0x81001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 2628
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Join by code"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Type the 4-character code your friend sees on the host screen."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2629
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Join"

    .line 2630
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$37;

    invoke-direct {v3, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$37;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    .line 2632
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2633
    return-void
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

    .line 787
    array-length v0, p0

    if-ge v0, v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "short packed message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_e
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 789
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

    .line 790
    if-eq v0, v3, :cond_3a

    if-eq v0, v4, :cond_3a

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3a

    const/16 v2, 0xb

    if-ne v0, v2, :cond_40

    :cond_3a
    if-ltz v1, :cond_40

    const/high16 v2, 0x40000

    if-le v1, v2, :cond_48

    :cond_40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_48
    new-array v2, v1, [B

    .line 792
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 794
    const/4 v4, 0x5

    :try_start_50
    array-length v5, p0

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 795
    invoke-virtual {v3, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .line 796
    if-ne v4, v1, :cond_62

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_78

    :cond_62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6a
    .catch Ljava/util/zip/DataFormatException; {:try_start_50 .. :try_end_6a} :catch_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_73

    .line 797
    :catch_6a
    move-exception v0

    .line 798
    :try_start_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_73

    .line 800
    :catchall_73
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 801
    throw v0

    .line 800
    :cond_78
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 802
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V

    .line 803
    return-void
.end method

.method private static viewHalfH()F
    .registers 1

    .prologue
    .line 2109
    const-string v0, "yDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static viewHalfW()F
    .registers 1

    .prologue
    .line 2107
    const-string v0, "xDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static violation(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 401
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

    .line 402
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v3, :cond_21

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->kick()V

    .line 404
    :goto_20
    return-void

    .line 403
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
    .line 2070
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2071
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2084
    :cond_f
    :goto_f
    return-void

    .line 2072
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_f

    .line 2073
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_f

    .line 2074
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_f

    .line 2075
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_f

    .line 2076
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_f

    .line 2077
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_f

    .line 2078
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_f

    .line 2079
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2080
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2081
    if-eqz v0, :cond_81

    const/4 v1, 0x1

    :goto_71
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2082
    if-eqz v0, :cond_f

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_f

    .line 2081
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
    .line 2438
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->writeField(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method
