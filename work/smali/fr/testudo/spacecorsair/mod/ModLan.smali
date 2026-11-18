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

.field private static final BADCODE:I = 0x4

.field private static final DECLINED:I = 0x1

.field static final DECL_WAIT_MS:J = 0x2710L

.field static final DOOM_GAP_MS:J = 0x3a98L

.field static final DOOM_ORIGIN:F = 2000.0f

.field static final DOOM_TICKS_S:I = 0x6

.field static final DOOM_TICKS_SHOT:I = 0x50

.field static final DRONE_GAP_MS:J = 0x3a98L

.field static final DUEL_END_MS:J = 0xbb8L

.field static final FAR_FX:F = 1100.0f

.field static final FAR_FX_SIZE:F = 400.0f

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

.field private static final MSG_DECL:I = 0xd

.field private static final MSG_DEF:I = 0x1

.field private static final MSG_DOOM:I = 0xf

.field private static final MSG_DRONE:I = 0xe

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

.field private static askAt:J

.field private static volatile askId:I

.field private static volatile autoAccept:Z

.field private static final badCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private static final barCol:[I

.field private static final barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

.field private static beacon:Ljava/net/DatagramSocket;

.field private static beaconT:Ljava/lang/Thread;

.field private static volatile beganAt:J

.field private static volatile byeSeen:Z

.field static volatile bytesIn:J

.field static volatile bytesOut:J

.field private static capAt:J

.field private static chatAt:J

.field private static volatile chatIn:J

.field private static clampAt:J

.field static volatile clamped:J

.field static volatile connected:Z

.field private static volatile decision:I

.field private static declAt:J

.field private static declSent:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

.field private static declSentAt:J

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

.field private static devGearAt:J

.field private static dmgBase:F

.field private static final dmgFieldCache:Ljava/util/HashMap;
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

.field private static dmgRoom:F

.field private static dmgSeen:F

.field private static dmgSent:F

.field private static doomInSec:I

.field private static doomSec:J

.field private static doomShotAt:J

.field private static doomShotId:I

.field private static doomTicksShot:I

.field private static droneLaunchAt:J

.field private static volatile dropProxy:Z

.field private static duelEndAt:J

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

.field static volatile exitReload:Z

.field private static volatile exitReloadAt:J

.field static volatile extra:Z

.field private static extraAt:J

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

.field private static volatile firstStateAt:J

.field static volatile flags:I

.field private static fx:Ljava/lang/reflect/Field;

.field static volatile fxDropped:J

.field private static fy:Ljava/lang/reflect/Field;

.field private static final gDroneLeft:[I

.field private static gDroneRetarget:I

.field private static final gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field static volatile gotFrames:I

.field static guestWins:I

.field static hostWins:I

.field private static volatile hullFlagged:Z

.field private static idleAt:J

.field private static final inDooms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final inDrones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

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

.field static volatile lanCode:Ljava/lang/String;

.field static volatile lanPub:Z

.field private static volatile lastAct:Landroid/app/Activity;

.field private static volatile lastAddr:Ljava/lang/String;

.field private static volatile lastCode:Ljava/lang/String;

.field static volatile lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

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

.field private static volatile limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

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

.field static volatile needCode:Ljava/lang/String;

.field private static volatile netJoinId:Ljava/lang/String;

.field private static volatile netPeerId:Ljava/lang/String;

.field private static noDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

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

.field private static posArmed:Z

.field private static posAt:J

.field private static posLive:Z

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

.field private static roundAt:J

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

.field static volatile soloReload:Z

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

.field private static xpLastLevel:I

.field private static xpLastNext:J

.field private static xpRoom:F

.field private static xpSeen:J

.field private static xpSent:J

.field private static zBuf:[B

.field private static final zOut:Ljava/util/zip/Deflater;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 94
    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 101
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    .line 124
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    .line 125
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    .line 129
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastCode:Ljava/lang/String;

    .line 290
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    .line 398
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 399
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 836
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, v5}, Ljava/util/zip/Deflater;-><init>(I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    .line 837
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 899
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    .line 900
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    .line 901
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    .line 902
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    .line 1124
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1128
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    .line 1176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    .line 1184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    .line 1188
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    .line 1189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    .line 1247
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    .line 1493
    new-array v0, v3, [[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1495
    new-array v0, v3, [[Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1496
    invoke-static {}, Lfr/testudo/spacecorsair/textengine/TextSize;->values()[Lfr/testudo/spacecorsair/textengine/TextSize;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1555
    const/16 v0, 0x60

    filled-new-array {v3, v0}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 1609
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->values()[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 1610
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1797
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    .line 1804
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 1805
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 1806
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 1962
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    .line 2019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    .line 2171
    const/high16 v0, -0x80000000

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    .line 2174
    new-array v0, v6, [Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2175
    new-array v0, v6, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneLeft:[I

    .line 2322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    .line 2488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    .line 2489
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "removed"

    aput-object v2, v1, v7

    const-string v2, "isPlayer"

    aput-object v2, v1, v5

    const-string v2, "objectId"

    aput-object v2, v1, v6

    const-string v2, "collisionGraceEnd"

    aput-object v2, v1, v3

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

    .line 2648
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2655
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2771
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 90
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
    .line 1007
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1008
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1009
    return-object v0
.end method

.method private static acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 440
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

    .line 441
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$5;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$5;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Decline"

    .line 442
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$4;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$4;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_51} :catch_52

    .line 447
    :goto_51
    return-void

    .line 444
    :catch_52
    move-exception v0

    goto :goto_51
.end method

.method static acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    :try_start_2
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 247
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v4, v0, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v4, :cond_12

    :cond_10
    move v0, v1

    .line 254
    :goto_11
    return v0

    .line 248
    :cond_12
    if-nez p1, :cond_16

    const-string p1, ""

    :cond_16
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    .line 249
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;J)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_26

    :cond_24
    move v0, v1

    goto :goto_11

    .line 250
    :cond_26
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 251
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 253
    :catch_2e
    move-exception v0

    move v0, v1

    .line 254
    goto :goto_11
.end method

.method static synthetic access$002(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .registers 1

    .prologue
    .line 89
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 89
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
    .line 89
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300()[B
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    return-object v0
.end method

.method static synthetic access$1302([B)[B
    .registers 1

    .prologue
    .line 89
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    return-object p0
.end method

.method static synthetic access$1400(Ljava/lang/String;J)Z
    .registers 4

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->tryRejoin(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Z
    .registers 1

    .prologue
    .line 89
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->report(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1700()V
    .registers 0

    .prologue
    .line 89
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->shareCode(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->findHosts(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Ljava/net/Socket;J)Z
    .registers 4

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/app/Activity;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 89
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->publicList(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->typeCode(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->privacy(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2400()I
    .registers 1

    .prologue
    .line 89
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    return v0
.end method

.method static synthetic access$2500(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->joinCode(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->askCode(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->connectTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 89
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Throwable;)V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$502(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .registers 1

    .prologue
    .line 89
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$600(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 89
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1

    .prologue
    .line 89
    sput p0, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    return p0
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 89
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .prologue
    .line 89
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
    .line 2467
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 2485
    :cond_8
    :goto_8
    return-void

    .line 2469
    :cond_9
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2470
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2471
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

    .line 2482
    :catch_2f
    move-exception v0

    goto :goto_8

    .line 2472
    :cond_31
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_11

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v1, :cond_11

    .line 2473
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 2474
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v1, v2, :cond_11

    .line 2475
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2476
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2477
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2478
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

    .line 2479
    :cond_68
    const/4 v0, 0x4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 2480
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

    .line 2753
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v3, v1, :cond_11

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_11

    if-nez p0, :cond_12

    .line 2761
    :cond_11
    :goto_11
    return v2

    .line 2754
    :cond_12
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2755
    if-eqz v4, :cond_11

    .line 2756
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2757
    if-eqz v3, :cond_11

    .line 2758
    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    add-float/2addr v5, v6

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    add-float/2addr v6, v3

    .line 2759
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 2760
    if-eqz v7, :cond_55

    iget v3, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v8

    :goto_29
    if-eqz v7, :cond_2e

    iget v0, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v0, v8

    .line 2761
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

    .line 2760
    goto :goto_29

    :cond_57
    move v0, v2

    .line 2761
    goto :goto_53
.end method

.method static arenaLevel(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2966
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

    .line 2978
    :goto_16
    return-object v0

    .line 2968
    :cond_17
    :try_start_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2969
    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 2970
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2971
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 2972
    const v3, 0x7f06002d

    iput v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 2973
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 2974
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

    .line 2976
    :catch_57
    move-exception v0

    .line 2977
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

    .line 2978
    goto :goto_16
.end method

.method private static askAccept(Ljava/lang/String;J)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 413
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    .line 414
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 415
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 417
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->activity()Landroid/app/Activity;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_18
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 420
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

    .line 424
    :cond_2a
    :goto_2a
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    .line 427
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

    .line 428
    :catch_4b
    move-exception v2

    .line 431
    :cond_4c
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 432
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

    .line 421
    :catch_5c
    move-exception v2

    goto :goto_2a
.end method

.method private static askCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3250
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$48;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan$48;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 3251
    return-void
.end method

.method static askDrones(I)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 2180
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v1, :cond_b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2190
    :cond_b
    :goto_b
    return v0

    .line 2181
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2182
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_22

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3a98

    cmp-long v1, v4, v6

    if-ltz v1, :cond_b

    .line 2183
    :cond_22
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    .line 2185
    :try_start_24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2186
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2187
    const/16 v2, 0xe

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_41} :catch_43

    .line 2188
    const/4 v0, 0x1

    goto :goto_b

    .line 2189
    :catch_43
    move-exception v1

    goto :goto_b
.end method

.method static autoAcceptForTest()V
    .registers 1

    .prologue
    .line 2989
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static b255(F)I
    .registers 3

    .prologue
    .line 1022
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    .line 1023
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
    .line 2036
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
    .line 1559
    const/16 v0, 0x60

    if-lt p1, v0, :cond_6

    const/4 v0, 0x0

    .line 1567
    :cond_5
    :goto_5
    return-object v0

    .line 1560
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    .line 1561
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

    .line 1562
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

    .line 1564
    :cond_50
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 1565
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xa:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xr:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xg:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xb:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 1566
    iget v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->pourcentageValue:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    goto :goto_5
.end method

.method public static beforeSwap(Lfr/testudo/spacecorsair/engine/RenderQueue;)V
    .registers 23

    .prologue
    .line 2572
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_5

    .line 2646
    :cond_4
    :goto_4
    return-void

    .line 2574
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2575
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

    .line 2576
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastSendMs:J

    .line 2577
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2578
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 2579
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v2, :cond_4

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v2, :cond_4

    .line 2580
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2581
    if-eqz v4, :cond_4

    .line 2582
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_17b

    .line 2583
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_4

    .line 2584
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v13, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2585
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2586
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2587
    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_bb

    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_67
    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2588
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2589
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2590
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 2591
    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 2592
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-ltz v10, :cond_a3

    .line 2593
    iget v10, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sget v11, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastLevel:I

    if-ne v10, v11, :cond_be

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    cmp-long v10, v8, v10

    if-lez v10, :cond_be

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sget-wide v16, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    sub-long v16, v8, v16

    add-long v10, v10, v16

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    .line 2597
    :cond_a3
    :goto_a3
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2598
    iget v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastLevel:I

    .line 2599
    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastNext:J

    .line 2600
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v2, :cond_eb

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModLan;->leanHost(Lfr/testudo/spacecorsair/engine/RenderQueue;ILfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;J)V

    goto/16 :goto_4

    .line 2643
    :catch_b8
    move-exception v2

    goto/16 :goto_4

    .line 2587
    :cond_bb
    const-string v2, ""

    goto :goto_67

    .line 2594
    :cond_be
    iget v10, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sget v11, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastLevel:I

    add-int/lit8 v11, v11, 0x1

    if-ne v10, v11, :cond_a3

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastNext:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-lez v10, :cond_a3

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    const-wide/16 v16, 0x0

    sget-wide v18, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastNext:J

    sget-wide v20, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    sub-long v18, v18, v20

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    add-long v16, v16, v18

    add-long v10, v10, v16

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    goto :goto_a3

    .line 2601
    :cond_eb
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v14, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2602
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2603
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2604
    const/4 v5, 0x0

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    if-gez v4, :cond_162

    const/4 v7, 0x0

    :goto_103
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    if-gez v4, :cond_165

    const/4 v8, 0x0

    :goto_108
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x898

    move-object/from16 v4, p0

    move v6, v3

    invoke-static/range {v4 .. v12}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v3

    .line 2605
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2606
    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2607
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2608
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2609
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2610
    if-nez v4, :cond_168

    const/4 v2, 0x0

    move v3, v2

    .line 2611
    :goto_141
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-nez v3, :cond_177

    const/4 v2, 0x0

    :goto_147
    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lez v3, :cond_153

    const/4 v2, 0x2

    array-length v3, v4

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v14, v4, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2612
    :cond_153
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 2613
    const/4 v2, 0x2

    invoke-static {v2, v13}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2614
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2604
    :cond_162
    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    goto :goto_103

    :cond_165
    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    goto :goto_108

    .line 2610
    :cond_168
    const/4 v2, 0x0

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v3, v2

    goto :goto_141

    .line 2611
    :cond_177
    array-length v2, v4

    add-int/lit8 v2, v2, -0x2

    goto :goto_147

    .line 2615
    :cond_17b
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2616
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2617
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2618
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v8, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2619
    iget-boolean v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_293

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_293

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_293

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v2, :cond_293

    const/4 v2, 0x1

    move v3, v2

    .line 2620
    :goto_1ad
    sget-boolean v18, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    .line 2621
    if-eqz v18, :cond_1bf

    if-nez v3, :cond_1bf

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1f4

    cmp-long v2, v10, v12

    if-ltz v2, :cond_4

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2622
    :cond_1bf
    if-eqz v18, :cond_1c4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2623
    :cond_1c4
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2624
    iget-object v2, v8, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_297

    iget-object v2, v8, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_1d1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2625
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2626
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2627
    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2628
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfW()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfH()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2629
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2630
    new-instance v15, Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2631
    const/4 v2, 0x0

    .line 2632
    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-ltz v8, :cond_256

    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sget v9, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-le v8, v9, :cond_256

    if-nez v3, :cond_240

    if-nez v18, :cond_256

    :cond_240
    sget v9, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sget v10, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v14, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v16, 0xc8

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v16}, Lfr/testudo/spacecorsair/mod/ModLan;->capture(Lfr/testudo/spacecorsair/engine/RenderQueue;IIIIFFLjava/io/DataOutputStream;I)I

    move-result v2

    .line 2633
    :cond_256
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2634
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2635
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2636
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2637
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 2638
    if-eqz v18, :cond_281

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2639
    :cond_281
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->declare(J)V

    .line 2640
    if-eqz v18, :cond_29b

    const/16 v2, 0xb

    :goto_288
    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2641
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2619
    :cond_293
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1ad

    .line 2624
    :cond_297
    const-string v2, ""
    :try_end_299
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_299} :catch_b8

    goto/16 :goto_1d1

    .line 2640
    :cond_29b
    const/4 v2, 0x3

    goto :goto_288
.end method

.method private static begin(Ljava/net/Socket;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x10000

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 594
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 595
    const v2, 0x8000

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 596
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 597
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 598
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 599
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 600
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 601
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    .line 602
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    .line 603
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->beganAt:J

    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->hullFlagged:Z

    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->declSent:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->declSentAt:J

    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->reset()V

    .line 604
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-nez v2, :cond_49

    const-string v2, "corsair_lean"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    :cond_49
    move v0, v1

    :cond_4a
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    .line 605
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 606
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_51
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_dc

    .line 607
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->resetTables()V

    .line 608
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 609
    const-string v0, "Co-op connected"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 610
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

    .line 611
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->announce:Z

    .line 612
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 613
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 614
    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_b4

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    move-object v6, p0

    .line 615
    :cond_b4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$6;

    invoke-direct {v2, p1, p2, v6, v0}, Lfr/testudo/spacecorsair/mod/ModLan$6;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/io/DataInputStream;)V

    const-string v0, "lan-read"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    .line 649
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$7;

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLan$7;-><init>(JLjava/util/concurrent/locks/ReentrantLock;Ljava/io/DataOutputStream;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    const-string v2, "lan-write"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    .line 682
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 683
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 684
    return-void

    .line 606
    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

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
    .line 506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 509
    :cond_9
    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 510
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 511
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 512
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

    .line 513
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

    .line 516
    :catch_4f
    move-exception v0

    .line 519
    :cond_50
    :try_start_50
    const-string v0, "255.255.255.255"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_5a

    .line 520
    :goto_59
    return-object v1

    .line 519
    :catch_5a
    move-exception v0

    goto :goto_59
.end method

.method static buttonLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3012
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_f

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_f

    const-string v0, "Multiplayer"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3013
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
    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aget-object v23, v2, v3

    .line 1032
    const/16 v22, 0x0

    .line 1033
    :goto_10
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_527

    move/from16 v0, v22

    move/from16 v1, p8

    if-ge v0, v1, :cond_527

    .line 1034
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2f

    move/from16 v0, p1

    move/from16 v1, p4

    if-ge v0, v1, :cond_2f

    move/from16 v2, v22

    .line 1033
    :goto_2a
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, v2

    goto :goto_10

    .line 1035
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

    .line 1036
    :cond_41
    aget-object v13, v23, p1

    .line 1037
    if-eqz v13, :cond_528

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    if-nez v2, :cond_528

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fBack:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move/from16 v2, v22

    goto :goto_2a

    .line 1038
    :cond_54
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fType:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1039
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPos:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1040
    if-nez v2, :cond_67

    move/from16 v2, v22

    goto :goto_2a

    .line 1041
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

    .line 1042
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fZoom:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    .line 1043
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_2d3

    .line 1044
    iget-object v3, v13, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 1045
    if-eqz v3, :cond_528

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eq v3, v4, :cond_528

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-ne v3, v4, :cond_98

    move/from16 v2, v22

    goto :goto_2a

    .line 1046
    :cond_98
    instance-of v4, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    if-eqz v4, :cond_52c

    .line 1047
    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v5, v7, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    .line 1048
    check-cast v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    iget-object v14, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;->base:Lfr/testudo/spacecorsair/display/Drawable;

    move v11, v4

    move v10, v5

    move v9, v6

    .line 1050
    :goto_ae
    iget-object v3, v14, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->defId(Lfr/testudo/spacecorsair/display/Texture;)I

    move-result v4

    .line 1051
    if-gez v4, :cond_ba

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 1052
    :cond_ba
    instance-of v3, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1053
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v5, :cond_1ef

    .line 1054
    if-eqz v3, :cond_110

    move-object v5, v14

    check-cast v5, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v21, v5

    .line 1056
    :goto_c7
    if-eqz v3, :cond_114

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->saver:Z

    if-eqz v5, :cond_114

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_114

    move-object/from16 v0, v21

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v5, :cond_114

    move-object/from16 v0, v21

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    const/high16 v6, 0x43c80000    # 400.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_114

    move-object/from16 v0, v21

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    const/high16 v6, 0x43c80000    # 400.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_114

    .line 1057
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1058
    if-eqz v5, :cond_114

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v7, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sub-float/2addr v6, v7

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v5, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sub-float v5, v7, v5

    mul-float/2addr v6, v6

    mul-float/2addr v5, v5

    add-float/2addr v5, v6

    const v6, 0x4993b480    # 1210000.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_114

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->fxDropped:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->fxDropped:J

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 1054
    :cond_110
    const/4 v5, 0x0

    move-object/from16 v21, v5

    goto :goto_c7

    .line 1060
    :cond_114
    if-eqz v3, :cond_1c9

    if-eqz v12, :cond_1ba

    const/4 v5, 0x1

    :goto_119
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v6, :cond_1bd

    const/4 v6, 0x2

    :goto_120
    or-int/2addr v6, v5

    move-object/from16 v0, v21

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    if-eqz v5, :cond_1c0

    const/4 v5, 0x4

    :goto_128
    or-int/2addr v6, v5

    move-object/from16 v0, v21

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    if-eqz v5, :cond_1c3

    const/16 v5, 0x8

    :goto_131
    or-int/2addr v6, v5

    move-object/from16 v0, v21

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v5, :cond_1c6

    const/16 v5, 0x10

    :goto_13a
    or-int v12, v6, v5

    .line 1061
    :goto_13c
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

    .line 1062
    if-eqz v3, :cond_1d1

    move-object/from16 v0, v21

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    :goto_160
    if-eqz v3, :cond_1d6

    move-object/from16 v0, v21

    iget v14, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    :goto_166
    if-eqz v3, :cond_1db

    move-object/from16 v0, v21

    iget v15, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    :goto_16c
    if-eqz v3, :cond_1dd

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    move/from16 v16, v0

    :goto_174
    if-eqz v3, :cond_1e0

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    move/from16 v17, v0

    :goto_17c
    if-eqz v3, :cond_1e3

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    move/from16 v18, v0

    :goto_184
    if-eqz v3, :cond_1e6

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_1e6

    const/16 v19, 0x1

    .line 1063
    :goto_18e
    if-eqz v3, :cond_1e9

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_1e9

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/16 v20, 0x0

    aget v20, v2, v20

    :goto_19e
    if-eqz v3, :cond_1ec

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_1ec

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/16 v21, 0x1

    aget v21, v2, v21

    :goto_1ae
    move-object/from16 v2, p7

    .line 1061
    invoke-static/range {v2 .. v21}, Lfr/testudo/spacecorsair/mod/ModLanSync;->sprite(Ljava/io/DataOutputStream;ZIFFFIIIIIFFFFFFZFF)Z

    move-result v2

    if-eqz v2, :cond_528

    .line 1063
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1060
    :cond_1ba
    const/4 v5, 0x0

    goto/16 :goto_119

    :cond_1bd
    const/4 v6, 0x0

    goto/16 :goto_120

    :cond_1c0
    const/4 v5, 0x0

    goto/16 :goto_128

    :cond_1c3
    const/4 v5, 0x0

    goto/16 :goto_131

    :cond_1c6
    const/4 v5, 0x0

    goto/16 :goto_13a

    :cond_1c9
    if-eqz v12, :cond_1ce

    const/4 v12, 0x1

    goto/16 :goto_13c

    :cond_1ce
    const/4 v12, 0x0

    goto/16 :goto_13c

    .line 1062
    :cond_1d1
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto :goto_160

    :cond_1d6
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v14, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto :goto_166

    :cond_1db
    const/4 v15, 0x0

    goto :goto_16c

    :cond_1dd
    const/16 v16, 0x0

    goto :goto_174

    :cond_1e0
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_17c

    :cond_1e3
    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_184

    :cond_1e6
    const/16 v19, 0x0

    goto :goto_18e

    .line 1063
    :cond_1e9
    const/16 v20, 0x0

    goto :goto_19e

    :cond_1ec
    const/16 v21, 0x0

    goto :goto_1ae

    .line 1066
    :cond_1ef
    if-eqz v3, :cond_2a9

    const/4 v5, 0x1

    :goto_1f2
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1067
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1068
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

    .line 1069
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

    .line 1070
    if-eqz v3, :cond_2b6

    .line 1071
    check-cast v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1072
    if-eqz v12, :cond_2ac

    const/4 v2, 0x1

    :goto_244
    iget-boolean v3, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v3, :cond_2ae

    const/4 v3, 0x2

    :goto_249
    or-int/2addr v3, v2

    iget-boolean v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    if-eqz v2, :cond_2b0

    const/4 v2, 0x4

    :goto_24f
    or-int/2addr v3, v2

    iget-boolean v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    if-eqz v2, :cond_2b2

    const/16 v2, 0x8

    :goto_256
    or-int/2addr v3, v2

    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_2b4

    const/16 v2, 0x10

    :goto_25d
    or-int/2addr v2, v3

    .line 1073
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1074
    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1075
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

    .line 1076
    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-eqz v2, :cond_2a5

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

    .line 1081
    :cond_2a5
    :goto_2a5
    add-int/lit8 v2, v22, 0x1

    .line 1082
    goto/16 :goto_2a

    .line 1066
    :cond_2a9
    const/4 v5, 0x0

    goto/16 :goto_1f2

    .line 1072
    :cond_2ac
    const/4 v2, 0x0

    goto :goto_244

    :cond_2ae
    const/4 v3, 0x0

    goto :goto_249

    :cond_2b0
    const/4 v2, 0x0

    goto :goto_24f

    :cond_2b2
    const/4 v2, 0x0

    goto :goto_256

    :cond_2b4
    const/4 v2, 0x0

    goto :goto_25d

    .line 1078
    :cond_2b6
    if-eqz v12, :cond_2d1

    const/4 v2, 0x1

    :goto_2b9
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1079
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2a5

    .line 1078
    :cond_2d1
    const/4 v2, 0x0

    goto :goto_2b9

    .line 1082
    :cond_2d3
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_38a

    .line 1083
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fText:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 1084
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fTSize:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1085
    if-eqz v11, :cond_528

    if-eqz v10, :cond_528

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2f9

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 1086
    :cond_2f9
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_32e

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

    if-eqz v12, :cond_32c

    const/4 v9, 0x1

    :goto_318
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v10

    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->forWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p7

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModLanSync;->text(Ljava/io/DataOutputStream;FFIIIIIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_528

    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    :cond_32c
    const/4 v9, 0x0

    goto :goto_318

    .line 1087
    :cond_32e
    const/4 v3, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1088
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1089
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

    .line 1090
    if-eqz v12, :cond_388

    const/4 v2, 0x1

    :goto_36d
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1091
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1092
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->forWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1093
    add-int/lit8 v2, v22, 0x1

    .line 1094
    goto/16 :goto_2a

    .line 1090
    :cond_388
    const/4 v2, 0x0

    goto :goto_36d

    .line 1094
    :cond_38a
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_407

    .line 1095
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_3bc

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

    if-eqz v2, :cond_528

    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1096
    :cond_3bc
    const/4 v3, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1097
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1098
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

    .line 1099
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1100
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1101
    :cond_407
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_528

    .line 1102
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1103
    instance-of v4, v3, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-nez v4, :cond_419

    move/from16 v2, v22

    goto/16 :goto_2a

    :cond_419
    move-object v9, v3

    .line 1104
    check-cast v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 1105
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_48c

    .line 1106
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1107
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

    .line 1108
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

    .line 1109
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

    if-eqz v2, :cond_528

    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1112
    :cond_48c
    const/4 v3, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1113
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1114
    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1115
    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->height:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1116
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

    .line 1117
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

    .line 1118
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1121
    :cond_527
    return v22

    :cond_528
    move/from16 v2, v22

    goto/16 :goto_2a

    :cond_52c
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
    .line 2996
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    .line 2997
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
    .line 388
    if-nez p0, :cond_5

    const-string v0, ""

    .line 394
    :goto_4
    return-object v0

    .line 389
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_2f

    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 392
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2c

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 394
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static codeCheck(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 148
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    if-eqz v0, :cond_9

    move v0, v1

    .line 162
    :goto_8
    return v0

    .line 149
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 150
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    monitor-enter v6

    .line 151
    :try_start_10
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 152
    if-eqz v0, :cond_2c

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 153
    :cond_2c
    if-eqz v0, :cond_3a

    const/4 v7, 0x0

    aget-wide v8, v0, v7

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3a

    monitor-exit v6

    move v0, v2

    goto :goto_8

    .line 154
    :cond_3a
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v3, :cond_4d

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    monitor-exit v6

    move v0, v1

    goto :goto_8

    .line 155
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_56

    monitor-exit v6

    move v0, v3

    goto :goto_8

    .line 156
    :cond_56
    if-nez v0, :cond_75

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_65

    monitor-exit v6

    move v0, v2

    goto :goto_8

    .line 158
    :cond_65
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    .line 159
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_75
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    aput-wide v4, v0, v1

    .line 162
    monitor-exit v6

    move v0, v3

    goto :goto_8

    .line 163
    :catchall_80
    move-exception v0

    monitor-exit v6
    :try_end_82
    .catchall {:try_start_10 .. :try_end_82} :catchall_80

    throw v0
.end method

.method private static connectTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 3261
    :goto_6
    return-void

    .line 3255
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$49;

    invoke-direct {v1, p1, p2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$49;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    const-string v2, "lan-join"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method public static countsAsEnemy(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 2087
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

.method private static damageFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 9
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

    .line 1966
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 1967
    if-eqz v0, :cond_c

    .line 1976
    :goto_b
    return-object v0

    .line 1968
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_17
    if-ge v0, v4, :cond_54

    aget-object v5, v3, v0

    .line 1970
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_26

    .line 1969
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1971
    :cond_26
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1972
    const-string v7, "damage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_50

    const-string v7, "dmg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_50

    const-string v7, "dps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_50

    const-string v7, "burn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_23

    :cond_50
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1974
    :cond_54
    new-array v0, v1, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 1975
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private static declare(J)V
    .registers 8

    .prologue
    .line 1994
    :try_start_0
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 2012
    :cond_a
    :goto_a
    return-void

    .line 1995
    :cond_b
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    .line 1996
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->mine()Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    move-result-object v0

    .line 1997
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v1, :cond_30

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hasDev(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1998
    const-string v0, "DEV ships and DEV gear cannot be used in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 1999
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_a

    .line 2009
    :catch_2e
    move-exception v0

    goto :goto_a

    .line 2002
    :cond_30
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->declSent:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->same(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->declSentAt:J

    sub-long v2, p0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v1, v2, v4

    if-ltz v1, :cond_a

    .line 2003
    :cond_42
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->declSent:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 2004
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->declSentAt:J

    .line 2005
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->encode(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)[B

    move-result-object v0

    .line 2006
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2007
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2008
    const/16 v0, 0xd

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5a} :catch_2e

    goto :goto_a
.end method

.method private static defId(Lfr/testudo/spacecorsair/display/Texture;)I
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 933
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v2

    .line 934
    if-nez v2, :cond_9

    move v0, v1

    .line 950
    :goto_8
    return v0

    .line 935
    :cond_9
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v3

    .line 936
    :try_start_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 937
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 951
    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v0

    .line 938
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

    .line 939
    :cond_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 940
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_1c

    .line 942
    :try_start_3e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 943
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 944
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 945
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 946
    const/4 v2, 0x1

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_56} :catch_5c
    .catchall {:try_start_3e .. :try_end_56} :catchall_1c

    .line 950
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 947
    :catch_5c
    move-exception v0

    .line 948
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

    .line 1433
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x60

    if-le v2, v3, :cond_14

    .line 1448
    :cond_13
    :goto_13
    return v0

    .line 1434
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1435
    const/16 v3, 0x52

    if-ne v2, v3, :cond_33

    .line 1437
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_7d

    move-result v2

    .line 1438
    ushr-int/lit8 v3, v2, 0x10

    const/16 v4, 0x7f02

    if-eq v3, v4, :cond_31

    ushr-int/lit8 v2, v2, 0x10

    const/16 v3, 0x7f03

    if-ne v2, v3, :cond_13

    :cond_31
    move v0, v1

    goto :goto_13

    .line 1443
    :cond_33
    const/16 v3, 0x4c

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_13

    :cond_3b
    move v2, v1

    .line 1444
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 1445
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1446
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

    .line 1444
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1448
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

    .line 1439
    :catch_7d
    move-exception v1

    goto :goto_13
.end method

.method static defineForTest(ILfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 3002
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
    .line 2101
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 2108
    :goto_9
    return v0

    .line 2103
    :cond_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_41

    .line 2104
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    .line 2105
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 2106
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

    .line 2107
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 2108
    const/4 v0, 0x1

    goto :goto_9

    .line 2103
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method private static dropGuestDrone(I)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2251
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v0, v0, p0

    .line 2252
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aput-object v2, v1, p0

    .line 2253
    if-eqz v0, :cond_14

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 2254
    :cond_14
    return-void
.end method

.method static duel(Z)V
    .registers 4

    .prologue
    .line 2792
    if-eqz p0, :cond_7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_7

    .line 2795
    :goto_6
    return-void

    .line 2793
    :cond_7
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2794
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

.method static duelDecided()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2780
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-le v2, v0, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b

    :cond_e
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    if-gt v2, v0, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method static duelFloor(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)F
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2953
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_15

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_15

    if-eqz p0, :cond_15

    cmpg-float v0, p1, v1

    if-lez v0, :cond_15

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2961
    :cond_15
    :goto_15
    return p1

    .line 2955
    :cond_16
    :try_start_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_22} :catch_35

    move-result v0

    .line 2956
    :goto_23
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 2957
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_15

    .line 2958
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2959
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_15

    .line 2955
    :catch_35
    move-exception v0

    move v0, v1

    goto :goto_23

    :cond_38
    move v0, v1

    goto :goto_23
.end method

.method private static enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1209
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

    .line 1224
    :cond_15
    :goto_15
    return-object v0

    .line 1210
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

    .line 1213
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    const-class v3, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1214
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1215
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_42
    if-ge v2, v5, :cond_83

    aget-object v0, v4, v2

    .line 1216
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1217
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

    .line 1223
    :goto_6c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_15

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1215
    :cond_7c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 1220
    :catch_80
    move-exception v0

    move-object v0, v1

    .line 1221
    goto :goto_6c

    :cond_83
    move-object v0, v1

    goto :goto_6c
.end method

.method private static exitFrame()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 1755
    :try_start_1
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v0, :cond_11

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    .line 1771
    :cond_11
    :goto_11
    return-void

    .line 1756
    :cond_12
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v0, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->exitReloadAt:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    :cond_29
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_11

    .line 1767
    :catch_2d
    move-exception v0

    .line 1768
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    .line 1769
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit reload failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1757
    :cond_49
    :try_start_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->exitReloadAt:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_67

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->joined()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1758
    :cond_67
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1759
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1760
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_11

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v2, :cond_11

    .line 1761
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    .line 1762
    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v2, v3, :cond_11

    .line 1763
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 1764
    if-eqz v1, :cond_9e

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    if-nez v2, :cond_a7

    :cond_9e
    const-string v0, "lan"

    const-string v1, "exit reload skipped: no gate"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1765
    :cond_a7
    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    const-string v0, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guest exit: sector reloaded at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_c8} :catch_2d

    goto/16 :goto_11
.end method

.method private static explode(FF)V
    .registers 9

    .prologue
    .line 2925
    const/high16 v2, 0x43f00000    # 480.0f

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f19999a    # 0.6f

    move v0, p0

    move v1, p1

    :try_start_e
    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    .line 2926
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_19

    .line 2930
    :goto_18
    return-void

    .line 2927
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method private static extent(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 2563
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

    .line 2564
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

    .line 2566
    :goto_2a
    return v0

    .line 2564
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fy:Ljava/lang/reflect/Field;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 2565
    :catch_2e
    move-exception v0

    .line 2566
    const v0, 0x44bb8000    # 1500.0f

    goto :goto_2a
.end method

.method private static extraSwitch(J)V
    .registers 6

    .prologue
    .line 2316
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->extraAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 2320
    :cond_a
    :goto_a
    return-void

    .line 2317
    :cond_b
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->extraAt:J

    .line 2318
    const-string v0, "corsair_bh04"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eq v0, v1, :cond_a

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bh04 prototype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static fail(Ljava/lang/Throwable;)V
    .registers 15

    .prologue
    const-wide/16 v12, 0x7530

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 687
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 688
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 689
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

    .line 690
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 691
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 692
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 693
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 694
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 695
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 696
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

    .line 697
    if-eqz v1, :cond_69

    sput-boolean v10, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    .line 698
    :cond_69
    if-eqz v6, :cond_9b

    .line 699
    if-ne v2, v10, :cond_87

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_87

    .line 700
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 701
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 735
    :cond_83
    :goto_83
    return-void

    .line 696
    :cond_84
    const-string v0, ""

    goto :goto_5b

    .line 702
    :cond_87
    if-ne v2, v11, :cond_83

    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 703
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 704
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->rejoin()V

    goto :goto_83

    .line 708
    :cond_9b
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 710
    if-ne v2, v10, :cond_ba

    .line 711
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 713
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 714
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 715
    const-string v0, "Co-op link lost. Waiting 30 s for your friend to reconnect..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_83

    .line 716
    :cond_ba
    if-ne v2, v11, :cond_83

    if-eqz v3, :cond_83

    .line 717
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 718
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 719
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$8;

    invoke-direct {v4, v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan$8;-><init>(JLjava/lang/String;)V

    const-string v0, "lan-rejoin"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 733
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
    .line 1427
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

    .line 1428
    :cond_14
    return p0
.end method

.method private static findHosts(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 3206
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

    .line 3207
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$44;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$44;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lan-scan"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3218
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3219
    return-void
.end method

.method private static fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 14

    .prologue
    .line 2114
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2115
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 2116
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2117
    if-nez v3, :cond_2a

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_29

    const-string v0, "shot class"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->violation(Ljava/lang/String;)V

    .line 2159
    :cond_29
    :goto_29
    return-void

    .line 2118
    :cond_2a
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->newProjectile(Ljava/lang/Class;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v4

    .line 2119
    if-eqz v4, :cond_29

    .line 2120
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v5, v2

    const/4 v0, 0x0

    :goto_36
    if-ge v0, v5, :cond_40

    aget-object v6, v2, v0

    invoke-static {v1, v6, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->readField(Ljava/io/DataInputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 2121
    :cond_40
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FF)Z

    move-result v0

    if-nez v0, :cond_72

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_29

    .line 2156
    :catch_58
    move-exception v0

    .line 2157
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

    goto :goto_29

    .line 2123
    :cond_72
    :try_start_72
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2125
    if-nez v0, :cond_167

    .line 2126
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    .line 2127
    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-eqz v2, :cond_a7

    sub-long v0, v6, v0

    const-wide/16 v8, 0x2710

    cmp-long v0, v0, v8

    if-lez v0, :cond_a7

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_9c

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    :cond_9c
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto :goto_29

    .line 2128
    :cond_a7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    move-object v2, v0

    .line 2131
    :goto_ac
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->damageFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2132
    const/4 v1, 0x0

    .line 2133
    array-length v5, v3

    const/4 v0, 0x0

    :goto_b3
    if-ge v0, v5, :cond_d8

    aget-object v8, v3, v0

    .line 2134
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v8

    .line 2135
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v9

    if-nez v9, :cond_c6

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_d1

    :cond_c6
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2136
    :cond_d1
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2133
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 2138
    :cond_d8
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_e2

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2140
    :cond_e2
    invoke-static {v2, v1, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->record(Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;FJ)Z

    move-result v0

    if-nez v0, :cond_106

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_fa

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    :cond_fa
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2141
    :cond_106
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_10e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_13a

    :cond_10e
    const/4 v0, 0x1

    :goto_10f
    invoke-static {v2, v1, v6, v7, v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->allow(Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;FJZ)F

    move-result v0

    .line 2142
    cmpg-float v2, v0, v1

    if-gez v2, :cond_14f

    .line 2143
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    cmp-long v2, v8, v10

    if-lez v2, :cond_129

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2144
    :cond_129
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    .line 2145
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_13c

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2141
    :cond_13a
    const/4 v0, 0x0

    goto :goto_10f

    .line 2146
    :cond_13c
    div-float v1, v0, v1

    .line 2147
    array-length v2, v3

    const/4 v0, 0x0

    :goto_140
    if-ge v0, v2, :cond_14f

    aget-object v5, v3, v0

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_140

    .line 2149
    :cond_14f
    iput-object p1, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 2150
    const/4 v0, 0x0

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 2151
    const/4 v0, 0x0

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->poisonSource:Lfr/testudo/spacecorsair/business/Element;

    .line 2152
    const/4 v0, 0x0

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    .line 2153
    const/4 v0, 0x0

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPlayer:Z

    .line 2154
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->updateSapCoords()V

    .line 2155
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_165
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_165} :catch_58

    goto/16 :goto_29

    :cond_167
    move-object v2, v0

    goto/16 :goto_ac
.end method

.method private static flushStyles()V
    .registers 7

    .prologue
    .line 2706
    const-class v1, Lfr/testudo/spacecorsair/mod/ModLanSync;

    monitor-enter v1

    .line 2707
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

    .line 2708
    array-length v3, v0

    add-int/lit8 v3, v3, 0x5

    new-array v3, v3, [B

    .line 2709
    const/4 v4, 0x0

    const/16 v5, 0xc

    aput-byte v5, v3, v4

    const/4 v4, 0x4

    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2710
    const/4 v4, 0x0

    const/4 v5, 0x5

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2711
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

    .line 2714
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v0

    .line 2713
    :cond_3a
    :try_start_3a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2714
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 2715
    return-void
.end method

.method static frame()V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1813
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3c

    const-wide/16 v0, 0x10

    .line 1814
    :goto_10
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    .line 1815
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    .line 1816
    const/4 v4, -0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    .line 1817
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    .line 1819
    :try_start_23
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1820
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1821
    :cond_31
    if-eqz v5, :cond_3b

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_12f

    if-nez v4, :cond_4d

    .line 1853
    :cond_3b
    :goto_3b
    return-void

    .line 1813
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

    .line 1822
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

    if-lez v4, :cond_132

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

    .line 1823
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

    .line 1824
    :cond_ac
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->testSwitch(J)V

    .line 1825
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->extraSwitch(J)V

    .line 1826
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    if-eqz v4, :cond_e4

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    if-eqz v4, :cond_e4

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

    .line 1827
    :cond_e4
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x7d0

    cmp-long v4, v8, v10

    if-lez v4, :cond_f3

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->persistedMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 1828
    :cond_f3
    invoke-static {v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->guestPos(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 1829
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->switchLocked()Z

    move-result v4

    if-eqz v4, :cond_126

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-nez v4, :cond_10a

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-nez v4, :cond_10a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->joined()Z

    move-result v4

    if-eqz v4, :cond_126

    .line 1830
    :cond_10a
    const-string v4, "lan"

    const-string v8, "test switch seen: internet session ended"

    invoke-static {v4, v8}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_11b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 1832
    :cond_11b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 1833
    const-string v4, "Test switches are in use. Internet games are off until the game restarts; local games still work."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 1835
    :cond_126
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v4, :cond_136

    .line 1836
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    goto/16 :goto_3b

    .line 1850
    :catch_12f
    move-exception v0

    goto/16 :goto_3b

    .line 1822
    :cond_132
    const-string v4, ""

    goto/16 :goto_82

    .line 1839
    :cond_136
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xbb8

    cmp-long v4, v8, v10

    if-lez v4, :cond_29b

    .line 1840
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    .line 1841
    const-string v6, "lan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v4, v3, :cond_2a4

    const-string v4, "host"

    :goto_14f
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

    if-eqz v7, :cond_194

    move v2, v3

    :cond_194
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

    .line 1846
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logOut:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logIn:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logRaw:J

    .line 1848
    :cond_29b
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_2a8

    invoke-static {v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto/16 :goto_3b

    .line 1841
    :cond_2a4
    const-string v4, "guest"

    goto/16 :goto_14f

    .line 1849
    :cond_2a8
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->guestFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_2b0
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_2b0} :catch_12f

    goto/16 :goto_3b
.end method

.method private static frameBytes(ILjava/io/ByteArrayOutputStream;)[B
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 890
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 891
    add-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    .line 892
    int-to-byte v2, p0

    aput-byte v2, v1, v4

    .line 893
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

    .line 894
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    return-object v1
.end method

.method static guestActive()Z
    .registers 2

    .prologue
    .line 2456
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

.method private static guestDoom([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 20

    .prologue
    .line 2263
    :try_start_0
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2264
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 2265
    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->doom:Z

    if-eqz v2, :cond_14

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v2, :cond_14

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_1b

    :cond_14
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2294
    :cond_1a
    :goto_1a
    return-void

    .line 2266
    :cond_1b
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2267
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 2268
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    .line 2269
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    .line 2270
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 2271
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_65
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_1a

    .line 2291
    :catch_6c
    move-exception v2

    .line 2292
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_1a

    .line 2272
    :cond_74
    :try_start_74
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v5, v2

    float-to-double v12, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v6, v2

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    const-wide v14, 0x409f400000000000L    # 2000.0

    cmpl-double v2, v12, v14

    if-lez v2, :cond_9a

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_1a

    .line 2273
    :cond_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2274
    const-wide/16 v14, 0x3e8

    div-long v14, v12, v14

    sget-wide v16, Lfr/testudo/spacecorsair/mod/ModLan;->doomSec:J

    cmp-long v2, v14, v16

    if-eqz v2, :cond_b1

    const-wide/16 v14, 0x3e8

    div-long v14, v12, v14

    sput-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->doomSec:J

    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomInSec:I

    .line 2275
    :cond_b1
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomInSec:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomInSec:I

    const/4 v14, 0x6

    if-le v2, v14, :cond_c2

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_1a

    .line 2276
    :cond_c2
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    if-eq v11, v2, :cond_e7

    .line 2277
    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotAt:J

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-eqz v2, :cond_e0

    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotAt:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x3a98

    cmp-long v2, v14, v16

    if-gez v2, :cond_e0

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_1a

    .line 2278
    :cond_e0
    sput v11, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotAt:J

    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomTicksShot:I

    .line 2280
    :cond_e7
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomTicksShot:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomTicksShot:I

    const/16 v12, 0x50

    if-le v2, v12, :cond_f9

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_1a

    .line 2282
    :cond_f9
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->spec(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v2

    .line 2283
    instance-of v12, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v12, :cond_10b

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_1a

    .line 2284
    :cond_10b
    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 2285
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->declaredKind(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v12

    .line 2286
    if-eq v12, v4, :cond_11b

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_1a

    .line 2287
    :cond_11b
    if-eqz v10, :cond_14b

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->declaredSeq(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Z

    move-result v10

    if-eqz v10, :cond_14b

    const/4 v10, 0x1

    .line 2288
    :goto_124
    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v2, v2

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v2, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 2289
    const/4 v2, 0x1

    const/16 v12, 0x3e7

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModTitan;->guestDoomTick(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IIFFFFFZI)I

    move-result v2

    .line 2290
    if-gez v2, :cond_1a

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_149} :catch_6c

    goto/16 :goto_1a

    .line 2287
    :cond_14b
    const/4 v10, 0x0

    goto :goto_124
.end method

.method static guestDraw(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2445
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2446
    if-ne p0, v3, :cond_18

    move v0, v1

    :goto_9
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipNow:Z

    .line 2447
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v0, :cond_1a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2452
    :goto_17
    return v1

    :cond_18
    move v0, v2

    .line 2446
    goto :goto_9

    .line 2448
    :cond_1a
    if-eq p0, v3, :cond_1e

    move v1, v2

    goto :goto_17

    .line 2450
    :cond_1e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 2451
    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    goto :goto_17

    .line 2450
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private static guestDrones([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 2197
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 2198
    if-eqz v1, :cond_13

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_13

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hiveDeclared(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_13
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2232
    :cond_19
    :goto_19
    return-void

    .line 2199
    :cond_1a
    const/4 v3, 0x0

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_LIFE:[I

    array-length v0, v0

    add-int/lit8 v4, v0, -0x1

    array-length v0, p0

    if-lez v0, :cond_75

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    :goto_28
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2200
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hiveTier(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2202
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->droneLaunchAt:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_77

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->droneLaunchAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3a98

    cmp-long v0, v6, v8

    if-gez v0, :cond_77

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_54} :catch_55

    goto :goto_19

    .line 2228
    :catch_55
    move-exception v0

    .line 2229
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2230
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guest drones failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_75
    move v0, v2

    .line 2199
    goto :goto_28

    .line 2203
    :cond_77
    :try_start_77
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v6, 0x44e10000    # 1800.0f

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v6

    .line 2204
    if-eqz v6, :cond_19

    .line 2205
    const/4 v0, 0x0

    const/16 v7, 0x3e7

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v1, v2

    move v0, v2

    .line 2207
    :goto_90
    const/4 v2, 0x2

    if-ge v1, v2, :cond_126

    .line 2208
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v1

    if-eqz v2, :cond_a4

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_a4

    .line 2207
    :goto_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 2210
    :cond_a4
    if-nez v1, :cond_11d

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 2209
    :goto_a8
    invoke-static {v0, v7, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 2211
    iput v7, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 2212
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    const/high16 v8, 0x43340000    # 180.0f

    add-float/2addr v8, v0

    if-nez v1, :cond_120

    const/high16 v0, -0x3e600000    # -20.0f

    :goto_cc
    add-float/2addr v0, v8

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 2213
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v8

    if-nez v1, :cond_123

    const/high16 v0, -0x3d100000    # -120.0f

    :goto_db
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2214
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2215
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 2216
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 2217
    const/4 v0, 0x0

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 2218
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 2219
    const-string v0, "ATK DRONE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 2220
    const/4 v0, -0x1

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 2221
    invoke-virtual {v2, v6}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 2222
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 2223
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aput-object v2, v0, v1

    .line 2224
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneLeft:[I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_LIFE:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 2225
    const/4 v0, 0x1

    goto :goto_a1

    .line 2210
    :cond_11d
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    goto :goto_a8

    .line 2212
    :cond_120
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_cc

    .line 2213
    :cond_123
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_db

    .line 2227
    :cond_126
    if-eqz v0, :cond_19

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->droneLaunchAt:J

    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guest drones launched tier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_142} :catch_55

    goto/16 :goto_19
.end method

.method private static guestDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2888
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2889
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_13

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2913
    :cond_12
    :goto_12
    return-void

    .line 2890
    :cond_13
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_44

    .line 2891
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2892
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_41

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->duelDecided()Z

    move-result v0

    if-nez v0, :cond_41

    .line 2893
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    .line 2894
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2895
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2897
    :cond_41
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2899
    :cond_44
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_12

    .line 2900
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    if-le v0, v3, :cond_a3

    move v0, v1

    .line 2901
    :goto_51
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-nez v3, :cond_56

    move v2, v1

    .line 2902
    :cond_56
    if-nez v2, :cond_7a

    if-nez v0, :cond_7a

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v3, v4, :cond_7a

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-gt v3, v1, :cond_7a

    .line 2903
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 2904
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2905
    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {p0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2907
    :cond_7a
    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2908
    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2909
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2910
    if-nez v2, :cond_98

    if-eqz v0, :cond_98

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-gt v1, v5, :cond_98

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2911
    :cond_98
    if-nez v2, :cond_12

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-gt v1, v5, :cond_12

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    goto/16 :goto_12

    :cond_a3
    move v0, v2

    .line 2900
    goto :goto_51
.end method

.method static guestFeeFree()Z
    .registers 2

    .prologue
    .line 99
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

    .line 2341
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_30

    .line 2342
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

    .line 2343
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

    .line 2422
    :cond_2f
    :goto_2f
    return-void

    .line 2341
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 2343
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 2344
    :cond_36
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2346
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

    .line 2347
    if-eq v0, p0, :cond_42

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_42

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2348
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v1, :cond_66

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2349
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

    .line 2350
    :cond_85
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_42

    .line 2352
    :cond_89
    const/4 v0, 0x0

    .line 2353
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

    .line 2354
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

    .line 2353
    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0

    .line 2355
    :cond_cd
    if-eqz v6, :cond_2f

    .line 2356
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 2358
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

    .line 2359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2360
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v2, :cond_fc

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    sub-long v2, v0, v2

    const-wide/16 v8, 0xbb8

    cmp-long v2, v2, v8

    if-lez v2, :cond_2f

    .line 2361
    :cond_fc
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 2362
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    .line 2364
    const/4 v1, 0x0

    .line 2365
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

    .line 2366
    :goto_116
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_15f

    .line 2367
    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v2, :cond_128

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v1, :cond_128

    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2368
    :cond_128
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v2, "VECTOR00_GATE"

    invoke-virtual {v5, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
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

    .line 2372
    :catch_158
    move-exception v0

    goto/16 :goto_2f

    .line 2365
    :cond_15b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_108

    .line 2370
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

    .line 2371
    goto :goto_14b

    .line 2378
    :cond_16b
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v0, :cond_189

    .line 2379
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 2380
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_2a4

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    const/high16 v4, 0x45160000    # 2400.0f

    add-float/2addr v1, v4

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2382
    :goto_181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2383
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2386
    :cond_189
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_193

    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 2387
    :cond_193
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    sub-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sub-float v1, v0, v1

    .line 2388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2389
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v0, v8, v12

    if-nez v0, :cond_2b5

    move v0, v2

    .line 2390
    :goto_1a7
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_1b7

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v10

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    const v7, 0x4e6e6b28    # 1.0E9f

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 2391
    :cond_1b7
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    .line 2393
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v4, v10

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 2394
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v4, :cond_1f9

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1f9

    .line 2395
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    add-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    .line 2396
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1ed

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2397
    :cond_1ed
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    sub-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 2398
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 2401
    :cond_1f9
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    cmp-long v1, v4, v12

    if-gez v1, :cond_203

    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 2402
    :cond_203
    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    sub-long/2addr v4, v8

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    sub-long/2addr v4, v8

    .line 2404
    const/high16 v1, 0x447a0000    # 1000.0f

    :try_start_20d
    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v7, v7, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v8, v7, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-float v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2405
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

    .line 2407
    :goto_227
    cmp-long v0, v4, v12

    if-lez v0, :cond_25f

    .line 2408
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    add-long/2addr v0, v4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    .line 2409
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

    .line 2410
    :goto_244
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    long-to-float v5, v0

    sub-float/2addr v4, v5

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 2411
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

    .line 2413
    :cond_25f
    :goto_25f
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 2414
    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    .line 2415
    iget-boolean v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    if-eqz v0, :cond_2db

    .line 2416
    iget-wide v8, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    cmp-long v0, v8, v12

    if-gtz v0, :cond_2c5

    move v0, v3

    .line 2417
    :goto_271
    iget-object v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v5, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v5, v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->glide([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IF)V

    .line 2418
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

    .line 2420
    :goto_291
    iget-object v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v4, v2, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 2421
    const/high16 v1, 0x43160000    # 150.0f

    add-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->drawLabel(FFLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 2381
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

    .line 2389
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

    .line 2416
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

    .line 2411
    :catch_2d6
    move-exception v0

    goto :goto_25f

    .line 2406
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
    .line 1614
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-gtz v1, :cond_f

    .line 1647
    :cond_e
    :goto_e
    return-void

    .line 1616
    :cond_f
    :try_start_f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 1617
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v14, v2, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1618
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v15, v2

    .line 1619
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-lez v2, :cond_e

    .line 1620
    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    div-float v16, v2, v15

    .line 1621
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1622
    const/4 v2, 0x0

    move v13, v2

    :goto_3c
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-ge v13, v2, :cond_e

    .line 1623
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 1624
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 1625
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

    .line 1626
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v12

    .line 1627
    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v6, v2

    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v3, v6, v3

    .line 1628
    mul-float v6, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v6, v11

    mul-float v11, v15, v15

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_91

    .line 1622
    :cond_8d
    :goto_8d
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3c

    .line 1629
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

    .line 1630
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_bd

    const/4 v2, 0x1

    .line 1631
    :goto_a7
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_cd

    .line 1632
    if-eqz v2, :cond_bf

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/Mission;->targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 1633
    :goto_af
    if-eqz v4, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto :goto_8d

    .line 1644
    :catch_ba
    move-exception v1

    goto/16 :goto_e

    .line 1630
    :cond_bd
    const/4 v2, 0x0

    goto :goto_a7

    .line 1632
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

    .line 1634
    :cond_cd
    if-eqz v2, :cond_105

    .line 1635
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_f9

    const-string v2, "icon_skull"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 1636
    :goto_d9
    if-eqz v2, :cond_fb

    .line 1637
    const/high16 v6, 0x41500000    # 13.0f

    const v3, 0x3f555555

    mul-float v5, v6, v3

    .line 1638
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

    .line 1635
    :cond_f9
    const/4 v2, 0x0

    goto :goto_d9

    .line 1639
    :cond_fb
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-static/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto :goto_8d

    .line 1640
    :cond_105
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    array-length v2, v2

    if-ge v5, v2, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aget-object v2, v2, v5

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_8d

    .line 1641
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
    .line 1670
    :try_start_0
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    if-nez v0, :cond_11

    .line 1680
    :cond_10
    :goto_10
    return-void

    .line 1671
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1672
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

    .line 1673
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_79

    .line 1674
    :try_start_34
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lan_done"

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4e} :catch_7b

    .line 1675
    :goto_4e
    :try_start_4e
    const-string v1, "CO-OP MISSION COMPLETE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1676
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

    .line 1677
    :catch_79
    move-exception v0

    goto :goto_10

    .line 1674
    :catch_7b
    move-exception v1

    goto :goto_4e
.end method

.method private static guestPos(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2659
    :try_start_2
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2660
    if-eqz v2, :cond_e

    iget-object v3, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v3, :cond_f

    .line 2687
    :cond_e
    :goto_e
    return-void

    .line 2661
    :cond_f
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_4c

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4c

    .line 2662
    :goto_18
    if-nez v0, :cond_1e

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    if-eqz v1, :cond_92

    .line 2664
    :cond_1e
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2665
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->posAt:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    .line 2666
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v1, :cond_4e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModLan;->posAt:J

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pos"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_e

    .line 2684
    :catch_4a
    move-exception v0

    goto :goto_e

    :cond_4c
    move v0, v1

    .line 2661
    goto :goto_18

    .line 2667
    :cond_4e
    if-eqz v0, :cond_54

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v0, :cond_e

    :cond_54
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_e

    iget-object v0, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_e

    .line 2668
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModLan;->posAt:J

    .line 2669
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    .line 2670
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pos"

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3, v4, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->posLine(Ljava/lang/String;FFJ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_e

    .line 2673
    :cond_92
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    if-eqz v0, :cond_e

    .line 2674
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2675
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pos"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2676
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2677
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pos"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2678
    iget-object v1, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->posOf(Ljava/lang/String;Ljava/lang/String;J)[F

    move-result-object v0

    .line 2679
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_e

    .line 2680
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2681
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2682
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2683
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guest position restored in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_fb} :catch_4a

    goto/16 :goto_e
.end method

.method private static hello(Ljava/net/Socket;J)Z
    .registers 16

    .prologue
    .line 548
    const/16 v0, 0xbb8

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 549
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 550
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 551
    const-string v0, "SCLAN2"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 552
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 553
    const-string v1, "SCLAN2"

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x0

    .line 579
    :goto_32
    return v0

    .line 554
    :cond_33
    const/16 v0, 0x40

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x40

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x10

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 556
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 558
    :goto_69
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    monitor-enter v7
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6c} :catch_8e

    :try_start_6c
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-nez v0, :cond_89

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const/4 v0, 0x1

    :goto_79
    monitor-exit v7
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_8b

    .line 559
    if-eqz v0, :cond_91

    const/4 v0, 0x3

    :try_start_7d
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const/4 v0, 0x0

    goto :goto_32

    .line 556
    :cond_85
    const-string v0, ""
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_87} :catch_8e

    move-object v1, v0

    goto :goto_69

    .line 558
    :cond_89
    const/4 v0, 0x0

    goto :goto_79

    :catchall_8b
    move-exception v0

    :try_start_8c
    monitor-exit v7
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v0

    .line 578
    :catch_8e
    move-exception v0

    .line 579
    const/4 v0, 0x0

    goto :goto_32

    .line 560
    :cond_91
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refused version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_32

    .line 561
    :cond_c4
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 562
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeChars(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 563
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 564
    instance-of v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-nez v2, :cond_109

    .line 565
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->codeCheck(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 566
    if-eqz v0, :cond_109

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string v0, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "room code refused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_32

    .line 568
    :cond_109
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v0, :cond_164

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    :cond_11f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_16c

    const/4 v0, 0x1

    .line 569
    :goto_12a
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    if-nez v0, :cond_16e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    if-nez v0, :cond_16e

    invoke-static {v2, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->askAccept(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_16e

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string v0, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "declined "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_32

    .line 568
    :cond_164
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    :cond_16c
    const/4 v0, 0x0

    goto :goto_12a

    .line 571
    :cond_16e
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 572
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 574
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 575
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 576
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;
    :try_end_191
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_191} :catch_8e

    .line 577
    const/4 v0, 0x1

    goto/16 :goto_32
.end method

.method static host()V
    .registers 5

    .prologue
    .line 176
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 231
    :goto_8
    return-void

    .line 178
    :cond_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 179
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 180
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 181
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 182
    const-string v2, "Waiting for a player to join..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 183
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$1;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$1;-><init>(J)V

    const-string v4, "lan-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    .line 205
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 206
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$2;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$2;-><init>(J)V

    const-string v0, "lan-beacon"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    .line 230
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_8
.end method

.method static host(Z)V
    .registers 3

    .prologue
    .line 133
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    .line 134
    if-eqz p0, :cond_15

    const-string v0, ""

    :goto_6
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    .line 135
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    .line 136
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 137
    return-void

    .line 134
    :cond_15
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->newCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 135
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 9

    .prologue
    .line 2807
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v0, :cond_36

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_36

    .line 2808
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2809
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2810
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundAt:J

    .line 2811
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2812
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    .line 2813
    if-eqz p2, :cond_4c

    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    :goto_2e
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2814
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2815
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2817
    :cond_36
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_4e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-nez v0, :cond_4e

    .line 2818
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2819
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    .line 2820
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2821
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    .line 2870
    :cond_4b
    :goto_4b
    return-void

    .line 2813
    :cond_4c
    const/4 v0, 0x0

    goto :goto_2e

    .line 2824
    :cond_4e
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_4b

    .line 2825
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 2826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2827
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    if-eqz v2, :cond_6a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1770

    cmp-long v2, v2, v4

    if-lez v2, :cond_4b

    .line 2828
    :cond_6a
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2829
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    .line 2830
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_7d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v0, :cond_7d

    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2831
    :cond_7d
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v1, "VECTOR00_GATE"

    invoke-virtual {p1, v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
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

    goto :goto_4b

    .line 2836
    :cond_a1
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f6

    .line 2837
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_b3

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2838
    :cond_b3
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    if-eqz v0, :cond_bd

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2839
    :cond_bd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4b

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duel over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 2844
    :cond_f6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    if-eqz v0, :cond_19f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2845
    :goto_fc
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->roundAt:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2846
    if-eqz p2, :cond_1a5

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a5

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    add-float/2addr v3, v4

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shield:F

    add-float/2addr v3, v4

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->regen:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1a5

    const/4 v0, 0x1

    .line 2847
    :goto_12b
    if-eqz v0, :cond_14d

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duel round forced, dmg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    :cond_14d
    if-eqz p2, :cond_1a7

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    if-gt v1, v2, :cond_157

    if-eqz v0, :cond_1a7

    .line 2849
    :cond_157
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundAt:J

    .line 2850
    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2851
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    .line 2852
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2853
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2854
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_186

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2855
    :cond_186
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    .line 2869
    :cond_193
    :goto_193
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_4b

    .line 2844
    :cond_19f
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    goto/16 :goto_fc

    .line 2846
    :cond_1a5
    const/4 v0, 0x0

    goto :goto_12b

    .line 2858
    :cond_1a7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_193

    .line 2859
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2860
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundAt:J

    .line 2861
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2862
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2863
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2864
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2865
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_1e4

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2866
    :cond_1e4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2867
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_193

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    goto :goto_193
.end method

.method static hostForTest()V
    .registers 1

    .prologue
    .line 2985
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 20

    .prologue
    .line 1859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1860
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_39

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->devGearAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_39

    .line 1861
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->devGearAt:J

    .line 1862
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devGear()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1863
    const-string v2, "lan"

    const-string v3, "host fitted DEV gear: session ended"

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 1865
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 1866
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 1867
    const-string v2, "DEV ships and DEV gear cannot be used in internet games."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 1950
    :cond_38
    :goto_38
    return-void

    .line 1873
    :cond_39
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1874
    :try_start_3c
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1875
    new-instance v6, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1876
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1877
    new-instance v7, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1878
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1879
    new-instance v8, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1880
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1881
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_a5

    .line 1882
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v9, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1883
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->hostMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;)V

    .line 1884
    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    .line 1885
    if-eqz v5, :cond_a8

    iget-boolean v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    if-eqz v2, :cond_a8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v10, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long/2addr v2, v10

    const-wide/16 v10, 0x7d0

    cmp-long v2, v2, v10

    if-gez v2, :cond_a8

    iget-object v2, v9, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_a8

    iget-object v2, v9, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_a8

    const/4 v2, 0x1

    .line 1887
    :goto_9f
    if-nez v2, :cond_aa

    .line 1888
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    goto :goto_38

    .line 1881
    :catchall_a5
    move-exception v2

    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v2

    .line 1885
    :cond_a8
    const/4 v2, 0x0

    goto :goto_9f

    .line 1891
    :cond_aa
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_b8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_b8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxyLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eq v2, v9, :cond_c6

    :cond_b8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    sput-object v9, Lfr/testudo/spacecorsair/mod/ModLan;->proxyLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    .line 1892
    :cond_c6
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1893
    if-eqz v4, :cond_38

    .line 1895
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    if-eq v5, v2, :cond_12f

    .line 1896
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1897
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sub-float v3, v2, v3

    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sget v10, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    sub-float v10, v2, v10

    .line 1898
    const v2, 0x3c83126f    # 0.016f

    iget-wide v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sub-long/2addr v12, v14

    long-to-float v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1899
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v12, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v12

    iget v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v13, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v12, v13

    .line 1900
    mul-float/2addr v2, v2

    mul-float/2addr v12, v12

    add-float/2addr v2, v12

    const v12, 0x4b742400    # 1.6E7f

    cmpg-float v2, v2, v12

    if-gez v2, :cond_1e4

    const/4 v2, 0x1

    .line 1901
    :goto_109
    const v12, 0x45bb8000    # 6000.0f

    mul-float/2addr v11, v12

    const v12, 0x44bb8000    # 1500.0f

    add-float/2addr v11, v12

    .line 1902
    sget-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1e7

    if-nez v2, :cond_1e7

    mul-float v2, v3, v3

    mul-float v3, v10, v10

    add-float/2addr v2, v3

    mul-float v3, v11, v11

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e7

    .line 1903
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1904
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1910
    :cond_12f
    :goto_12f
    iget v3, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    .line 1911
    mul-float v10, v3, v3

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    .line 1912
    const v11, 0x461c4000    # 10000.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_14b

    const/high16 v11, 0x42c80000    # 100.0f

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    div-float v10, v11, v10

    mul-float/2addr v3, v10

    mul-float/2addr v2, v10

    .line 1913
    :cond_14b
    const-wide/16 v10, 0xfa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-float v10, v10

    const/high16 v11, 0x41800000    # 16.0f

    div-float/2addr v10, v11

    .line 1914
    sget-boolean v11, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-eqz v11, :cond_1f8

    iget-object v10, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v11, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sget v12, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    invoke-virtual {v10, v11, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1916
    :goto_169
    iget-object v10, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v10, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1917
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1918
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1920
    const v2, 0x49742400    # 1000000.0f

    iget v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    sub-float/2addr v2, v3

    .line 1921
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_18e

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    add-float/2addr v3, v2

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v3, :cond_18e

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 1922
    :cond_18e
    const v2, 0x49742400    # 1000000.0f

    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1923
    const v2, 0x49742400    # 1000000.0f

    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1924
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_208

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    iget v10, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    div-float/2addr v2, v3

    :goto_1ac
    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 1925
    const/4 v2, 0x0

    iput-boolean v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 1926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    .line 1927
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    cmp-long v5, v2, v10

    if-eqz v5, :cond_1c3

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    .line 1928
    :cond_1c3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1929
    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    const/16 v6, 0x12c

    if-le v5, v6, :cond_20b

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_1c7

    .line 1900
    :cond_1e4
    const/4 v2, 0x0

    goto/16 :goto_109

    .line 1906
    :cond_1e7
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1907
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    iget-wide v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    goto/16 :goto_12f

    .line 1915
    :cond_1f8
    iget-object v11, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    mul-float v13, v3, v10

    add-float/2addr v12, v13

    iget v13, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    mul-float/2addr v10, v2

    add-float/2addr v10, v13

    invoke-virtual {v11, v12, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_169

    .line 1924
    :cond_208
    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_1ac

    .line 1930
    :cond_20b
    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_1c7

    .line 1932
    :cond_20f
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v2, :cond_23b

    .line 1933
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_217
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_227

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDrones([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_217

    .line 1934
    :cond_227
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDoom([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_22b

    .line 1936
    :cond_23b
    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->upkeepGuestDrones(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;J)V

    .line 1937
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    sub-long v2, v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1938
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v2, :cond_38

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_38

    .line 1939
    const-wide/16 v2, 0x3e8

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1940
    iget-object v2, v9, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25c
    :goto_25c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 1941
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v3, :cond_25c

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v3, :cond_25c

    if-eq v2, v4, :cond_25c

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-nez v3, :cond_25c

    move-object v3, v2

    .line 1942
    check-cast v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1943
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    if-eq v6, v0, :cond_285

    iget-object v6, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v6, v4, :cond_25c

    .line 1945
    :cond_285
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 1946
    cmpg-float v2, v6, v2

    if-gez v2, :cond_2a4

    move-object v2, v4

    .line 1947
    :goto_29c
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eq v6, v2, :cond_25c

    invoke-virtual {v3, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_25c

    :cond_2a4
    move-object/from16 v2, p0

    .line 1946
    goto :goto_29c
.end method

.method static hostHides(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1251
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

    .line 1579
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1580
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1582
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

    .line 1583
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

    .line 1585
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

    .line 1586
    const/16 v1, 0x12c

    if-lt v7, v1, :cond_7a

    .line 1599
    :cond_5b
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 1600
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 1601
    const/4 v2, 0x0

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, v1, v2

    .line 1602
    const/4 v2, 0x0

    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1603
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 1607
    :goto_79
    return-void

    .line 1587
    :cond_7a
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_4b

    if-eq v0, p0, :cond_4b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq v0, v1, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    if-eqz v1, :cond_4b

    .line 1588
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-eqz v1, :cond_125

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    if-eqz v1, :cond_125

    move v6, v5

    .line 1589
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

    .line 1590
    :cond_a9
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const v4, 0x469c4000    # 20000.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_4b

    .line 1591
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

    .line 1592
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

    .line 1593
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

    .line 1594
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

    .line 1596
    :goto_11b
    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1597
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 1598
    goto/16 :goto_4b

    :cond_125
    move v6, v3

    .line 1588
    goto/16 :goto_93

    :cond_128
    move v4, v3

    .line 1591
    goto :goto_bf

    :cond_12a
    move v1, v3

    goto :goto_c2

    .line 1595
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

    .line 1604
    :catch_14d
    move-exception v0

    .line 1605
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    goto/16 :goto_79

    .line 1592
    :catch_153
    move-exception v4

    goto/16 :goto_d3
.end method

.method static hostNet()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 237
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 238
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 239
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 240
    const-string v0, "Waiting for a player to join..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 241
    return-void
.end method

.method static hostNetForTest()V
    .registers 1

    .prologue
    .line 2987
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 5

    .prologue
    .line 2429
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_18

    .line 2430
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2431
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "CO-OP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 2433
    :cond_18
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;-><init>()V

    .line 2434
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 2435
    iput p1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 2436
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 2437
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p0, p1, v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 2441
    :goto_2c
    return-void

    .line 2438
    :catch_2d
    move-exception v0

    .line 2439
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sub-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    goto :goto_2c
.end method

.method private static inBay()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2799
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2800
    if-eqz v1, :cond_10

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_11

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 2802
    :cond_10
    :goto_10
    return v0

    .line 2801
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method static isAlly(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 2096
    if-eqz p0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq p0, v0, :cond_c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->isGuestDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_16

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static isGuestDrone(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2257
    if-eqz p0, :cond_19

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v1

    if-eq p0, v2, :cond_10

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v0

    if-ne p0, v2, :cond_19

    :cond_10
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v2, :cond_19

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method private static isOwnDrone(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2311
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->playerDrones()[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 2312
    if-eqz p0, :cond_11

    aget-object v3, v2, v1

    if-eq p0, v3, :cond_10

    aget-object v2, v2, v0

    if-ne p0, v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method static isProxy(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 2091
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
    .registers 2

    .prologue
    .line 292
    const-string v0, ""

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->join(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static join(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 296
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    .line 297
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 338
    :cond_d
    :goto_d
    return-void

    .line 299
    :cond_e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 300
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 301
    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 302
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 303
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 305
    :try_start_25
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 306
    new-instance v0, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v0, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v1, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 307
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4c

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_40} :catch_41

    goto :goto_d

    .line 335
    :catch_41
    move-exception v0

    .line 336
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 308
    :cond_4c
    :try_start_4c
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->writeHello(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 310
    const-string v0, "Waiting for the host to accept..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 311
    const v0, 0x88b8

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 312
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 313
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 314
    if-ne v5, v8, :cond_87

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_79
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 316
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_8a

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_d

    .line 314
    :cond_87
    const-string v0, ""

    goto :goto_79

    .line 317
    :cond_8a
    if-eqz v5, :cond_125

    .line 318
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 319
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 320
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 321
    if-ne v5, v8, :cond_fe

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

    .line 324
    :goto_de
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 325
    if-ne v5, v9, :cond_e4

    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    .line 326
    :cond_e4
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

    goto/16 :goto_d

    .line 322
    :cond_fe
    const/4 v0, 0x3

    if-ne v5, v0, :cond_108

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 323
    :cond_108
    if-ne v5, v9, :cond_11e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_117

    const-string v0, "This local game is private. Type its 4-character code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    :cond_117
    const-string v0, "Wrong code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 324
    :cond_11e
    const-string v0, "The host declined."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 329
    :cond_125
    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 330
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 332
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 333
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLan;->lastCode:Ljava/lang/String;

    .line 334
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_138} :catch_41

    goto/16 :goto_d
.end method

.method private static joinCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 3188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Connecting... This can take up to a minute. The host has to accept."

    .line 3189
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 3190
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$42;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$42;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3191
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$43;

    invoke-direct {v2, p1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$43;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lobby-join"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3202
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3203
    return-void
.end method

.method static joinNet(Ljava/net/Socket;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v0, 0x0

    .line 260
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 261
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 262
    sput v10, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 263
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 264
    const-string v2, "Waiting for the host to accept..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 266
    :try_start_19
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 267
    const-string v3, ""

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->writeHello(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 268
    const v2, 0x88b8

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 269
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 270
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 271
    if-ne v6, v10, :cond_49

    const/16 v2, 0x40

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 272
    :goto_42
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_4c

    .line 286
    :cond_48
    :goto_48
    return v0

    .line 271
    :cond_49
    const-string v2, ""

    goto :goto_42

    .line 273
    :cond_4c
    if-eqz v6, :cond_c1

    .line 274
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 275
    if-ne v6, v10, :cond_b0

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

    .line 276
    :goto_9a
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_9c} :catch_9d

    goto :goto_48

    .line 284
    :catch_9d
    move-exception v1

    .line 285
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_48

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    const-string v1, "The host did not answer."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_48

    .line 276
    :cond_b0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_ba

    :try_start_b3
    const-string v1, "The host removed you from this game."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9a

    :cond_ba
    const-string v1, "The host declined."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9a

    .line 279
    :cond_c1
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 280
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 281
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 282
    invoke-static {p0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_d0} :catch_9d

    move v0, v1

    .line 283
    goto/16 :goto_48
.end method

.method public static keepRunning()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1272
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

    .line 1273
    :goto_13
    if-eqz v0, :cond_1e

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    const-string v1, "lan"

    const-string v2, "menu open: game keeps running"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_1e
    return v0

    .line 1272
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static kick()V
    .registers 5

    .prologue
    .line 451
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 452
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 453
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

    .line 454
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

    .line 455
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 456
    if-eqz v1, :cond_39

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->kicked()V

    .line 457
    :cond_39
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 458
    if-nez v1, :cond_45

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 460
    :cond_41
    :goto_41
    return-void

    .line 453
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0

    .line 459
    :cond_45
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_41

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    goto :goto_41
.end method

.method static killed(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 4

    .prologue
    .line 1194
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

    .line 1205
    :cond_17
    :goto_17
    return-void

    .line 1195
    :cond_18
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1196
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1197
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1198
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

    .line 1199
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1200
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 1201
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_17

    .line 1202
    :catch_5f
    move-exception v0

    goto :goto_17
.end method

.method private static lanPrefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 1719
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
    .line 2719
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2720
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

    .line 2721
    :goto_28
    if-nez v5, :cond_3a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v2, p4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-gez v2, :cond_38

    .line 2749
    :goto_34
    return-void

    .line 2720
    :cond_35
    const/4 v2, 0x0

    move v5, v2

    goto :goto_28

    .line 2721
    :cond_38
    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2722
    :cond_3a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x60

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2723
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2724
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_148

    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_52
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2725
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2726
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2727
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2728
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 2729
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

    .line 2730
    :goto_98
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2731
    if-nez v13, :cond_14f

    const/4 v3, 0x0

    move v12, v3

    .line 2732
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

    .line 2733
    :goto_b1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v14, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2734
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2735
    if-eqz v2, :cond_163

    const/4 v3, 0x1

    move v4, v3

    :goto_c1
    if-eqz v11, :cond_167

    const/4 v3, 0x2

    :goto_c4
    or-int/2addr v3, v4

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2736
    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2737
    if-eqz v2, :cond_e3

    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->write([B)V

    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->slowAt:J

    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->slowLast:[B

    .line 2738
    :cond_e3
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2739
    new-instance v9, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2740
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2741
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

    .line 2742
    :goto_119
    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2743
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2744
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

    .line 2745
    :cond_135
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 2746
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2747
    const/16 v2, 0xa

    invoke-static {v2, v14}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2748
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_34

    .line 2724
    :cond_148
    const-string v2, ""

    goto/16 :goto_52

    .line 2729
    :cond_14c
    const/4 v2, 0x0

    goto/16 :goto_98

    .line 2731
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

    .line 2732
    :cond_15f
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_b1

    .line 2735
    :cond_163
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_c1

    :cond_167
    const/4 v3, 0x0

    goto/16 :goto_c4

    .line 2741
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
    .line 2874
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2875
    if-eqz v0, :cond_8

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v1, :cond_9

    .line 2885
    :cond_8
    :goto_8
    return-void

    .line 2876
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2878
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2879
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
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

    .line 2882
    :catch_38
    move-exception v0

    goto :goto_8
.end method

.method public static menuOpening()V
    .registers 2

    .prologue
    .line 1268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->menuAt:J

    return-void
.end method

.method static missionDone()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1660
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1661
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

    .line 1663
    :cond_14
    :goto_14
    return v0

    .line 1662
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method static missionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1651
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1652
    if-eqz v0, :cond_d

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    .line 1654
    :goto_c
    return-object v0

    .line 1652
    :cond_d
    const-string v0, ""
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_c

    .line 1653
    :catch_10
    move-exception v0

    .line 1654
    const-string v0, ""

    goto :goto_c
.end method

.method private static missionLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3018
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    .line 3019
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

    .line 3022
    :goto_1d
    return-object v0

    .line 3019
    :cond_1e
    const-string v0, ""

    goto :goto_11

    .line 3020
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

    .line 3021
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

    .line 3022
    :cond_53
    const-string v0, "Missions: pick the same mission to work on it together, or the guest can fly their own missions and come back later."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method static myAddresses()Ljava/lang/String;
    .registers 5

    .prologue
    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 528
    :cond_9
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 529
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 530
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 531
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

    .line 532
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 533
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2b

    .line 534
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4a

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_4a
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_51} :catch_52

    goto :goto_2b

    .line 539
    :catch_52
    move-exception v0

    .line 542
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
    .line 358
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myNick()Ljava/lang/String;
    .registers 1

    .prologue
    .line 356
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->nick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 345
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    .line 353
    :goto_6
    return-object v0

    .line 347
    :cond_7
    :try_start_7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 348
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 349
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

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    goto :goto_6

    .line 350
    :catch_3a
    move-exception v0

    .line 351
    const-string v0, "?"

    goto :goto_6
.end method

.method private static netLines()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3157
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->linkLine()Ljava/lang/String;

    move-result-object v0

    .line 3158
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

.method static newCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 140
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const/4 v0, 0x0

    :goto_b
    const/4 v3, 0x4

    if-ge v0, v3, :cond_24

    const-string v3, "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

    const-string v4, "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 143
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 2326
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 2334
    :goto_12
    if-eqz v0, :cond_4a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2335
    :goto_1a
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    return-object v0

    .line 2329
    :cond_1d
    const-class v0, Lfr/testudo/spacecorsair/business/factory/GamePools;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_25
    if-ge v2, v5, :cond_4f

    aget-object v0, v4, v2

    .line 2330
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

    .line 2332
    :goto_40
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2329
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 2334
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
    const/4 v1, 0x0

    .line 409
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastCode:Ljava/lang/String;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

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

    .line 842
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    .line 843
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_91

    .line 844
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    monitor-enter v1

    .line 845
    :try_start_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 846
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 847
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 848
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    array-length v0, v0

    array-length v2, p1

    if-ge v0, v2, :cond_32

    array-length v0, p1

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 849
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 850
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 851
    add-int/lit8 v0, v2, 0xa

    new-array v0, v0, [B

    .line 852
    add-int/lit8 v3, v2, 0x5

    .line 853
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput-byte v5, v0, v4

    .line 854
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

    .line 855
    const/4 v3, 0x5

    int-to-byte v4, p0

    aput-byte v4, v0, v3

    .line 856
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

    .line 857
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    monitor-exit v1

    .line 866
    :goto_8f
    return-object v0

    .line 860
    :cond_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_16 .. :try_end_91} :catchall_b5

    .line 862
    :cond_91
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    .line 863
    int-to-byte v1, p0

    aput-byte v1, v0, v5

    .line 864
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

    .line 865
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    .line 860
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
    .line 2991
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static peerLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v0, :cond_33

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerDev:Z

    if-eqz v0, :cond_33

    const-string v0, " [DEV]"

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v0, "Player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_33
    const-string v0, ""

    goto :goto_1d
.end method

.method private static persistedMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 4

    .prologue
    .line 1775
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    if-nez v0, :cond_12

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lan_done"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    .line 1776
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 1792
    :cond_1a
    :goto_1a
    return-void

    .line 1777
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1778
    if-eqz v0, :cond_5e

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1779
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1780
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1781
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 1782
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

    .line 1789
    :catch_5c
    move-exception v0

    goto :goto_1a

    .line 1784
    :cond_5e
    if-nez v0, :cond_64

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    if-eqz v0, :cond_1a

    .line 1785
    :cond_64
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    .line 1786
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1787
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lan_done"

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
    .line 3222
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3223
    const-string v1, "192.168.1.10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3224
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Join a game"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 3227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3228
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$45;

    invoke-direct {v2, v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$45;-><init>([Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3234
    const-string v0, "Type address"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$46;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$46;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3245
    :goto_45
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3246
    return-void

    .line 3238
    :cond_49
    const-string v2, "No game found. Type the host\'s address (shown on the host\'s LAN co-op screen):"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3239
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3240
    const-string v2, "Join"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$47;

    invoke-direct {v3, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$47;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3243
    const-string v0, "Close"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_45
.end method

.method static posLine(Ljava/lang/String;FFJ)Ljava/lang/String;
    .registers 8

    .prologue
    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static posOf(Ljava/lang/String;Ljava/lang/String;J)[F
    .registers 14

    .prologue
    const v6, 0x49742400    # 1000000.0f

    const/4 v1, 0x0

    .line 2694
    :try_start_4
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2695
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move-object v0, v1

    .line 2701
    :goto_18
    return-object v0

    .line 2696
    :cond_19
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2697
    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2698
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_5b

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_5b

    sub-long v6, p2, v4

    const-wide/32 v8, 0x240c8400

    cmp-long v0, v6, v8

    if-gtz v0, :cond_5b

    const-wide/32 v6, 0xea60

    add-long/2addr v6, p2

    cmp-long v0, v4, v6

    if-lez v0, :cond_5d

    :cond_5b
    move-object v0, v1

    goto :goto_18

    .line 2699
    :cond_5d
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v3, v0, v2
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_66} :catch_67

    goto :goto_18

    .line 2700
    :catch_67
    move-exception v0

    move-object v0, v1

    .line 2701
    goto :goto_18
.end method

.method static preFrame()V
    .registers 4

    .prologue
    .line 1734
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->exitFrame()V

    .line 1735
    :cond_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    if-nez v0, :cond_c

    .line 1749
    :cond_b
    :goto_b
    return-void

    .line 1736
    :cond_c
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    .line 1738
    :try_start_f
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v0, :cond_b

    .line 1739
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1740
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1741
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_b

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v2, :cond_b

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v2, :cond_b

    .line 1742
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 1743
    if-eqz v1, :cond_46

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    if-nez v2, :cond_68

    :cond_46
    const-string v0, "lan"

    const-string v1, "solo reload skipped: no gate"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_4d} :catch_4e

    goto :goto_b

    .line 1746
    :catch_4e
    move-exception v0

    .line 1747
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "solo reload failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1744
    :cond_68
    :try_start_68
    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string v0, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "solo: sector reloaded at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_89} :catch_4e

    goto :goto_b
.end method

.method static privTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 503
    const-string v0, "Private (code)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static privacy(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 3149
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Privacy"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "For each open internet game the lobby service keeps on disk: its code, nickname, country, install ids, game version and settings. No IP addresses are stored. The record is deleted when the game closes, or 2 hours after its last heartbeat. Connection addresses are kept in memory only, while the game is open. Also kept: ban counters (24 hours), reports (30 days) and anonymous damage samples with no install id or nickname (30 days)."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    .line 3150
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    .line 3154
    :goto_27
    return-void

    .line 3151
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method private static publicList(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 3180
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$40;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$40;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 3181
    return-void
.end method

.method static queueSize()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 1014
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 1015
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 1017
    :cond_11
    :goto_11
    return v0

    .line 1016
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
    .line 2983
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
    .line 2535
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2536
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 2552
    :cond_f
    :goto_f
    return-void

    .line 2537
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_f

    .line 2538
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_f

    .line 2539
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_f

    .line 2540
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_f

    .line 2541
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_f

    .line 2542
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_f

    .line 2543
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_f

    .line 2544
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2545
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2546
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 2547
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2548
    if-nez v0, :cond_86

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2549
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
    .line 3008
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
    .line 362
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 363
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 364
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

    .line 1452
    new-array v1, p1, [Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1453
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_248

    .line 1454
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$Rec;-><init>()V

    .line 1455
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    .line 1456
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v3, :cond_23

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ed

    .line 1457
    :cond_23
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    .line 1458
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

    .line 1459
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

    .line 1460
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1461
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

    .line 1462
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e4

    .line 1463
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

    .line 1464
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

    .line 1487
    :cond_de
    :goto_de
    aput-object v2, v1, v0

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 1466
    :cond_e4
    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    goto :goto_de

    .line 1468
    :cond_ed
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_143

    .line 1469
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

    .line 1470
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

    .line 1471
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1472
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    .line 1473
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->fromWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    goto :goto_de

    .line 1474
    :cond_143
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_190

    .line 1475
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

    .line 1476
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

    .line 1477
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

    .line 1478
    :cond_190
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22d

    .line 1479
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

    .line 1480
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

    .line 1481
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

    .line 1482
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

    .line 1483
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

    .line 1485
    :cond_22d
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

    .line 1489
    :cond_248
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
    .line 3000
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
    .line 585
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 586
    mul-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "string too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_10
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 588
    const/4 v2, 0x0

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 589
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 590
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static receive(I[B)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x40

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1278
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1279
    const/4 v0, 0x6

    if-ne p0, v0, :cond_17

    .line 1280
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLan;->unpack([B)V

    .line 1415
    :cond_16
    :goto_16
    return-void

    .line 1281
    :cond_17
    if-ne p0, v5, :cond_5f

    .line 1282
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1283
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->defOk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1285
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v2

    .line 1286
    :try_start_2a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x1000

    if-lt v3, v4, :cond_4b

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many textures"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v0

    .line 1287
    :cond_4b
    :try_start_4b
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_48

    goto :goto_16

    .line 1289
    :cond_5f
    if-ne p0, v2, :cond_130

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_130

    .line 1290
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1291
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1292
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1293
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    .line 1294
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1295
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v3, 0x898

    if-le v2, v3, :cond_b0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_b0
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1297
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_d8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    .line 1298
    :cond_d8
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_118

    .line 1299
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1300
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1301
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1302
    if-lez v2, :cond_12a

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v3

    if-gt v2, v3, :cond_12a

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    const/16 v4, 0x7d0

    if-gt v3, v4, :cond_12a

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    mul-int/lit8 v3, v3, 0xe

    if-lt v2, v3, :cond_12a

    new-array v2, v2, [B

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1304
    :cond_118
    :goto_118
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11b
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_12d

    .line 1305
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1306
    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1302
    :cond_12a
    iput v8, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    goto :goto_118

    .line 1304
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v0

    .line 1307
    :cond_130
    const/16 v0, 0xc

    if-ne p0, v0, :cond_139

    .line 1308
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->style([B)V

    goto/16 :goto_16

    .line 1309
    :cond_139
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2a7

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_2a7

    .line 1310
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1311
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    .line 1312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    .line 1313
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 1314
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    .line 1315
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1ae

    .line 1316
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    .line 1317
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDmg:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->leanXp:J

    .line 1318
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanPvp:Z

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanRound:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanHw:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanGw:I

    .line 1319
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    .line 1321
    :cond_1ae
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    .line 1322
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDmg:F

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->leanXp:J

    iput-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanPvp:Z

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanRound:I

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanHw:I

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanGw:I

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    .line 1323
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1324
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1325
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v4, 0x898

    if-le v3, v4, :cond_1ee

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1326
    :cond_1ee
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->read(Ljava/io/DataInputStream;IFF)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1327
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLanSync;->compact([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)I

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1328
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_22b

    .line 1329
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1330
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1331
    if-lez v3, :cond_29b

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-gt v3, v4, :cond_29b

    const/16 v4, 0x7d0

    if-gt v2, v4, :cond_29b

    mul-int/lit8 v4, v2, 0xe

    if-lt v3, v4, :cond_29b

    new-array v3, v3, [B

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    .line 1334
    :cond_22b
    :goto_22b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1335
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->index([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1337
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_240
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_243
    .catchall {:try_start_240 .. :try_end_243} :catchall_2a1

    .line 1338
    if-eqz v2, :cond_284

    iget-boolean v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    if-eqz v1, :cond_284

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_284

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    iget-wide v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x190

    cmp-long v1, v4, v6

    if-gez v1, :cond_284

    .line 1339
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget-object v5, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pair([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I[Lfr/testudo/spacecorsair/mod/ModLan$Rec;Ljava/util/HashMap;)V

    .line 1340
    const-wide/16 v4, 0x1e

    const-wide/16 v6, 0xfa

    iget-wide v8, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    iget-wide v10, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    .line 1341
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phx:F

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phy:F

    .line 1343
    :cond_284
    if-eqz v2, :cond_289

    const/4 v1, 0x0

    iput-object v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1344
    :cond_289
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28c
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_28f
    .catchall {:try_start_28c .. :try_end_28f} :catchall_2a4

    .line 1345
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1346
    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1332
    :cond_29b
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    goto :goto_22b

    .line 1337
    :catchall_2a1
    move-exception v0

    :try_start_2a2
    monitor-exit v1
    :try_end_2a3
    .catchall {:try_start_2a2 .. :try_end_2a3} :catchall_2a1

    throw v0

    .line 1344
    :catchall_2a4
    move-exception v0

    :try_start_2a5
    monitor-exit v1
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2a4

    throw v0

    .line 1347
    :cond_2a7
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2ae

    const/16 v0, 0xb

    if-ne p0, v0, :cond_411

    :cond_2ae
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_411

    .line 1348
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$InState;-><init>()V

    .line 1349
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    .line 1350
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    .line 1351
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    .line 1352
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    .line 1354
    const/high16 v0, 0x42c80000    # 100.0f

    const v3, 0x45bb8000    # 6000.0f

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    const/high16 v0, 0x42c80000    # 100.0f

    const v3, 0x45bb8000    # 6000.0f

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    .line 1355
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const v3, 0x4c3ebc20    # 5.0E7f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_352

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_367

    :cond_352
    const v0, 0x4c3ebc20    # 5.0E7f

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1356
    :cond_367
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1357
    if-nez v0, :cond_36f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    .line 1358
    :cond_36f
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->hull:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_387

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->hull:F

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->hullFlagged:Z

    if-nez v0, :cond_387

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->hullFlagged:Z

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1359
    :cond_387
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    .line 1360
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    .line 1361
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    const/16 v3, 0xc8

    if-le v0, v3, :cond_3a5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many ship records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1362
    :cond_3a5
    const/16 v0, 0xb

    if-ne p0, v0, :cond_405

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v1, v0, v6, v6}, Lfr/testudo/spacecorsair/mod/ModLanSync;->read(Ljava/io/DataInputStream;IFF)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->compact([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    .line 1364
    :goto_3bb
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3c8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    .line 1365
    :cond_3c8
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_3e1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->solo:Z

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->mission:Ljava/lang/String;

    .line 1366
    :cond_3e1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    .line 1367
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3f3

    iget-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    .line 1368
    :cond_3f3
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3f6
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_3f9
    .catchall {:try_start_3f6 .. :try_end_3f9} :catchall_40e

    .line 1369
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1370
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1363
    :cond_405
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    goto :goto_3bb

    .line 1368
    :catchall_40e
    move-exception v0

    :try_start_40f
    monitor-exit v1
    :try_end_410
    .catchall {:try_start_40f .. :try_end_410} :catchall_40e

    throw v0

    .line 1371
    :cond_411
    const/16 v0, 0x8

    if-ne p0, v0, :cond_48c

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_48c

    .line 1372
    array-length v0, p1

    const/16 v2, 0x100

    if-le v0, v2, :cond_426

    new-instance v0, Ljava/io/IOException;

    const-string v1, "kill too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :cond_426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1374
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_437

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    .line 1375
    :cond_437
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_449

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_16

    .line 1376
    :cond_449
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$Kill;-><init>()V

    .line 1377
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->cls:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->level:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->elite:Z

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->x:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->y:F

    .line 1378
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_477
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_486

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_486
    monitor-exit v1

    goto/16 :goto_16

    :catchall_489
    move-exception v0

    monitor-exit v1
    :try_end_48b
    .catchall {:try_start_477 .. :try_end_48b} :catchall_489

    throw v0

    .line 1379
    :cond_48c
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4b9

    .line 1380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1381
    array-length v0, p1

    const/16 v4, 0x200

    if-le v0, v4, :cond_4a0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "chat too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :cond_4a0
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_16

    .line 1383
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    .line 1384
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->onChat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1385
    :cond_4b9
    const/16 v0, 0xd

    if-ne p0, v0, :cond_561

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_561

    .line 1386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1387
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->decode([B)Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    move-result-object v2

    .line 1388
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v3, :cond_4f5

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->peerDev:Z

    if-nez v3, :cond_4f5

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hasDev(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v3

    if-eqz v3, :cond_4f5

    .line 1389
    const-string v0, "lan"

    const-string v1, "guest declared DEV gear: session ended"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v0, "The other player flies DEV gear, which is not allowed in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 1392
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 1393
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v1, :cond_4f1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 1394
    :cond_4f1
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto/16 :goto_16

    .line 1397
    :cond_4f5
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->limits(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v3

    .line 1398
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 1399
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-lez v2, :cond_50c

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/2addr v2, v4

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1400
    :cond_50c
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    .line 1401
    sput-boolean v8, Lfr/testudo/spacecorsair/mod/ModLan;->hullFlagged:Z

    .line 1402
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1403
    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guest declared: exact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->exact:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shot<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->shot:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dps<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->dps:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hull<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->hull:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1404
    :cond_561
    const/4 v0, 0x4

    if-ne p0, v0, :cond_593

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_593

    .line 1405
    array-length v0, p1

    const/16 v1, 0x1000

    if-le v0, v1, :cond_575

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shot too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1406
    :cond_575
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_578
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x190

    if-ge v0, v2, :cond_587

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_587
    monitor-exit v1
    :try_end_588
    .catchall {:try_start_578 .. :try_end_588} :catchall_590

    .line 1407
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    goto/16 :goto_16

    .line 1406
    :catchall_590
    move-exception v0

    :try_start_591
    monitor-exit v1
    :try_end_592
    .catchall {:try_start_591 .. :try_end_592} :catchall_590

    throw v0

    .line 1408
    :cond_593
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5c3

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_5c3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v0, :cond_5c3

    .line 1409
    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_5ac

    new-instance v0, Ljava/io/IOException;

    const-string v1, "drone launch too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_5ac
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5af
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_5bd

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5bd
    monitor-exit v1

    goto/16 :goto_16

    :catchall_5c0
    move-exception v0

    monitor-exit v1
    :try_end_5c2
    .catchall {:try_start_5af .. :try_end_5c2} :catchall_5c0

    throw v0

    .line 1411
    :cond_5c3
    const/16 v0, 0xf

    if-ne p0, v0, :cond_16

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_16

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v0, :cond_16

    .line 1412
    array-length v0, p1

    if-le v0, v4, :cond_5da

    new-instance v0, Ljava/io/IOException;

    const-string v1, "doomsday tick too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_5da
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5dd
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-ge v0, v2, :cond_5ec

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5ec
    monitor-exit v1

    goto/16 :goto_16

    :catchall_5ef
    move-exception v0

    monitor-exit v1
    :try_end_5f1
    .catchall {:try_start_5dd .. :try_end_5f1} :catchall_5ef

    throw v0
.end method

.method private static refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 2

    .prologue
    .line 2943
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 2944
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 2945
    return-void
.end method

.method private static refl()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 991
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    if-eqz v1, :cond_6

    .line 1003
    :goto_5
    return v0

    .line 993
    :cond_6
    :try_start_6
    const-class v0, Lfr/testudo/spacecorsair/display/RenderElement;

    .line 994
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

    .line 995
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

    .line 996
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

    .line 997
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

    .line 998
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

    .line 999
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_87} :catch_8b

    .line 1003
    :goto_87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto/16 :goto_5

    .line 1000
    :catch_8b
    move-exception v0

    .line 1001
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto :goto_87
.end method

.method private static removeProxy()V
    .registers 2

    .prologue
    .line 2079
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->dropGuestDrone(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->dropGuestDrone(I)V

    .line 2080
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2081
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2082
    if-eqz v0, :cond_16

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 2083
    :cond_16
    return-void
.end method

.method private static replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V
    .registers 25

    .prologue
    .line 1501
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1552
    :cond_8
    :goto_8
    return-void

    .line 1502
    :cond_9
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v16, v0

    .line 1503
    move-object/from16 v0, v16

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aget-object v17, v1, v2

    .line 1504
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 1505
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    rem-int/lit8 v18, v1, 0x3

    .line 1506
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

    .line 1507
    :cond_3f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v19, v1, v18

    .line 1508
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v20, v1, v18

    .line 1509
    const/4 v13, 0x0

    .line 1510
    const/4 v12, 0x0

    .line 1511
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

    .line 1512
    aget-object v11, p0, v15

    .line 1513
    aget-object v1, v17, v14

    .line 1514
    if-nez v1, :cond_6a

    .line 1548
    :cond_60
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_8

    .line 1549
    :catch_68
    move-exception v1

    goto :goto_8

    .line 1515
    :cond_6a
    aget-object v3, v20, v13

    .line 1516
    if-nez v3, :cond_75

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    aput-object v3, v20, v13

    .line 1517
    :cond_75
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    add-float v2, v2, p2

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    add-float v4, v4, p3

    invoke-virtual {v3, v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1518
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a0

    const/4 v10, 0x1

    .line 1519
    :goto_87
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v2, :cond_90

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_120

    .line 1520
    :cond_90
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->texFor(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 1521
    if-nez v4, :cond_a2

    move v3, v13

    move v4, v14

    .line 1511
    :goto_9a
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    move v13, v3

    move v14, v4

    goto :goto_4b

    .line 1518
    :cond_a0
    const/4 v10, 0x0

    goto :goto_87

    .line 1522
    :cond_a2
    aget-object v2, v19, v13

    .line 1523
    if-nez v2, :cond_ad

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v2, v19, v13

    .line 1524
    :cond_ad
    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 1525
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 1526
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 1527
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_116

    const/4 v4, 0x1

    :goto_ce
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 1528
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_118

    const/4 v4, 0x1

    :goto_d7
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 1529
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_11a

    const/4 v4, 0x1

    :goto_e0
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 1530
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11c

    .line 1531
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-nez v4, :cond_f1

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    .line 1532
    :cond_f1
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x0

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    aput v6, v4, v5

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x1

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    aput v6, v4, v5

    .line 1534
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

    .line 1545
    :goto_10f
    add-int/lit8 v4, v14, 0x1

    .line 1546
    add-int/lit8 v2, v13, 0x1

    move v12, v1

    move v3, v2

    goto :goto_9a

    .line 1527
    :cond_116
    const/4 v4, 0x0

    goto :goto_ce

    .line 1528
    :cond_118
    const/4 v4, 0x0

    goto :goto_d7

    .line 1529
    :cond_11a
    const/4 v4, 0x0

    goto :goto_e0

    .line 1533
    :cond_11c
    const/4 v4, 0x0

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    goto :goto_ff

    .line 1535
    :cond_120
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_147

    .line 1536
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    array-length v4, v4

    if-lt v2, v4, :cond_130

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1537
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

    .line 1538
    :cond_147
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_15d

    .line 1539
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

    .line 1540
    :cond_15d
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_176

    .line 1541
    add-int/lit8 v2, v12, 0x1

    move/from16 v0, v18

    invoke-static {v0, v12, v11}, Lfr/testudo/spacecorsair/mod/ModLan;->barFor(IILfr/testudo/spacecorsair/mod/ModLan$Rec;)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v4

    .line 1542
    if-nez v4, :cond_171

    move v12, v2

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1543
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
    .line 3004
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    return-void
.end method

.method private static report(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 3163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Report player"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send a report about this player? It contains the chat of this game and what the anti-cheat checks counted. Nothing else."

    .line 3164
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    .line 3165
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$39;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$39;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    .line 3175
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3176
    return-void
.end method

.method private static resetTables()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 905
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->reset()V

    .line 906
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

    .line 907
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_72

    .line 908
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_75

    .line 909
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_3b
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_78

    .line 910
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 911
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 912
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_7b

    .line 913
    return-void

    .line 907
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    .line 908
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0

    .line 909
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 912
    :catchall_7b
    move-exception v0

    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v0
.end method

.method private static respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V
    .registers 14

    .prologue
    const/high16 v10, 0x45160000    # 2400.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2934
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, v0, p1

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v0, p2

    .line 2935
    float-to-double v6, v4

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 2936
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1f

    move v0, v1

    move v2, v3

    move v4, v1

    .line 2937
    :cond_1f
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    div-float/2addr v4, v0

    mul-float/2addr v4, v10

    add-float/2addr v4, p1

    div-float v0, v2, v0

    mul-float/2addr v0, v10

    add-float/2addr v0, p2

    invoke-virtual {v1, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2938
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2939
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2940
    return-void
.end method

.method private static rollLoot(Lfr/testudo/spacecorsair/mod/ModLan$Kill;)V
    .registers 7

    .prologue
    .line 1230
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->cls:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1231
    if-nez v0, :cond_9

    .line 1244
    :cond_8
    :goto_8
    return-void

    .line 1232
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x11

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1233
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

    .line 1234
    if-eqz v0, :cond_8

    .line 1235
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->elite:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1236
    :cond_38
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1237
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1238
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->GenerateLoots(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/Element;)V

    .line 1239
    :cond_52
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drops(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 1240
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_8

    .line 1241
    :catch_5c
    move-exception v0

    .line 1242
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

    .line 2916
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_92

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    :goto_c
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v2, :cond_96

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2917
    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9a

    const-string v2, "DUEL WON"

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

    .line 2918
    if-eqz p1, :cond_a2

    move v5, v3

    :goto_58
    if-eqz p1, :cond_a4

    :goto_5a
    if-eqz p1, :cond_a9

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2917
    :goto_5e
    invoke-static {p0, v6, v5, v4, v2}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 2919
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

    .line 2920
    return-void

    .line 2916
    :cond_92
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    goto/16 :goto_c

    :cond_96
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    goto/16 :goto_12

    .line 2917
    :cond_9a
    const-string v2, "DUEL LOST"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1f

    :cond_a2
    move v5, v4

    .line 2918
    goto :goto_58

    :cond_a4
    const v2, 0x3ecccccd    # 0.4f

    move v4, v2

    goto :goto_5a

    :cond_a9
    move v2, v3

    goto :goto_5e

    .line 2919
    :cond_ab
    const-string v2, "lost"

    goto :goto_72
.end method

.method static scan(I)Ljava/util/List;
    .registers 13
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

    const/4 v11, 0x6

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 474
    :try_start_7
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_143
    .catchall {:try_start_7 .. :try_end_d} :catchall_133

    .line 475
    const/4 v1, 0x1

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 476
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 477
    new-instance v1, Ljava/net/InetSocketAddress;

    const v3, 0x9089

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 478
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p0

    add-long/2addr v4, v6

    .line 480
    const/16 v1, 0x100

    new-array v3, v1, [B

    .line 481
    :cond_2f
    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_12d

    .line 482
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v1, v3, v6}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_3d} :catch_104
    .catchall {:try_start_e .. :try_end_3d} :catchall_13f

    .line 483
    :try_start_3d
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_40
    .catch Ljava/net/SocketTimeoutException; {:try_start_3d .. :try_end_40} :catch_13c
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_104
    .catchall {:try_start_3d .. :try_end_40} :catchall_13f

    .line 484
    :try_start_40
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 485
    const-string v7, "SCLAN2|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 486
    const-string v7, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 487
    array-length v7, v6

    if-lt v7, v11, :cond_2f

    .line 488
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

    .line 489
    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v1, 0x5

    aget-object v1, v6, v1

    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    const-string v1, "  \u00b7  PvP"

    :goto_ba
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "  \u00b7  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 490
    array-length v1, v6

    if-le v1, v11, :cond_10e

    const/4 v1, 0x6

    aget-object v1, v6, v1

    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    const-string v1, "Public"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 491
    const/4 v1, 0x1

    aget-object v1, v6, v1

    const/16 v6, 0x28

    invoke-static {v1, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    const-string v1, ""

    :goto_f1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_102} :catch_104
    .catchall {:try_start_40 .. :try_end_102} :catchall_13f

    goto/16 :goto_2f

    .line 494
    :catch_104
    move-exception v1

    .line 497
    :goto_105
    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 499
    :cond_10a
    :goto_10a
    return-object v2

    .line 489
    :cond_10b
    :try_start_10b
    const-string v1, ""

    goto :goto_ba

    .line 490
    :cond_10e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->privTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_d8

    .line 491
    :cond_113
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
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_12b} :catch_104
    .catchall {:try_start_10b .. :try_end_12b} :catchall_13f

    move-result-object v1

    goto :goto_f1

    .line 497
    :cond_12d
    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_10a

    :catchall_133
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_136
    if-eqz v3, :cond_13b

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 498
    :cond_13b
    throw v2

    .line 483
    :catch_13c
    move-exception v1

    goto/16 :goto_2f

    .line 497
    :catchall_13f
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_136

    .line 494
    :catch_143
    move-exception v0

    move-object v0, v1

    goto :goto_105
.end method

.method static sendChat(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 374
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v1, :cond_13

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_14

    .line 382
    :cond_13
    :goto_13
    return v0

    .line 375
    :cond_14
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    .line 377
    :try_start_16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 378
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x78

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 379
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_2f

    .line 380
    const/4 v0, 0x1

    goto :goto_13

    .line 381
    :catch_2f
    move-exception v1

    goto :goto_13
.end method

.method static sendDoom(IFFFFFZI)V
    .registers 10

    .prologue
    .line 2298
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2308
    :cond_a
    :goto_a
    return-void

    .line 2300
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2301
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2302
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2303
    invoke-virtual {v1, p6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1, p7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2304
    const/16 v1, 0xf

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_a

    .line 2305
    :catch_35
    move-exception v0

    goto :goto_a
.end method

.method private static sendLatest(ILjava/io/ByteArrayOutputStream;)V
    .registers 5

    .prologue
    const/high16 v2, 0x40000

    .line 829
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    .line 830
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

    .line 832
    :goto_1b
    return-void

    .line 831
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
    .line 824
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->frameBytes(ILjava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 825
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 826
    return-void

    .line 825
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
    .line 2786
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    .line 2787
    if-nez p0, :cond_7

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2788
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

    .line 2789
    return-void
.end method

.method static setSolo(Z)V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1684
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-ne v0, p0, :cond_6

    .line 1689
    :goto_5
    return-void

    .line 1685
    :cond_6
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 1686
    if-eqz p0, :cond_11

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    .line 1687
    :cond_11
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    .line 1688
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

    goto :goto_5
.end method

.method private static shareCode(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 3136
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3137
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3138
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3e

    const-string v0, "Join my Space Corsair game. Multiplayer, Join by code:"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3139
    :goto_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3138
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3140
    const-string v0, "Share code"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3144
    :goto_3d
    return-void

    .line 3139
    :cond_3e
    const-string v0, "Join my local Space Corsair game (same Wi-Fi). Multiplayer, Find local games, code:"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_1b

    .line 3141
    :catch_45
    move-exception v0

    goto :goto_3d
.end method

.method static shipEnd()V
    .registers 1

    .prologue
    .line 2463
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
    .line 2461
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

    .line 2023
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

    .line 2033
    :cond_14
    :goto_14
    return-object v0

    .line 2024
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

    .line 2027
    :cond_26
    const/4 v0, 0x0

    :try_start_27
    const-class v2, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2028
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

    .line 2032
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

    .line 2029
    :catch_5c
    move-exception v0

    move-object v0, v1

    .line 2030
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
    .line 2993
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

    .line 2494
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2495
    if-eqz v0, :cond_c

    .line 2514
    :goto_b
    return-object v0

    .line 2496
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 2497
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

    .line 2498
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2499
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2500
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2501
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$12;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$12;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2502
    array-length v5, v4

    move v0, v1

    :goto_47
    if-ge v0, v5, :cond_2d

    aget-object v6, v4, v0

    .line 2503
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 2504
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

    .line 2502
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 2505
    :cond_6a
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->SKIP:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 2506
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 2507
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_84

    const-class v8, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v7, v8, :cond_67

    .line 2508
    :cond_84
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2509
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 2512
    :cond_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2513
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

    .line 2040
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v1, :cond_11

    .line 2047
    :cond_10
    :goto_10
    return v0

    .line 2041
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

    .line 2042
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, p2

    .line 2043
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const v2, 0x4a095440    # 2250000.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_10

    .line 2044
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_75

    iput v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 2045
    :cond_75
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_83

    iput v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2046
    :cond_83
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_91

    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2047
    :cond_91
    const/4 v0, 0x1

    goto/16 :goto_10
.end method

.method static showMenu(Landroid/app/Activity;)V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3027
    :try_start_3
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 3028
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_19

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    if-eqz v1, :cond_19

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-nez v1, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 3132
    :goto_18
    return-void

    .line 3029
    :cond_19
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$13;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModLan$13;-><init>(Landroid/app/Activity;)V

    .line 3030
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->hasProfile()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_18

    .line 3129
    :catch_28
    move-exception v0

    goto :goto_18

    .line 3031
    :cond_2a
    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3032
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_188

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_188

    .line 3033
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

    .line 3034
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_162

    const-string v2, "ON"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PvP duel: both ships go to the old multiplayer bay and fight until one is destroyed. The destroyed ship respawns at full hull with no death fee, then both ships go back. Undock to start."

    .line 3035
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3036
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v2, :cond_16a

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

    :goto_ce
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3037
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

    .line 3038
    const/4 v2, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 3039
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v5, :cond_16e

    const-string v5, "PvP: ON (tap to turn off)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_fb
    aput-object v5, v4, v6

    const/4 v6, 0x1

    .line 3040
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v5, :cond_175

    move-object v5, v0

    :goto_103
    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "Kick player"

    .line 3041
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v6, :cond_119

    const-string v0, "Report player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_119
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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$14;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$14;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$15;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$15;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$16;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$16;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$17;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$17;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$18;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$18;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x5

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3038
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_18

    .line 3034
    :cond_162
    const-string v2, "OFF"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_85

    .line 3036
    :cond_16a
    const-string v2, ""

    goto/16 :goto_ce

    .line 3039
    :cond_16e
    const-string v5, "PvP: OFF (tap to turn on)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_fb

    .line 3040
    :cond_175
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v5, :cond_180

    const-string v5, "End duel"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_103

    :cond_180
    const-string v5, "PvP duel"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_103

    .line 3050
    :cond_188
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_26b

    .line 3051
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

    .line 3052
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v2, :cond_261

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

    :goto_1ee
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3053
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

    .line 3054
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 3055
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v5, :cond_264

    const-string v5, "Follow the host"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_21b
    aput-object v5, v4, v6

    const/4 v5, 0x1

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v6, :cond_228

    const-string v0, "Report player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_228
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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$19;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$19;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$20;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$20;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$21;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$21;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3054
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_18

    .line 3052
    :cond_261
    const-string v2, ""

    goto :goto_1ee

    .line 3055
    :cond_264
    const-string v5, "Fly my own missions"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_21b

    .line 3062
    :cond_26b
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_34a

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_34a

    .line 3063
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 3064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_334

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    :goto_284
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3065
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v8, :cond_340

    .line 3067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Game code:"

    .line 3065
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

    .line 3066
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v2, :cond_338

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

    .line 3067
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

    .line 3068
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3069
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v8, :cond_2ee

    const-string v0, "Share code"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2ee
    aput-object v0, v4, v5

    const/4 v5, 0x1

    .line 3070
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_343

    const-string v0, "PvP: ON (tap to turn off)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2fb
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

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModLan$22;

    invoke-direct {v7, p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan$22;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    aput-object v7, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$23;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$23;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$24;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$24;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3068
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_18

    .line 3064
    :cond_334
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto/16 :goto_284

    .line 3066
    :cond_338
    const-string v2, "Private game: only players with the code can join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2bd

    .line 3067
    :cond_340
    const-string v2, ""

    goto :goto_2d5

    .line 3070
    :cond_343
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2fb

    .line 3077
    :cond_34a
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_432

    .line 3078
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    .line 3079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Your address:"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myAddresses()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3080
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    if-eqz v2, :cond_3fc

    const-string v2, "Public local game: anyone on this network can ask to join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3081
    :goto_389
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "You accept or decline each player."

    .line 3082
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3083
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3084
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    if-nez v7, :cond_3b6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v8, :cond_3b6

    const-string v0, "Share code"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3b6
    aput-object v0, v4, v5

    const/4 v5, 0x1

    .line 3085
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_42b

    const-string v0, "PvP: ON (tap to turn off)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c3
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

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModLan$25;

    invoke-direct {v7, p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan$25;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    aput-object v7, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$26;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$26;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$27;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$27;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3083
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_18

    .line 3081
    :cond_3fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game code:"

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

    move-result-object v2

    const-string v4, "Private local game: only players with the code can join."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_389

    .line 3085
    :cond_42b
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c3

    .line 3093
    :cond_432
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    .line 3094
    if-eqz v2, :cond_442

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v3, :cond_442

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->askCode(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 3095
    :cond_442
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5f5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 3096
    :goto_44c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v6

    .line 3097
    if-eqz v6, :cond_47b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v2

    if-nez v2, :cond_47b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5f9

    const-string v2, "\n\n"

    :goto_469
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3098
    :cond_47b
    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->profileRow(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Local game (same Wi-Fi)"

    .line 3099
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

    const-string v7, "Host public local game"

    .line 3100
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "Host private local game (code)"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "Find local games"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string v7, "Join by address"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Public games (internet)"

    .line 3101
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

    const/4 v7, 0x6

    .line 3102
    if-eqz v6, :cond_5fd

    move-object v5, v0

    :goto_503
    aput-object v5, v4, v7

    const/4 v5, 0x7

    .line 3103
    if-eqz v6, :cond_508

    :cond_508
    const/4 v7, 0x0

    aput-object v7, v4, v5

    const/16 v7, 0x8

    .line 3104
    if-eqz v6, :cond_605

    const-string v5, "Find public games"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_515
    aput-object v5, v4, v7

    const/16 v7, 0x9

    .line 3105
    if-eqz v6, :cond_608

    const-string v5, "Host public game"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_521
    aput-object v5, v4, v7

    const/16 v7, 0xa

    .line 3106
    if-eqz v6, :cond_60b

    const-string v5, "Host private game (code only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_52d
    aput-object v5, v4, v7

    const/16 v7, 0xb

    .line 3107
    if-eqz v6, :cond_60e

    const-string v5, "Join by code"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_539
    aput-object v5, v4, v7

    const/16 v7, 0xc

    .line 3108
    if-eqz v6, :cond_619

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v5

    if-eqz v5, :cond_611

    const-string v5, "Hide my IP: ON (relay only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_54b
    aput-object v5, v4, v7

    const/16 v7, 0xd

    .line 3109
    if-eqz v6, :cond_624

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->saverPref()Z

    move-result v5

    if-eqz v5, :cond_61c

    const-string v5, "Data saver: ON"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_55d
    aput-object v5, v4, v7

    const/16 v5, 0xe

    .line 3110
    if-eqz v6, :cond_569

    const-string v0, "Privacy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_569
    aput-object v0, v4, v5

    const/16 v0, 0xf

    const-string v5, "Close"

    .line 3111
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x10

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$28;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$28;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$29;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$29;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$30;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$30;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$31;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$31;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x5

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

    aput-object v6, v5, v0

    const/4 v0, 0x7

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

    aput-object v6, v5, v0

    const/16 v0, 0x8

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$32;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$32;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0x9

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$33;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$33;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xa

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$34;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$34;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xb

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$35;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$35;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xc

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$36;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$36;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xd

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$37;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$37;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xe

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$38;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$38;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xf

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3098
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_18

    .line 3095
    :cond_5f5
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto/16 :goto_44c

    .line 3097
    :cond_5f9
    const-string v2, ""

    goto/16 :goto_469

    .line 3102
    :cond_5fd
    const-string v5, "Not available yet in this version"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_503

    :cond_605
    move-object v5, v0

    .line 3104
    goto/16 :goto_515

    :cond_608
    move-object v5, v0

    .line 3105
    goto/16 :goto_521

    :cond_60b
    move-object v5, v0

    .line 3106
    goto/16 :goto_52d

    :cond_60e
    move-object v5, v0

    .line 3107
    goto/16 :goto_539

    .line 3108
    :cond_611
    const-string v5, "Hide my IP: OFF"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_54b

    :cond_619
    move-object v5, v0

    goto/16 :goto_54b

    .line 3109
    :cond_61c
    const-string v5, "Data saver: AUTO (on with mobile data or relay)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_621
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_621} :catch_28

    move-result-object v5

    goto/16 :goto_55d

    :cond_624
    move-object v5, v0

    goto/16 :goto_55d
.end method

.method static skipRange(II)V
    .registers 5

    .prologue
    .line 1255
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

    .line 1256
    :cond_1f
    return-void
.end method

.method private static skipped(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1259
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

    .line 1260
    :cond_15
    return v1

    .line 1259
    :cond_16
    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private static spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2052
    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2053
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v0, v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 2054
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 2055
    const/4 v2, 0x1

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    .line 2056
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 2057
    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 2058
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

    .line 2059
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 2060
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 2061
    const/4 v0, 0x0

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->drawLifeBar:Z

    .line 2062
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2063
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2064
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 2065
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 2066
    const-string v0, "CO-OP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 2067
    const/4 v0, -0x1

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 2068
    const/4 v0, 0x0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 2069
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 2070
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 2071
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2072
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

    .line 2076
    :goto_a3
    return-void

    .line 2073
    :catch_a4
    move-exception v0

    .line 2074
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_a3
.end method

.method static stop()V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 771
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v0, :cond_34

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_34

    .line 772
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_c7

    :cond_1a
    move v0, v2

    :goto_1b
    invoke-static {v3, v4, v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sample(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;Z)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->withLobby([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_34

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$9;

    invoke-direct {v4, v0}, Lfr/testudo/spacecorsair/mod/ModLan$9;-><init>([Ljava/lang/String;)V

    const-string v0, "lobby-sample"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 775
    :cond_34
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 776
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v9, :cond_4d

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_4d

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v0, :cond_4d

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7918

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->exitReloadAt:J

    .line 777
    :cond_4d
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 778
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 779
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 780
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 781
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 782
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 783
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 784
    const-string v5, ""

    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 785
    if-eqz v0, :cond_75

    .line 786
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$10;

    invoke-direct {v6, v4, v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan$10;-><init>(ZLjava/util/concurrent/locks/ReentrantLock;Ljava/net/Socket;)V

    const-string v0, "lan-bye"

    invoke-direct {v5, v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 800
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 802
    :cond_75
    :try_start_75
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_7e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7e} :catch_cf

    .line 803
    :cond_7e
    :goto_7e
    :try_start_7e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_87

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_87} :catch_cd

    .line 804
    :cond_87
    :goto_87
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 805
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    .line 806
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_8e .. :try_end_9c} :catchall_ca

    .line 807
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    .line 808
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 809
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 810
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 811
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 812
    const/high16 v0, -0x80000000

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotAt:J

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->doomTicksShot:I

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->droneLaunchAt:J

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    .line 813
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 814
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 815
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 816
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 817
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 818
    sput v9, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 819
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 820
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->clearChat()V

    .line 821
    return-void

    :cond_c7
    move v0, v1

    .line 772
    goto/16 :goto_1b

    .line 806
    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0

    .line 803
    :catch_cd
    move-exception v0

    goto :goto_87

    .line 802
    :catch_cf
    move-exception v0

    goto :goto_7e
.end method

.method private static testSwitch(J)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1698
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 1709
    :cond_b
    :goto_b
    return-void

    .line 1699
    :cond_c
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    .line 1700
    const-string v0, "corsair_lan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    if-eqz v0, :cond_b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1702
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    .line 1703
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

    .line 1704
    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    goto :goto_b

    .line 1705
    :cond_46
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_b

    .line 1706
    :cond_52
    const-string v1, "duel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1707
    :cond_60
    const-string v1, "duel-off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1708
    :cond_6d
    const-string v1, "join:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$11;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan$11;-><init>(Ljava/lang/String;)V

    const-string v0, "lan-join"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method private static texFor(I)Lfr/testudo/spacecorsair/display/Texture;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 959
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v3

    .line 960
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 961
    if-eqz v0, :cond_14

    monitor-exit v3

    .line 982
    :goto_13
    return-object v0

    .line 962
    :cond_14
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 963
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2c

    :cond_29
    monitor-exit v3

    move-object v0, v2

    goto :goto_13

    .line 964
    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 965
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4b

    move-result-object v1

    .line 967
    const/16 v5, 0x4c

    if-ne v4, v5, :cond_4e

    :try_start_3a
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_aa
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4b

    move-result-object v0

    .line 981
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_49

    :try_start_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_49
    monitor-exit v3

    goto :goto_13

    .line 983
    :catchall_4b
    move-exception v0

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v0

    .line 968
    :cond_4e
    const/16 v5, 0x4d

    if-ne v4, v5, :cond_57

    :try_start_52
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    goto :goto_3e

    .line 969
    :cond_57
    const/16 v5, 0x52

    if-ne v4, v5, :cond_3e

    .line 970
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texByRes:Ljava/lang/reflect/Method;

    if-nez v0, :cond_91

    .line 971
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "textureLibrary"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 972
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 973
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texLib:Ljava/lang/Object;

    .line 974
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

    .line 976
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

    .line 978
    :catch_aa
    move-exception v0

    move-object v0, v2

    .line 979
    goto :goto_3e
.end method

.method private static texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 917
    if-nez p0, :cond_4

    .line 928
    :cond_3
    :goto_3
    return-object v1

    .line 918
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 919
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    move-object v0, v1

    :cond_15
    move-object v1, v0

    goto :goto_3

    .line 920
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

    .line 927
    :goto_33
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 922
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->nameOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v0

    .line 923
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

    .line 924
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

    .line 925
    :cond_74
    const-string v0, ""

    goto :goto_33
.end method

.method private static tryRejoin(Ljava/lang/String;J)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 739
    const/4 v3, 0x0

    .line 741
    :try_start_3
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_78

    .line 742
    :try_start_8
    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v3, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x9c4

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 743
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 744
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->lastCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->writeHello(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 745
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 746
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 747
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 748
    if-nez v4, :cond_3d

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_4f

    .line 749
    :cond_3d
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 750
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_4e

    const-string v3, "Co-op link lost"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 763
    :cond_4e
    :goto_4e
    return v0

    .line 753
    :cond_4f
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 754
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 755
    const/4 v3, 0x2

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 756
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 757
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 758
    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V

    .line 759
    const-string v3, "lan"

    const-string v4, "reconnected"

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_6c} :catch_6d

    goto :goto_4e

    .line 761
    :catch_6d
    move-exception v0

    move-object v0, v2

    .line 762
    :goto_6f
    if-eqz v0, :cond_74

    :try_start_71
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_76

    :cond_74
    :goto_74
    move v0, v1

    .line 763
    goto :goto_4e

    .line 762
    :catch_76
    move-exception v0

    goto :goto_74

    .line 761
    :catch_78
    move-exception v0

    move-object v0, v3

    goto :goto_6f
.end method

.method private static typeCode(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 3184
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$41;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$41;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 3185
    return-void
.end method

.method private static undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;
    .registers 1

    .prologue
    .line 1982
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->noDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1983
    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->limits(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->noDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1984
    :cond_b
    return-object v0
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

    .line 871
    array-length v0, p0

    if-ge v0, v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "short packed message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_e
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 873
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

    .line 874
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

    .line 875
    :cond_48
    new-array v2, v1, [B

    .line 876
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 878
    const/4 v4, 0x5

    :try_start_50
    array-length v5, p0

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 879
    invoke-virtual {v3, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .line 880
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

    .line 881
    :catch_6a
    move-exception v0

    .line 882
    :try_start_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_73

    .line 884
    :catchall_73
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 885
    throw v0

    .line 884
    :cond_78
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 886
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V

    .line 887
    return-void
.end method

.method private static upkeepGuestDrones(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;J)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 2236
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneRetarget:I

    long-to-int v2, p1

    sub-int/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneRetarget:I

    if-gtz v1, :cond_1c

    const/4 v1, 0x1

    .line 2237
    :goto_a
    if-eqz v1, :cond_10

    const/16 v2, 0x3e8

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneRetarget:I

    .line 2238
    :cond_10
    :goto_10
    const/4 v2, 0x2

    if-ge v0, v2, :cond_58

    .line 2239
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v0

    .line 2240
    if-nez v2, :cond_1e

    .line 2238
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    move v1, v0

    .line 2236
    goto :goto_a

    .line 2241
    :cond_1e
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneLeft:[I

    aget v4, v3, v0

    long-to-int v5, p1

    sub-int/2addr v4, v5

    aput v4, v3, v0

    .line 2242
    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v3, :cond_44

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneLeft:[I

    aget v3, v3, v0

    if-lez v3, :cond_44

    if-eqz p0, :cond_44

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v3, :cond_44

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    const/high16 v4, 0x457a0000    # 4000.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_48

    :cond_44
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->dropGuestDrone(I)V

    goto :goto_19

    .line 2243
    :cond_48
    if-eqz v1, :cond_19

    .line 2244
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x44e10000    # 1800.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v3

    .line 2245
    if-eqz v3, :cond_19

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_19

    .line 2248
    :cond_58
    return-void
.end method

.method private static viewHalfH()F
    .registers 1

    .prologue
    .line 2557
    const-string v0, "yDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static viewHalfW()F
    .registers 1

    .prologue
    .line 2555
    const-string v0, "xDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static violation(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 464
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

    .line 465
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v3, :cond_21

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->kick()V

    .line 467
    :goto_20
    return-void

    .line 466
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
    .line 2518
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2519
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2532
    :cond_f
    :goto_f
    return-void

    .line 2520
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_f

    .line 2521
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_f

    .line 2522
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_f

    .line 2523
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_f

    .line 2524
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_f

    .line 2525
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_f

    .line 2526
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_f

    .line 2527
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2528
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2529
    if-eqz v0, :cond_81

    const/4 v1, 0x1

    :goto_71
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2530
    if-eqz v0, :cond_f

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_f

    .line 2529
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
    .line 3006
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->writeField(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method private static writeHello(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v0, "SCLAN2"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 169
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 170
    if-nez p1, :cond_2b

    const-string v0, ""

    :goto_24
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 172
    return-void

    .line 170
    :cond_2b
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeChars(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method
