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

.field private static final FILES:I = 0x5

.field static final GUEST:I = 0x2

.field private static final HELLO:Ljava/lang/String; = "SCLAN2"

.field static final HOST:I = 0x1

.field static final JUMP_KICK:I = 0x4

.field static final JUMP_WINDOW_MS:J = 0x1d4c0L

.field private static final KICKED:I = 0x3

.field private static final MAX_BARS:I = 0x60

.field static final MAX_DEFS:I = 0x1000

.field static final MAX_HULL:F = 5.0E7f

.field private static final MAX_MARKS:I = 0x12c

.field static final MAX_MSG:I = 0x40000

.field private static final MAX_REMOTE:I = 0x898

.field static final MAX_SHOTS_S:I = 0x12c

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

.field static final SHOT_REACH:F = 300.0f

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

.field private static graceAt:J

.field static guestWins:I

.field private static volatile hashCache:Ljava/lang/String;

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

.field private static jumpWin:J

.field private static jumpedIn:Z

.field private static jumps:I

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

.field private static moveGrace:J

.field private static moveHold:Z

.field private static moveSeen:J

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

.field private static obsSpeed:F

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

    .line 339
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    .line 448
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 449
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 889
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, v5}, Ljava/util/zip/Deflater;-><init>(I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    .line 890
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 952
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    .line 953
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    .line 954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    .line 955
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    .line 1177
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1181
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    .line 1229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    .line 1232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    .line 1241
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    .line 1242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    .line 1300
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    .line 1546
    new-array v0, v3, [[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1548
    new-array v0, v3, [[Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1549
    invoke-static {}, Lfr/testudo/spacecorsair/textengine/TextSize;->values()[Lfr/testudo/spacecorsair/textengine/TextSize;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1608
    const/16 v0, 0x60

    filled-new-array {v3, v0}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 1662
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->values()[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 1663
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1850
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    .line 1857
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 1858
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 1859
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 2022
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    .line 2084
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    .line 2245
    const/high16 v0, -0x80000000

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    .line 2248
    new-array v0, v6, [Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2249
    new-array v0, v6, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneLeft:[I

    .line 2396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    .line 2562
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    .line 2563
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

    .line 2722
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2729
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2845
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
    .line 1060
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1061
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1062
    return-object v0
.end method

.method private static acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 490
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

    .line 491
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$6;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$6;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Decline"

    .line 492
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$5;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$5;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_51} :catch_52

    .line 497
    :goto_51
    return-void

    .line 494
    :catch_52
    move-exception v0

    goto :goto_51
.end method

.method static acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    :try_start_2
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 295
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v4, v0, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v4, :cond_12

    :cond_10
    move v0, v1

    .line 302
    :goto_11
    return v0

    .line 296
    :cond_12
    if-nez p1, :cond_16

    const-string p1, ""

    :cond_16
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    .line 297
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;J)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_26

    :cond_24
    move v0, v1

    goto :goto_11

    .line 298
    :cond_26
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 299
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 301
    :catch_2e
    move-exception v0

    move v0, v1

    .line 302
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
    .line 2541
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 2559
    :cond_8
    :goto_8
    return-void

    .line 2543
    :cond_9
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2544
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2545
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

    .line 2556
    :catch_2f
    move-exception v0

    goto :goto_8

    .line 2546
    :cond_31
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_11

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v1, :cond_11

    .line 2547
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 2548
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v1, v2, :cond_11

    .line 2549
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2550
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2551
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2552
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

    .line 2553
    :cond_68
    const/4 v0, 0x4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 2554
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

    .line 2827
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v3, v1, :cond_11

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_11

    if-nez p0, :cond_12

    .line 2835
    :cond_11
    :goto_11
    return v2

    .line 2828
    :cond_12
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2829
    if-eqz v4, :cond_11

    .line 2830
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2831
    if-eqz v3, :cond_11

    .line 2832
    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    add-float/2addr v5, v6

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    add-float/2addr v6, v3

    .line 2833
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 2834
    if-eqz v7, :cond_55

    iget v3, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v8

    :goto_29
    if-eqz v7, :cond_2e

    iget v0, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v0, v8

    .line 2835
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

    .line 2834
    goto :goto_29

    :cond_57
    move v0, v2

    .line 2835
    goto :goto_53
.end method

.method static arenaLevel(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 3041
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

    .line 3053
    :goto_16
    return-object v0

    .line 3043
    :cond_17
    :try_start_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3044
    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 3045
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3046
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 3047
    const v3, 0x7f06002d

    iput v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 3048
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 3049
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

    .line 3051
    :catch_57
    move-exception v0

    .line 3052
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

    .line 3053
    goto :goto_16
.end method

.method private static askAccept(Ljava/lang/String;J)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 463
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    .line 464
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 465
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 467
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->activity()Landroid/app/Activity;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_18
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 470
    :cond_1a
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2a

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$4;

    invoke-direct {v4, v2, p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan$4;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2a} :catch_5c

    .line 474
    :cond_2a
    :goto_2a
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    .line 477
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

    .line 478
    :catch_4b
    move-exception v2

    .line 481
    :cond_4c
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 482
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

    .line 471
    :catch_5c
    move-exception v2

    goto :goto_2a
.end method

.method private static askCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3329
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$49;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan$49;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 3330
    return-void
.end method

.method static askDrones(I)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 2254
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v1, :cond_b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2264
    :cond_b
    :goto_b
    return v0

    .line 2255
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2256
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_22

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3a98

    cmp-long v1, v4, v6

    if-ltz v1, :cond_b

    .line 2257
    :cond_22
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    .line 2259
    :try_start_24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2260
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2261
    const/16 v2, 0xe

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_41} :catch_43

    .line 2262
    const/4 v0, 0x1

    goto :goto_b

    .line 2263
    :catch_43
    move-exception v1

    goto :goto_b
.end method

.method static autoAcceptForTest()V
    .registers 1

    .prologue
    .line 3067
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static b255(F)I
    .registers 3

    .prologue
    .line 1075
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    .line 1076
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
    .line 2101
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
    .line 1612
    const/16 v0, 0x60

    if-lt p1, v0, :cond_6

    const/4 v0, 0x0

    .line 1620
    :cond_5
    :goto_5
    return-object v0

    .line 1613
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    .line 1614
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

    .line 1615
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

    .line 1617
    :cond_50
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 1618
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xa:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xr:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xg:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xb:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 1619
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
    .line 2646
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_5

    .line 2720
    :cond_4
    :goto_4
    return-void

    .line 2648
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2649
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

    .line 2650
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastSendMs:J

    .line 2651
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2652
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 2653
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v2, :cond_4

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v2, :cond_4

    .line 2654
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2655
    if-eqz v4, :cond_4

    .line 2656
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_17b

    .line 2657
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_4

    .line 2658
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v13, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2659
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2660
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2661
    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_bb

    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_67
    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2662
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2663
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2664
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 2665
    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 2666
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-ltz v10, :cond_a3

    .line 2667
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

    .line 2671
    :cond_a3
    :goto_a3
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2672
    iget v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastLevel:I

    .line 2673
    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastNext:J

    .line 2674
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v2, :cond_eb

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModLan;->leanHost(Lfr/testudo/spacecorsair/engine/RenderQueue;ILfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;J)V

    goto/16 :goto_4

    .line 2717
    :catch_b8
    move-exception v2

    goto/16 :goto_4

    .line 2661
    :cond_bb
    const-string v2, ""

    goto :goto_67

    .line 2668
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

    .line 2675
    :cond_eb
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v14, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2676
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2677
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2678
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

    .line 2679
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2680
    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2681
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2682
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2683
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2684
    if-nez v4, :cond_168

    const/4 v2, 0x0

    move v3, v2

    .line 2685
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

    .line 2686
    :cond_153
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 2687
    const/4 v2, 0x2

    invoke-static {v2, v13}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2688
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2678
    :cond_162
    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    goto :goto_103

    :cond_165
    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    goto :goto_108

    .line 2684
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

    .line 2685
    :cond_177
    array-length v2, v4

    add-int/lit8 v2, v2, -0x2

    goto :goto_147

    .line 2689
    :cond_17b
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2690
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2691
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2692
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v8, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2693
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

    .line 2694
    :goto_1ad
    sget-boolean v18, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    .line 2695
    if-eqz v18, :cond_1bf

    if-nez v3, :cond_1bf

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1f4

    cmp-long v2, v10, v12

    if-ltz v2, :cond_4

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2696
    :cond_1bf
    if-eqz v18, :cond_1c4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2697
    :cond_1c4
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2698
    iget-object v2, v8, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_297

    iget-object v2, v8, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_1d1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2699
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2700
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

    .line 2701
    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2702
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfW()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfH()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2703
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2704
    new-instance v15, Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2705
    const/4 v2, 0x0

    .line 2706
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

    .line 2707
    :cond_256
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2708
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2709
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2710
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2711
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 2712
    if-eqz v18, :cond_281

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2713
    :cond_281
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->declare(J)V

    .line 2714
    if-eqz v18, :cond_29b

    const/16 v2, 0xb

    :goto_288
    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2715
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2693
    :cond_293
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1ad

    .line 2698
    :cond_297
    const-string v2, ""
    :try_end_299
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_299} :catch_b8

    goto/16 :goto_1d1

    .line 2714
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

    .line 647
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 648
    const v2, 0x8000

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 649
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 650
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 651
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 652
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 653
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 654
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    .line 655
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    .line 656
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

    .line 657
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

    .line 658
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 659
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

    .line 660
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->resetTables()V

    .line 661
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 662
    const-string v0, "Co-op connected"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 663
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

    .line 664
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->announce:Z

    .line 665
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 666
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 667
    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_b4

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    move-object v6, p0

    .line 668
    :cond_b4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$7;

    invoke-direct {v2, p1, p2, v6, v0}, Lfr/testudo/spacecorsair/mod/ModLan$7;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/io/DataInputStream;)V

    const-string v0, "lan-read"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    .line 702
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$8;

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLan$8;-><init>(JLjava/util/concurrent/locks/ReentrantLock;Ljava/io/DataOutputStream;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    const-string v2, "lan-write"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    .line 735
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 736
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 737
    return-void

    .line 659
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
    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 559
    :cond_9
    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 560
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 561
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 562
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

    .line 563
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

    .line 566
    :catch_4f
    move-exception v0

    .line 569
    :cond_50
    :try_start_50
    const-string v0, "255.255.255.255"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_5a

    .line 570
    :goto_59
    return-object v1

    .line 569
    :catch_5a
    move-exception v0

    goto :goto_59
.end method

.method static buttonLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3090
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_f

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_f

    const-string v0, "Multiplayer"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3091
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
    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aget-object v23, v2, v3

    .line 1085
    const/16 v22, 0x0

    .line 1086
    :goto_10
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_527

    move/from16 v0, v22

    move/from16 v1, p8

    if-ge v0, v1, :cond_527

    .line 1087
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2f

    move/from16 v0, p1

    move/from16 v1, p4

    if-ge v0, v1, :cond_2f

    move/from16 v2, v22

    .line 1086
    :goto_2a
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, v2

    goto :goto_10

    .line 1088
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

    .line 1089
    :cond_41
    aget-object v13, v23, p1

    .line 1090
    if-eqz v13, :cond_528

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    if-nez v2, :cond_528

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fBack:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move/from16 v2, v22

    goto :goto_2a

    .line 1091
    :cond_54
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fType:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1092
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPos:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1093
    if-nez v2, :cond_67

    move/from16 v2, v22

    goto :goto_2a

    .line 1094
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

    .line 1095
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fZoom:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    .line 1096
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_2d3

    .line 1097
    iget-object v3, v13, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 1098
    if-eqz v3, :cond_528

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eq v3, v4, :cond_528

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-ne v3, v4, :cond_98

    move/from16 v2, v22

    goto :goto_2a

    .line 1099
    :cond_98
    instance-of v4, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    if-eqz v4, :cond_52c

    .line 1100
    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v5, v7, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    .line 1101
    check-cast v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    iget-object v14, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;->base:Lfr/testudo/spacecorsair/display/Drawable;

    move v11, v4

    move v10, v5

    move v9, v6

    .line 1103
    :goto_ae
    iget-object v3, v14, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->defId(Lfr/testudo/spacecorsair/display/Texture;)I

    move-result v4

    .line 1104
    if-gez v4, :cond_ba

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 1105
    :cond_ba
    instance-of v3, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1106
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v5, :cond_1ef

    .line 1107
    if-eqz v3, :cond_110

    move-object v5, v14

    check-cast v5, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v21, v5

    .line 1109
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

    .line 1110
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1111
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

    .line 1107
    :cond_110
    const/4 v5, 0x0

    move-object/from16 v21, v5

    goto :goto_c7

    .line 1113
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

    .line 1114
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

    .line 1115
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

    .line 1116
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

    .line 1114
    invoke-static/range {v2 .. v21}, Lfr/testudo/spacecorsair/mod/ModLanSync;->sprite(Ljava/io/DataOutputStream;ZIFFFIIIIIFFFFFFZFF)Z

    move-result v2

    if-eqz v2, :cond_528

    .line 1116
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1113
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

    .line 1115
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

    .line 1116
    :cond_1e9
    const/16 v20, 0x0

    goto :goto_19e

    :cond_1ec
    const/16 v21, 0x0

    goto :goto_1ae

    .line 1119
    :cond_1ef
    if-eqz v3, :cond_2a9

    const/4 v5, 0x1

    :goto_1f2
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1120
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1121
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

    .line 1122
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

    .line 1123
    if-eqz v3, :cond_2b6

    .line 1124
    check-cast v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1125
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

    .line 1126
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1127
    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1128
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

    .line 1129
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

    .line 1134
    :cond_2a5
    :goto_2a5
    add-int/lit8 v2, v22, 0x1

    .line 1135
    goto/16 :goto_2a

    .line 1119
    :cond_2a9
    const/4 v5, 0x0

    goto/16 :goto_1f2

    .line 1125
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

    .line 1131
    :cond_2b6
    if-eqz v12, :cond_2d1

    const/4 v2, 0x1

    :goto_2b9
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1132
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2a5

    .line 1131
    :cond_2d1
    const/4 v2, 0x0

    goto :goto_2b9

    .line 1135
    :cond_2d3
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_38a

    .line 1136
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fText:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 1137
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fTSize:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1138
    if-eqz v11, :cond_528

    if-eqz v10, :cond_528

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2f9

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 1139
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

    .line 1140
    :cond_32e
    const/4 v3, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1141
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1142
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

    .line 1143
    if-eqz v12, :cond_388

    const/4 v2, 0x1

    :goto_36d
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1144
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1145
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->forWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1146
    add-int/lit8 v2, v22, 0x1

    .line 1147
    goto/16 :goto_2a

    .line 1143
    :cond_388
    const/4 v2, 0x0

    goto :goto_36d

    .line 1147
    :cond_38a
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_407

    .line 1148
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

    .line 1149
    :cond_3bc
    const/4 v3, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1150
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1151
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

    .line 1152
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1153
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1154
    :cond_407
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_528

    .line 1155
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1156
    instance-of v4, v3, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-nez v4, :cond_419

    move/from16 v2, v22

    goto/16 :goto_2a

    :cond_419
    move-object v9, v3

    .line 1157
    check-cast v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 1158
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_48c

    .line 1159
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1160
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

    .line 1161
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

    .line 1162
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

    .line 1165
    :cond_48c
    const/4 v3, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1166
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1167
    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1168
    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->height:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1169
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

    .line 1170
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

    .line 1171
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1174
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
    .line 3074
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    .line 3075
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
    .line 438
    if-nez p0, :cond_5

    const-string v0, ""

    .line 444
    :goto_4
    return-object v0

    .line 439
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_2f

    .line 441
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 442
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2c

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 444
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static codeCheck(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    .prologue
    const/16 v12, 0x100

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 148
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    if-eqz v0, :cond_b

    move v0, v1

    .line 166
    :goto_a
    return v0

    .line 149
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 150
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    monitor-enter v6

    .line 151
    :try_start_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 152
    if-eqz v0, :cond_2e

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 153
    :cond_2e
    if-eqz v0, :cond_3c

    const/4 v7, 0x0

    aget-wide v8, v0, v7

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3c

    monitor-exit v6

    move v0, v2

    goto :goto_a

    .line 154
    :cond_3c
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v3, :cond_4f

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    monitor-exit v6

    move v0, v1

    goto :goto_a

    .line 155
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_58

    monitor-exit v6

    move v0, v3

    goto :goto_a

    .line 156
    :cond_58
    if-nez v0, :cond_a7

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v12, :cond_8b

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    :cond_6c
    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v0, v8, v10

    if-lez v0, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6c

    .line 167
    :catchall_88
    move-exception v0

    monitor-exit v6
    :try_end_8a
    .catchall {:try_start_12 .. :try_end_8a} :catchall_88

    throw v0

    .line 161
    :cond_8b
    :try_start_8b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v12, :cond_97

    monitor-exit v6

    move v0, v2

    goto/16 :goto_a

    .line 162
    :cond_97
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    .line 163
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->badCodes:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_a7
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    aput-wide v4, v0, v1

    .line 166
    monitor-exit v6
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_88

    move v0, v3

    goto/16 :goto_a
.end method

.method private static connectTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 3340
    :goto_6
    return-void

    .line 3334
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$50;

    invoke-direct {v1, p1, p2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$50;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    const-string v2, "lan-join"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3339
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method static contentHash()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 187
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->hashCache:Ljava/lang/String;

    .line 188
    if-eqz v0, :cond_6

    .line 210
    :goto_5
    return-object v0

    .line 189
    :cond_6
    const-class v4, Lfr/testudo/spacecorsair/mod/ModLan;

    monitor-enter v4

    .line 190
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->hashCache:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->hashCache:Ljava/lang/String;

    monitor-exit v4

    goto :goto_5

    .line 211
    :catchall_11
    move-exception v0

    monitor-exit v4
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v0

    .line 191
    :cond_14
    :try_start_14
    const-string v0, "?"
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_11

    .line 192
    const/4 v1, 0x0

    .line 194
    :try_start_17
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    .line 195
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 196
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2c} :catch_b0
    .catchall {:try_start_17 .. :try_end_2c} :catchall_a1

    .line 197
    const/high16 v1, 0x10000

    :try_start_2e
    new-array v1, v1, [B

    .line 198
    :goto_30
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_68

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3a} :catch_3b
    .catchall {:try_start_2e .. :try_end_3a} :catchall_ac

    goto :goto_30

    .line 203
    :catch_3b
    move-exception v1

    .line 204
    :goto_3c
    :try_start_3c
    const-string v1, "?"
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_ac

    .line 206
    if-eqz v0, :cond_43

    :try_start_40
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_9e
    .catchall {:try_start_40 .. :try_end_43} :catchall_11

    :cond_43
    move-object v0, v1

    .line 208
    :goto_44
    :try_start_44
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->hashCache:Ljava/lang/String;

    .line 209
    :cond_4e
    const-string v1, "lan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content hash "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_44 .. :try_end_67} :catchall_11

    goto :goto_5

    .line 199
    :cond_68
    :try_start_68
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 201
    :goto_72
    const/16 v2, 0x8

    if-ge v1, v2, :cond_90

    const-string v2, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v3, v1

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 202
    :cond_90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_93} :catch_3b
    .catchall {:try_start_68 .. :try_end_93} :catchall_ac

    move-result-object v1

    .line 206
    if-eqz v0, :cond_99

    :try_start_96
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_99} :catch_9b
    .catchall {:try_start_96 .. :try_end_99} :catchall_11

    :cond_99
    move-object v0, v1

    goto :goto_44

    :catch_9b
    move-exception v0

    move-object v0, v1

    .line 207
    goto :goto_44

    .line 206
    :catch_9e
    move-exception v0

    move-object v0, v1

    .line 207
    goto :goto_44

    .line 206
    :catchall_a1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_a4
    if-eqz v3, :cond_a9

    :try_start_a6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_aa
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_11

    .line 207
    :cond_a9
    :goto_a9
    :try_start_a9
    throw v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_11

    .line 206
    :catch_aa
    move-exception v0

    goto :goto_a9

    :catchall_ac
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_a4

    .line 203
    :catch_b0
    move-exception v0

    move-object v0, v1

    goto :goto_3c
.end method

.method public static countsAsEnemy(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 2154
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

    .line 2026
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2027
    if-eqz v0, :cond_c

    .line 2036
    :goto_b
    return-object v0

    .line 2028
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_17
    if-ge v0, v4, :cond_54

    aget-object v5, v3, v0

    .line 2030
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_26

    .line 2029
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2031
    :cond_26
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2032
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

    .line 2034
    :cond_54
    new-array v0, v1, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2035
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private static declare(J)V
    .registers 8

    .prologue
    .line 2054
    :try_start_0
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 2072
    :cond_a
    :goto_a
    return-void

    .line 2055
    :cond_b
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    .line 2056
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->mine()Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    move-result-object v0

    .line 2057
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v1, :cond_30

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hasDev(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2058
    const-string v0, "DEV ships and DEV gear cannot be used in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 2059
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_a

    .line 2069
    :catch_2e
    move-exception v0

    goto :goto_a

    .line 2062
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

    .line 2063
    :cond_42
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->declSent:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 2064
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->declSentAt:J

    .line 2065
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->encode(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)[B

    move-result-object v0

    .line 2066
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2067
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2068
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

    .line 986
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v2

    .line 987
    if-nez v2, :cond_9

    move v0, v1

    .line 1003
    :goto_8
    return v0

    .line 988
    :cond_9
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v3

    .line 989
    :try_start_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 990
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 1004
    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v0

    .line 991
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

    .line 992
    :cond_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 993
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_1c

    .line 995
    :try_start_3e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 996
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 997
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 998
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 999
    const/4 v2, 0x1

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_56} :catch_5c
    .catchall {:try_start_3e .. :try_end_56} :catchall_1c

    .line 1003
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 1000
    :catch_5c
    move-exception v0

    .line 1001
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

    .line 1486
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x60

    if-le v2, v3, :cond_14

    .line 1501
    :cond_13
    :goto_13
    return v0

    .line 1487
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1488
    const/16 v3, 0x52

    if-ne v2, v3, :cond_33

    .line 1490
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_7d

    move-result v2

    .line 1491
    ushr-int/lit8 v3, v2, 0x10

    const/16 v4, 0x7f02

    if-eq v3, v4, :cond_31

    ushr-int/lit8 v2, v2, 0x10

    const/16 v3, 0x7f03

    if-ne v2, v3, :cond_13

    :cond_31
    move v0, v1

    goto :goto_13

    .line 1496
    :cond_33
    const/16 v3, 0x4c

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_13

    :cond_3b
    move v2, v1

    .line 1497
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 1498
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1499
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

    .line 1497
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1501
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

    .line 1492
    :catch_7d
    move-exception v1

    goto :goto_13
.end method

.method static defineForTest(ILfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 3080
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
    .line 2168
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 2175
    :goto_9
    return v0

    .line 2170
    :cond_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_41

    .line 2171
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    .line 2172
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 2173
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

    .line 2174
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 2175
    const/4 v0, 0x1

    goto :goto_9

    .line 2170
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

    .line 2325
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v0, v0, p0

    .line 2326
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aput-object v2, v1, p0

    .line 2327
    if-eqz v0, :cond_14

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 2328
    :cond_14
    return-void
.end method

.method static duel(Z)V
    .registers 4

    .prologue
    .line 2866
    if-eqz p0, :cond_7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_7

    .line 2869
    :goto_6
    return-void

    .line 2867
    :cond_7
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2868
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

    .line 2854
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

    .line 3028
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

    .line 3036
    :cond_15
    :goto_15
    return p1

    .line 3030
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

    .line 3031
    :goto_23
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 3032
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_15

    .line 3033
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 3034
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_15

    .line 3030
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

    .line 1262
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

    .line 1277
    :cond_15
    :goto_15
    return-object v0

    .line 1263
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

    .line 1266
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    const-class v3, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1267
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1268
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_42
    if-ge v2, v5, :cond_83

    aget-object v0, v4, v2

    .line 1269
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1270
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

    .line 1276
    :goto_6c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_15

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1268
    :cond_7c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 1273
    :catch_80
    move-exception v0

    move-object v0, v1

    .line 1274
    goto :goto_6c

    :cond_83
    move-object v0, v1

    goto :goto_6c
.end method

.method private static exitFrame()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 1808
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

    .line 1824
    :cond_11
    :goto_11
    return-void

    .line 1809
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

    .line 1820
    :catch_2d
    move-exception v0

    .line 1821
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    .line 1822
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

    .line 1810
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

    .line 1811
    :cond_67
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1812
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1813
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

    .line 1814
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    .line 1815
    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v2, v3, :cond_11

    .line 1816
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 1817
    if-eqz v1, :cond_9e

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    if-nez v2, :cond_a7

    :cond_9e
    const-string v0, "lan"

    const-string v1, "exit reload skipped: no gate"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1818
    :cond_a7
    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
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
    .line 3000
    const/high16 v2, 0x43f00000    # 480.0f

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f19999a    # 0.6f

    move v0, p0

    move v1, p1

    :try_start_e
    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    .line 3001
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_19

    .line 3005
    :goto_18
    return-void

    .line 3002
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method private static extent(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 2637
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

    .line 2638
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

    .line 2640
    :goto_2a
    return v0

    .line 2638
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fy:Ljava/lang/reflect/Field;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 2639
    :catch_2e
    move-exception v0

    .line 2640
    const v0, 0x44bb8000    # 1500.0f

    goto :goto_2a
.end method

.method private static extraSwitch(J)V
    .registers 6

    .prologue
    .line 2390
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->extraAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 2394
    :cond_a
    :goto_a
    return-void

    .line 2391
    :cond_b
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->extraAt:J

    .line 2392
    const-string v0, "corsair_bh04"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2393
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

    .line 740
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 741
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 742
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

    .line 743
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 744
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 745
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 746
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 747
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 748
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 749
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

    .line 750
    if-eqz v1, :cond_69

    sput-boolean v10, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    .line 751
    :cond_69
    if-eqz v6, :cond_9b

    .line 752
    if-ne v2, v10, :cond_87

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_87

    .line 753
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 754
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 788
    :cond_83
    :goto_83
    return-void

    .line 749
    :cond_84
    const-string v0, ""

    goto :goto_5b

    .line 755
    :cond_87
    if-ne v2, v11, :cond_83

    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 756
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 757
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->rejoin()V

    goto :goto_83

    .line 761
    :cond_9b
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 763
    if-ne v2, v10, :cond_ba

    .line 764
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 766
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 767
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 768
    const-string v0, "Co-op link lost. Waiting 30 s for your friend to reconnect..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_83

    .line 769
    :cond_ba
    if-ne v2, v11, :cond_83

    if-eqz v3, :cond_83

    .line 770
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 771
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 772
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$9;

    invoke-direct {v4, v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan$9;-><init>(JLjava/lang/String;)V

    const-string v0, "lan-rejoin"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_83
.end method

.method static filesText()Ljava/lang/String;
    .registers 1

    .prologue
    .line 214
    const-string v0, "Same version, but the game files differ. Both phones need the same APK file."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fin(F)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1480
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

    .line 1481
    :cond_14
    return p0
.end method

.method private static findHosts(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 3285
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

    .line 3286
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$45;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$45;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lan-scan"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3297
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3298
    return-void
.end method

.method private static fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 14

    .prologue
    .line 2181
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2182
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 2183
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2184
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

    .line 2233
    :cond_29
    :goto_29
    return-void

    .line 2185
    :cond_2a
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->newProjectile(Ljava/lang/Class;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v4

    .line 2186
    if-eqz v4, :cond_29

    .line 2187
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

    .line 2190
    :cond_40
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    if-eqz v0, :cond_b3

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-object v1, v0

    .line 2191
    :goto_47
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2192
    if-eqz v2, :cond_b9

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xfa

    sub-long/2addr v6, v8

    long-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2193
    :goto_64
    const/high16 v5, 0x43960000    # 300.0f

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->radius:F

    add-float/2addr v1, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->obsSpeed:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v1

    .line 2194
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v1, v5, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FFF)Z

    move-result v1

    if-nez v1, :cond_8b

    if-eqz v2, :cond_bb

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-nez v1, :cond_bb

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-static {v4, v1, v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FFF)Z

    move-result v0

    if-eqz v0, :cond_bb

    :cond_8b
    const/4 v0, 0x1

    .line 2195
    :goto_8c
    if-nez v0, :cond_bd

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_97} :catch_98

    goto :goto_29

    .line 2230
    :catch_98
    move-exception v0

    .line 2231
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

    goto/16 :goto_29

    .line 2190
    :cond_b3
    :try_start_b3
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    move-object v1, v0

    goto :goto_47

    .line 2192
    :cond_b9
    const/4 v0, 0x0

    goto :goto_64

    .line 2194
    :cond_bb
    const/4 v0, 0x0

    goto :goto_8c

    .line 2197
    :cond_bd
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2199
    if-nez v0, :cond_1b3

    .line 2200
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    .line 2201
    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-eqz v2, :cond_f3

    sub-long v0, v6, v0

    const-wide/16 v8, 0x2710

    cmp-long v0, v0, v8

    if-lez v0, :cond_f3

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_e7

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    :cond_e7
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2202
    :cond_f3
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    move-object v2, v0

    .line 2205
    :goto_f8
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->damageFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2206
    const/4 v1, 0x0

    .line 2207
    array-length v5, v3

    const/4 v0, 0x0

    :goto_ff
    if-ge v0, v5, :cond_124

    aget-object v8, v3, v0

    .line 2208
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v8

    .line 2209
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v9

    if-nez v9, :cond_112

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_11d

    :cond_112
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2210
    :cond_11d
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2207
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    .line 2212
    :cond_124
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_12e

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2214
    :cond_12e
    invoke-static {v2, v1, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->record(Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;FJ)Z

    move-result v0

    if-nez v0, :cond_152

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_146

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    :cond_146
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2215
    :cond_152
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_15a

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_186

    :cond_15a
    const/4 v0, 0x1

    :goto_15b
    invoke-static {v2, v1, v6, v7, v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->allow(Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;FJZ)F

    move-result v0

    .line 2216
    cmpg-float v2, v0, v1

    if-gez v2, :cond_19b

    .line 2217
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    cmp-long v2, v8, v10

    if-lez v2, :cond_175

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2218
    :cond_175
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    .line 2219
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_188

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2215
    :cond_186
    const/4 v0, 0x0

    goto :goto_15b

    .line 2220
    :cond_188
    div-float v1, v0, v1

    .line 2221
    array-length v2, v3

    const/4 v0, 0x0

    :goto_18c
    if-ge v0, v2, :cond_19b

    aget-object v5, v3, v0

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18c

    .line 2223
    :cond_19b
    iput-object p1, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 2224
    const/4 v0, 0x0

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 2225
    const/4 v0, 0x0

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->poisonSource:Lfr/testudo/spacecorsair/business/Element;

    .line 2226
    const/4 v0, 0x0

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    .line 2227
    const/4 v0, 0x0

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPlayer:Z

    .line 2228
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->updateSapCoords()V

    .line 2229
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_1b1
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_1b1} :catch_98

    goto/16 :goto_29

    :cond_1b3
    move-object v2, v0

    goto/16 :goto_f8
.end method

.method private static flushStyles()V
    .registers 7

    .prologue
    .line 2780
    const-class v1, Lfr/testudo/spacecorsair/mod/ModLanSync;

    monitor-enter v1

    .line 2781
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

    .line 2782
    array-length v3, v0

    add-int/lit8 v3, v3, 0x5

    new-array v3, v3, [B

    .line 2783
    const/4 v4, 0x0

    const/16 v5, 0xc

    aput-byte v5, v3, v4

    const/4 v4, 0x4

    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2784
    const/4 v4, 0x0

    const/4 v5, 0x5

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2785
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

    .line 2788
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v0

    .line 2787
    :cond_3a
    :try_start_3a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2788
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 2789
    return-void
.end method

.method static frame()V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1866
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3c

    const-wide/16 v0, 0x10

    .line 1867
    :goto_10
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    .line 1868
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    .line 1869
    const/4 v4, -0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    .line 1870
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    .line 1872
    :try_start_23
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1873
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1874
    :cond_31
    if-eqz v5, :cond_3b

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_12f

    if-nez v4, :cond_4d

    .line 1906
    :cond_3b
    :goto_3b
    return-void

    .line 1866
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

    .line 1875
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

    .line 1876
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

    .line 1877
    :cond_ac
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->testSwitch(J)V

    .line 1878
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->extraSwitch(J)V

    .line 1879
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

    .line 1880
    :cond_e4
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x7d0

    cmp-long v4, v8, v10

    if-lez v4, :cond_f3

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->persistedMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 1881
    :cond_f3
    invoke-static {v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->guestPos(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 1882
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

    .line 1883
    :cond_10a
    const-string v4, "lan"

    const-string v8, "test switch seen: internet session ended"

    invoke-static {v4, v8}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_11b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 1885
    :cond_11b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 1886
    const-string v4, "Test switches are in use. Internet games are off until the game restarts; local games still work."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 1888
    :cond_126
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v4, :cond_136

    .line 1889
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    goto/16 :goto_3b

    .line 1903
    :catch_12f
    move-exception v0

    goto/16 :goto_3b

    .line 1875
    :cond_132
    const-string v4, ""

    goto/16 :goto_82

    .line 1892
    :cond_136
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xbb8

    cmp-long v4, v8, v10

    if-lez v4, :cond_29b

    .line 1893
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    .line 1894
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

    .line 1899
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logOut:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logIn:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logRaw:J

    .line 1901
    :cond_29b
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_2a8

    invoke-static {v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto/16 :goto_3b

    .line 1894
    :cond_2a4
    const-string v4, "guest"

    goto/16 :goto_14f

    .line 1902
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

    .line 943
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 944
    add-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    .line 945
    int-to-byte v2, p0

    aput-byte v2, v1, v4

    .line 946
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

    .line 947
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 948
    return-object v1
.end method

.method static guestActive()Z
    .registers 2

    .prologue
    .line 2530
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
    .line 2337
    :try_start_0
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2338
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 2339
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

    .line 2368
    :cond_1a
    :goto_1a
    return-void

    .line 2340
    :cond_1b
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2341
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 2342
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

    .line 2343
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    .line 2344
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 2345
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

    .line 2365
    :catch_6c
    move-exception v2

    .line 2366
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_1a

    .line 2346
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

    .line 2347
    :cond_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2348
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

    .line 2349
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

    .line 2350
    :cond_c2
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    if-eq v11, v2, :cond_e7

    .line 2351
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

    .line 2352
    :cond_e0
    sput v11, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotAt:J

    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->doomTicksShot:I

    .line 2354
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

    .line 2356
    :cond_f9
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->ship:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->spec(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v2

    .line 2357
    instance-of v12, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v12, :cond_10b

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_1a

    .line 2358
    :cond_10b
    check-cast v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 2359
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->declaredKind(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v12

    .line 2360
    if-eq v12, v4, :cond_11b

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto/16 :goto_1a

    .line 2361
    :cond_11b
    if-eqz v10, :cond_14b

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->declaredSeq(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Z

    move-result v10

    if-eqz v10, :cond_14b

    const/4 v10, 0x1

    .line 2362
    :goto_124
    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v2, v2

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v2, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 2363
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

    .line 2364
    if-gez v2, :cond_1a

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_149} :catch_6c

    goto/16 :goto_1a

    .line 2361
    :cond_14b
    const/4 v10, 0x0

    goto :goto_124
.end method

.method static guestDraw(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2519
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2520
    if-ne p0, v3, :cond_18

    move v0, v1

    :goto_9
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipNow:Z

    .line 2521
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v0, :cond_1a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2526
    :goto_17
    return v1

    :cond_18
    move v0, v2

    .line 2520
    goto :goto_9

    .line 2522
    :cond_1a
    if-eq p0, v3, :cond_1e

    move v1, v2

    goto :goto_17

    .line 2524
    :cond_1e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 2525
    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    goto :goto_17

    .line 2524
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

    .line 2271
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 2272
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

    .line 2306
    :cond_19
    :goto_19
    return-void

    .line 2273
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

    .line 2274
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hiveTier(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2276
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

    .line 2302
    :catch_55
    move-exception v0

    .line 2303
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2304
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

    .line 2273
    goto :goto_28

    .line 2277
    :cond_77
    :try_start_77
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v6, 0x44e10000    # 1800.0f

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v6

    .line 2278
    if-eqz v6, :cond_19

    .line 2279
    const/4 v0, 0x0

    const/16 v7, 0x3e7

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;->level:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v1, v2

    move v0, v2

    .line 2281
    :goto_90
    const/4 v2, 0x2

    if-ge v1, v2, :cond_126

    .line 2282
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v1

    if-eqz v2, :cond_a4

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_a4

    .line 2281
    :goto_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 2284
    :cond_a4
    if-nez v1, :cond_11d

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 2283
    :goto_a8
    invoke-static {v0, v7, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 2285
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

    .line 2286
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    const/high16 v8, 0x43340000    # 180.0f

    add-float/2addr v8, v0

    if-nez v1, :cond_120

    const/high16 v0, -0x3e600000    # -20.0f

    :goto_cc
    add-float/2addr v0, v8

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 2287
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v8

    if-nez v1, :cond_123

    const/high16 v0, -0x3d100000    # -120.0f

    :goto_db
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2288
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2289
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 2290
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 2291
    const/4 v0, 0x0

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 2292
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 2293
    const-string v0, "ATK DRONE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 2294
    const/4 v0, -0x1

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 2295
    invoke-virtual {v2, v6}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 2296
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 2297
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aput-object v2, v0, v1

    .line 2298
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneLeft:[I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_LIFE:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 2299
    const/4 v0, 0x1

    goto :goto_a1

    .line 2284
    :cond_11d
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    goto :goto_a8

    .line 2286
    :cond_120
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_cc

    .line 2287
    :cond_123
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_db

    .line 2301
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

    .line 2963
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2964
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_13

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2988
    :cond_12
    :goto_12
    return-void

    .line 2965
    :cond_13
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_44

    .line 2966
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2967
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_41

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->duelDecided()Z

    move-result v0

    if-nez v0, :cond_41

    .line 2968
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    .line 2969
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2970
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2972
    :cond_41
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2974
    :cond_44
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_12

    .line 2975
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    if-le v0, v3, :cond_a3

    move v0, v1

    .line 2976
    :goto_51
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-nez v3, :cond_56

    move v2, v1

    .line 2977
    :cond_56
    if-nez v2, :cond_7a

    if-nez v0, :cond_7a

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v3, v4, :cond_7a

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-gt v3, v1, :cond_7a

    .line 2978
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 2979
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2980
    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {p0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2982
    :cond_7a
    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2983
    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2984
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2985
    if-nez v2, :cond_98

    if-eqz v0, :cond_98

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-gt v1, v5, :cond_98

    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2986
    :cond_98
    if-nez v2, :cond_12

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-gt v1, v5, :cond_12

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    goto/16 :goto_12

    :cond_a3
    move v0, v2

    .line 2975
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

    .line 2415
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_30

    .line 2416
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

    .line 2417
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

    .line 2496
    :cond_2f
    :goto_2f
    return-void

    .line 2415
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 2417
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 2418
    :cond_36
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2420
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

    .line 2421
    if-eq v0, p0, :cond_42

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_42

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2422
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v1, :cond_66

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2423
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

    .line 2424
    :cond_85
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_42

    .line 2426
    :cond_89
    const/4 v0, 0x0

    .line 2427
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

    .line 2428
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

    .line 2427
    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0

    .line 2429
    :cond_cd
    if-eqz v6, :cond_2f

    .line 2430
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 2432
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

    .line 2433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2434
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v2, :cond_fc

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    sub-long v2, v0, v2

    const-wide/16 v8, 0xbb8

    cmp-long v2, v2, v8

    if-lez v2, :cond_2f

    .line 2435
    :cond_fc
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 2436
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    .line 2438
    const/4 v1, 0x0

    .line 2439
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

    .line 2440
    :goto_116
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_15f

    .line 2441
    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v2, :cond_128

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v1, :cond_128

    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2442
    :cond_128
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v2, "VECTOR00_GATE"

    invoke-virtual {v5, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
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

    .line 2446
    :catch_158
    move-exception v0

    goto/16 :goto_2f

    .line 2439
    :cond_15b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_108

    .line 2444
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

    .line 2445
    goto :goto_14b

    .line 2452
    :cond_16b
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v0, :cond_189

    .line 2453
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 2454
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_2a4

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    const/high16 v4, 0x45160000    # 2400.0f

    add-float/2addr v1, v4

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2456
    :goto_181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2457
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2460
    :cond_189
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_193

    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 2461
    :cond_193
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    sub-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sub-float v1, v0, v1

    .line 2462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2463
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v0, v8, v12

    if-nez v0, :cond_2b5

    move v0, v2

    .line 2464
    :goto_1a7
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_1b7

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v10

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    const v7, 0x4e6e6b28    # 1.0E9f

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 2465
    :cond_1b7
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    .line 2467
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v4, v10

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 2468
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v4, :cond_1f9

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1f9

    .line 2469
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    add-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    .line 2470
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1ed

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2471
    :cond_1ed
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    sub-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 2472
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 2475
    :cond_1f9
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    cmp-long v1, v4, v12

    if-gez v1, :cond_203

    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 2476
    :cond_203
    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    sub-long/2addr v4, v8

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    sub-long/2addr v4, v8

    .line 2478
    const/high16 v1, 0x447a0000    # 1000.0f

    :try_start_20d
    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v7, v7, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v8, v7, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-float v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2479
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

    .line 2481
    :goto_227
    cmp-long v0, v4, v12

    if-lez v0, :cond_25f

    .line 2482
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    add-long/2addr v0, v4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    .line 2483
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

    .line 2484
    :goto_244
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    long-to-float v5, v0

    sub-float/2addr v4, v5

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 2485
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

    .line 2487
    :cond_25f
    :goto_25f
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 2488
    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    .line 2489
    iget-boolean v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    if-eqz v0, :cond_2db

    .line 2490
    iget-wide v8, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    cmp-long v0, v8, v12

    if-gtz v0, :cond_2c5

    move v0, v3

    .line 2491
    :goto_271
    iget-object v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v5, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v5, v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->glide([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IF)V

    .line 2492
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

    .line 2494
    :goto_291
    iget-object v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v4, v2, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 2495
    const/high16 v1, 0x43160000    # 150.0f

    add-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->drawLabel(FFLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 2455
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

    .line 2463
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

    .line 2490
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

    .line 2485
    :catch_2d6
    move-exception v0

    goto :goto_25f

    .line 2480
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
    .line 1667
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-gtz v1, :cond_f

    .line 1700
    :cond_e
    :goto_e
    return-void

    .line 1669
    :cond_f
    :try_start_f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 1670
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v14, v2, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1671
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v15, v2

    .line 1672
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-lez v2, :cond_e

    .line 1673
    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    div-float v16, v2, v15

    .line 1674
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1675
    const/4 v2, 0x0

    move v13, v2

    :goto_3c
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-ge v13, v2, :cond_e

    .line 1676
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 1677
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 1678
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

    .line 1679
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v12

    .line 1680
    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v6, v2

    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v3, v6, v3

    .line 1681
    mul-float v6, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v6, v11

    mul-float v11, v15, v15

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_91

    .line 1675
    :cond_8d
    :goto_8d
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3c

    .line 1682
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

    .line 1683
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_bd

    const/4 v2, 0x1

    .line 1684
    :goto_a7
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_cd

    .line 1685
    if-eqz v2, :cond_bf

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/Mission;->targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 1686
    :goto_af
    if-eqz v4, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto :goto_8d

    .line 1697
    :catch_ba
    move-exception v1

    goto/16 :goto_e

    .line 1683
    :cond_bd
    const/4 v2, 0x0

    goto :goto_a7

    .line 1685
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

    .line 1687
    :cond_cd
    if-eqz v2, :cond_105

    .line 1688
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_f9

    const-string v2, "icon_skull"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 1689
    :goto_d9
    if-eqz v2, :cond_fb

    .line 1690
    const/high16 v6, 0x41500000    # 13.0f

    const v3, 0x3f555555

    mul-float v5, v6, v3

    .line 1691
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

    .line 1688
    :cond_f9
    const/4 v2, 0x0

    goto :goto_d9

    .line 1692
    :cond_fb
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-static/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto :goto_8d

    .line 1693
    :cond_105
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    array-length v2, v2

    if-ge v5, v2, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aget-object v2, v2, v5

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_8d

    .line 1694
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
    .line 1723
    :try_start_0
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    if-nez v0, :cond_11

    .line 1733
    :cond_10
    :goto_10
    return-void

    .line 1724
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1725
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

    .line 1726
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_79

    .line 1727
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

    .line 1728
    :goto_4e
    :try_start_4e
    const-string v1, "CO-OP MISSION COMPLETE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1729
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

    .line 1730
    :catch_79
    move-exception v0

    goto :goto_10

    .line 1727
    :catch_7b
    move-exception v1

    goto :goto_4e
.end method

.method private static guestPos(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2733
    :try_start_2
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2734
    if-eqz v2, :cond_e

    iget-object v3, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v3, :cond_f

    .line 2761
    :cond_e
    :goto_e
    return-void

    .line 2735
    :cond_f
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_4c

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4c

    .line 2736
    :goto_18
    if-nez v0, :cond_1e

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    if-eqz v1, :cond_92

    .line 2738
    :cond_1e
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2739
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->posAt:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    .line 2740
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

    .line 2758
    :catch_4a
    move-exception v0

    goto :goto_e

    :cond_4c
    move v0, v1

    .line 2735
    goto :goto_18

    .line 2741
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

    .line 2742
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModLan;->posAt:J

    .line 2743
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    .line 2744
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

    .line 2747
    :cond_92
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    if-eqz v0, :cond_e

    .line 2748
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2749
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pos"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2750
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2751
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pos"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2752
    iget-object v1, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->posOf(Ljava/lang/String;Ljava/lang/String;J)[F

    move-result-object v0

    .line 2753
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_e

    .line 2754
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2755
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2756
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2757
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

.method static hashForTest(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 3063
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->hashCache:Ljava/lang/String;

    return-void
.end method

.method private static hello(Ljava/net/Socket;J)Z
    .registers 16

    .prologue
    .line 598
    const/16 v0, 0xbb8

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 599
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 600
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 601
    const-string v0, "SCLAN2"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 602
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 603
    const-string v1, "SCLAN2"

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x0

    .line 632
    :goto_32
    return v0

    .line 604
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

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 606
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 608
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

    .line 609
    if-eqz v0, :cond_91

    const/4 v0, 0x3

    :try_start_7d
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const/4 v0, 0x0

    goto :goto_32

    .line 606
    :cond_85
    const-string v0, ""
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_87} :catch_8e

    move-object v1, v0

    goto :goto_69

    .line 608
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

    .line 631
    :catch_8e
    move-exception v0

    .line 632
    const/4 v0, 0x0

    goto :goto_32

    .line 610
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

    .line 611
    :cond_c4
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 612
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeChars(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 613
    const/16 v4, 0x20

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 614
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 615
    instance-of v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-nez v4, :cond_115

    .line 616
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->codeCheck(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 617
    if-eqz v0, :cond_115

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

    .line 619
    :cond_115
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->contentHash()Ljava/lang/String;

    move-result-object v0

    .line 620
    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_127

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_149

    :cond_127
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string v0, "lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refused files "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_32

    .line 621
    :cond_149
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v0, :cond_1a4

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ac

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    :cond_15f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_1ac

    const/4 v0, 0x1

    .line 622
    :goto_16a
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    if-nez v0, :cond_1ae

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    if-nez v0, :cond_1ae

    invoke-static {v2, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->askAccept(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1ae

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

    .line 621
    :cond_1a4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15f

    :cond_1ac
    const/4 v0, 0x0

    goto :goto_16a

    .line 624
    :cond_1ae
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 625
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 627
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 628
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 629
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;
    :try_end_1d1
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_1d1} :catch_8e

    .line 630
    const/4 v0, 0x1

    goto/16 :goto_32
.end method

.method static host()V
    .registers 5

    .prologue
    .line 224
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 279
    :goto_8
    return-void

    .line 226
    :cond_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 227
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 228
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 229
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 230
    const-string v2, "Waiting for a player to join..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 231
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$2;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$2;-><init>(J)V

    const-string v4, "lan-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    .line 253
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 254
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$3;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$3;-><init>(J)V

    const-string v0, "lan-beacon"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    .line 278
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
    .line 2881
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v0, :cond_36

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_36

    .line 2882
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2883
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2884
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

    .line 2885
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2886
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    .line 2887
    if-eqz p2, :cond_4c

    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    :goto_2e
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2888
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2889
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2891
    :cond_36
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_4e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-nez v0, :cond_4e

    .line 2892
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2893
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    .line 2894
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2895
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    .line 2945
    :cond_4b
    :goto_4b
    return-void

    .line 2887
    :cond_4c
    const/4 v0, 0x0

    goto :goto_2e

    .line 2898
    :cond_4e
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_4b

    .line 2899
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_92

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_92

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

    goto :goto_4b

    .line 2900
    :cond_92
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v0

    if-nez v0, :cond_e2

    .line 2901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2902
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    if-eqz v2, :cond_aa

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1770

    cmp-long v2, v2, v4

    if-lez v2, :cond_4b

    .line 2903
    :cond_aa
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2904
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    .line 2905
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_bd

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v0, :cond_bd

    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2906
    :cond_bd
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v1, "VECTOR00_GATE"

    invoke-virtual {p1, v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
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

    goto/16 :goto_4b

    .line 2911
    :cond_e2
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_137

    .line 2912
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_f4

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2913
    :cond_f4
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    if-eqz v0, :cond_fe

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2914
    :cond_fe
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

    .line 2919
    :cond_137
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    if-eqz v0, :cond_1e0

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2920
    :goto_13d
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

    .line 2921
    if-eqz p2, :cond_1e6

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e6

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

    if-lez v0, :cond_1e6

    const/4 v0, 0x1

    .line 2922
    :goto_16c
    if-eqz v0, :cond_18e

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

    .line 2923
    :cond_18e
    if-eqz p2, :cond_1e8

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    if-gt v1, v2, :cond_198

    if-eqz v0, :cond_1e8

    .line 2924
    :cond_198
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundAt:J

    .line 2925
    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2926
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    .line 2927
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2928
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2929
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_1c7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2930
    :cond_1c7
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    .line 2944
    :cond_1d4
    :goto_1d4
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_4b

    .line 2919
    :cond_1e0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    goto/16 :goto_13d

    .line 2921
    :cond_1e6
    const/4 v0, 0x0

    goto :goto_16c

    .line 2933
    :cond_1e8
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_1d4

    .line 2934
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2935
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundAt:J

    .line 2936
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2937
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2938
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2939
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2940
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_225

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2941
    :cond_225
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2942
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelEndAt:J

    goto :goto_1d4
.end method

.method static hostForTest()V
    .registers 1

    .prologue
    .line 3060
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 22

    .prologue
    .line 1912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1913
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_39

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->devGearAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_39

    .line 1914
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->devGearAt:J

    .line 1915
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devGear()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1916
    const-string v2, "lan"

    const-string v3, "host fitted DEV gear: session ended"

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 1918
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 1919
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 1920
    const-string v2, "DEV ships and DEV gear cannot be used in internet games."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 2011
    :cond_38
    :goto_38
    return-void

    .line 1926
    :cond_39
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1927
    :try_start_3c
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1928
    new-instance v6, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1929
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1930
    new-instance v7, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1931
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDrones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1932
    new-instance v8, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1933
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inDooms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1934
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_a5

    .line 1935
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v9, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1936
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->hostMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;)V

    .line 1937
    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    .line 1938
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

    .line 1940
    :goto_9f
    if-nez v2, :cond_aa

    .line 1941
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    goto :goto_38

    .line 1934
    :catchall_a5
    move-exception v2

    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v2

    .line 1938
    :cond_a8
    const/4 v2, 0x0

    goto :goto_9f

    .line 1944
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

    .line 1945
    :cond_c6
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1946
    if-eqz v4, :cond_38

    .line 1948
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    if-eq v5, v2, :cond_1ab

    .line 1949
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1950
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sub-float v3, v2, v3

    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sget v10, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    sub-float v10, v2, v10

    .line 1951
    const v2, 0x3c83126f    # 0.016f

    iget-wide v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sub-long/2addr v12, v14

    long-to-float v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1952
    sget-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->moveSeen:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_119

    iget-wide v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->moveSeen:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1f4

    cmp-long v2, v12, v14

    if-lez v2, :cond_119

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-nez v2, :cond_119

    iget-wide v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->graceAt:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x7530

    cmp-long v2, v12, v14

    if-lez v2, :cond_119

    iget-wide v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    const-wide/16 v14, 0xbb8

    add-long/2addr v12, v14

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->moveGrace:J

    iget-wide v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->graceAt:J

    .line 1953
    :cond_119
    iget-wide v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->moveSeen:J

    .line 1954
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

    .line 1955
    mul-float/2addr v2, v2

    mul-float/2addr v12, v12

    add-float/2addr v2, v12

    const v12, 0x4b742400    # 1.6E7f

    cmpg-float v2, v2, v12

    if-gez v2, :cond_1a6

    const/4 v2, 0x1

    .line 1956
    :goto_13a
    const v12, 0x45bb8000    # 6000.0f

    mul-float/2addr v12, v11

    const v13, 0x44bb8000    # 1500.0f

    add-float/2addr v12, v13

    .line 1957
    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_260

    if-nez v2, :cond_260

    mul-float v2, v3, v3

    mul-float v13, v10, v10

    add-float/2addr v2, v13

    mul-float/2addr v12, v12

    cmpl-float v2, v2, v12

    if-lez v2, :cond_260

    .line 1958
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-nez v2, :cond_1a8

    iget-wide v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->moveGrace:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_1a8

    .line 1959
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1961
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->jumpWin:J

    sub-long v10, v2, v10

    const-wide/32 v12, 0x1d4c0

    cmp-long v10, v10, v12

    if-lez v10, :cond_17c

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpWin:J

    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumps:I

    .line 1962
    :cond_17c
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumps:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumps:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1a8

    const-string v2, "lan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movement jumps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->jumps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "movement"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->violation(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1955
    :cond_1a6
    const/4 v2, 0x0

    goto :goto_13a

    .line 1964
    :cond_1a8
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1971
    :cond_1ab
    :goto_1ab
    iget v3, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    .line 1972
    mul-float v10, v3, v3

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    .line 1973
    const v11, 0x461c4000    # 10000.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1c7

    const/high16 v11, 0x42c80000    # 100.0f

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    div-float v10, v11, v10

    mul-float/2addr v3, v10

    mul-float/2addr v2, v10

    .line 1974
    :cond_1c7
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

    .line 1975
    sget-boolean v11, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-eqz v11, :cond_28c

    iget-object v10, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v11, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sget v12, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    invoke-virtual {v10, v11, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1977
    :goto_1e5
    iget-object v10, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v10, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1978
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1979
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1981
    const v2, 0x49742400    # 1000000.0f

    iget v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    sub-float/2addr v2, v3

    .line 1982
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_20a

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    add-float/2addr v3, v2

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v3, :cond_20a

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 1983
    :cond_20a
    const v2, 0x49742400    # 1000000.0f

    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1984
    const v2, 0x49742400    # 1000000.0f

    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1985
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29c

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    iget v10, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    div-float/2addr v2, v3

    :goto_228
    iput v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 1986
    const/4 v2, 0x0

    iput-boolean v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 1987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    .line 1988
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    cmp-long v5, v2, v10

    if-eqz v5, :cond_23f

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    .line 1989
    :cond_23f
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_243
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1990
    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    const/16 v6, 0x12c

    if-le v5, v6, :cond_29f

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_243

    .line 1966
    :cond_260
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1967
    sget-wide v12, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_27e

    const v2, 0x45bb8000    # 6000.0f

    mul-float/2addr v3, v3

    mul-float/2addr v10, v10

    add-float/2addr v3, v10

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    div-float/2addr v3, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->obsSpeed:F

    .line 1968
    :cond_27e
    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    iget v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    iget-wide v2, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    goto/16 :goto_1ab

    .line 1976
    :cond_28c
    iget-object v11, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    mul-float v13, v3, v10

    add-float/2addr v12, v13

    iget v13, v5, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    mul-float/2addr v10, v2

    add-float/2addr v10, v13

    invoke-virtual {v11, v12, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_1e5

    .line 1985
    :cond_29c
    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_228

    .line 1991
    :cond_29f
    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_243

    .line 1993
    :cond_2a3
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v2, :cond_2cf

    .line 1994
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDrones([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_2ab

    .line 1995
    :cond_2bb
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2bf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDoom([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_2bf

    .line 1997
    :cond_2cf
    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->upkeepGuestDrones(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;J)V

    .line 1998
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    sub-long v2, v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1999
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v2, :cond_38

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_38

    .line 2000
    const-wide/16 v2, 0x3e8

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 2001
    iget-object v2, v9, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f0
    :goto_2f0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 2002
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v3, :cond_2f0

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v3, :cond_2f0

    if-eq v2, v4, :cond_2f0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-nez v3, :cond_2f0

    move-object v3, v2

    .line 2003
    check-cast v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2004
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    if-eq v6, v0, :cond_319

    iget-object v6, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v6, v4, :cond_2f0

    .line 2006
    :cond_319
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 2007
    cmpg-float v2, v6, v2

    if-gez v2, :cond_338

    move-object v2, v4

    .line 2008
    :goto_330
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eq v6, v2, :cond_2f0

    invoke-virtual {v3, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_2f0

    :cond_338
    move-object/from16 v2, p0

    .line 2007
    goto :goto_330
.end method

.method static hostHides(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1304
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

    .line 1632
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1633
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1635
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

    .line 1636
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

    .line 1638
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

    .line 1639
    const/16 v1, 0x12c

    if-lt v7, v1, :cond_7a

    .line 1652
    :cond_5b
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 1653
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 1654
    const/4 v2, 0x0

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, v1, v2

    .line 1655
    const/4 v2, 0x0

    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1656
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 1660
    :goto_79
    return-void

    .line 1640
    :cond_7a
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_4b

    if-eq v0, p0, :cond_4b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq v0, v1, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    if-eqz v1, :cond_4b

    .line 1641
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-eqz v1, :cond_125

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    if-eqz v1, :cond_125

    move v6, v5

    .line 1642
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

    .line 1643
    :cond_a9
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const v4, 0x469c4000    # 20000.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_4b

    .line 1644
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

    .line 1645
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

    .line 1646
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

    .line 1647
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

    .line 1649
    :goto_11b
    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1650
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 1651
    goto/16 :goto_4b

    :cond_125
    move v6, v3

    .line 1641
    goto/16 :goto_93

    :cond_128
    move v4, v3

    .line 1644
    goto :goto_bf

    :cond_12a
    move v1, v3

    goto :goto_c2

    .line 1648
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

    .line 1657
    :catch_14d
    move-exception v0

    .line 1658
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    goto/16 :goto_79

    .line 1645
    :catch_153
    move-exception v4

    goto/16 :goto_d3
.end method

.method static hostNet()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 284
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 285
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 286
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 287
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 288
    const-string v0, "Waiting for a player to join..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 289
    return-void
.end method

.method static hostNetForTest()V
    .registers 1

    .prologue
    .line 3065
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 5

    .prologue
    .line 2503
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_18

    .line 2504
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2505
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "CO-OP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 2507
    :cond_18
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;-><init>()V

    .line 2508
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 2509
    iput p1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 2510
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 2511
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p0, p1, v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 2515
    :goto_2c
    return-void

    .line 2512
    :catch_2d
    move-exception v0

    .line 2513
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sub-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    goto :goto_2c
.end method

.method private static inBay()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2873
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2874
    if-eqz v1, :cond_10

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_11

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 2876
    :cond_10
    :goto_10
    return v0

    .line 2875
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method static isAlly(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 2163
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

    .line 2331
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

    .line 2385
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->playerDrones()[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 2386
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
    .line 2158
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
    .line 341
    const-string v0, ""

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->join(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static join(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 345
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    .line 346
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 388
    :cond_d
    :goto_d
    return-void

    .line 348
    :cond_e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 349
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 350
    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 351
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 352
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 354
    :try_start_25
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 355
    new-instance v0, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v0, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v1, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 356
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4c

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_40} :catch_41

    goto :goto_d

    .line 385
    :catch_41
    move-exception v0

    .line 386
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 357
    :cond_4c
    :try_start_4c
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 358
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->writeHello(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 359
    const-string v0, "Waiting for the host to accept..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 360
    const v0, 0x88b8

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 361
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 362
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 363
    if-ne v5, v8, :cond_87

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_79
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 365
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_8a

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_d

    .line 363
    :cond_87
    const-string v0, ""

    goto :goto_79

    .line 366
    :cond_8a
    if-eqz v5, :cond_12d

    .line 367
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 368
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 369
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 370
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

    .line 374
    :goto_de
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 375
    if-ne v5, v9, :cond_e4

    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    .line 376
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

    .line 371
    :cond_fe
    const/4 v0, 0x3

    if-ne v5, v0, :cond_108

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 372
    :cond_108
    const/4 v0, 0x5

    if-ne v5, v0, :cond_110

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->filesText()Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 373
    :cond_110
    if-ne v5, v9, :cond_126

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11f

    const-string v0, "This local game is private. Type its 4-character code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    :cond_11f
    const-string v0, "Wrong code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 374
    :cond_126
    const-string v0, "The host declined."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    .line 379
    :cond_12d
    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 380
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 381
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 382
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 383
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLan;->lastCode:Ljava/lang/String;

    .line 384
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_140} :catch_41

    goto/16 :goto_d
.end method

.method private static joinCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 3267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Connecting... This can take up to a minute. The host has to accept."

    .line 3268
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 3269
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$43;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$43;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3270
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$44;

    invoke-direct {v2, p1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$44;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lobby-join"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3281
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3282
    return-void
.end method

.method static joinNet(Ljava/net/Socket;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v0, 0x0

    .line 308
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 309
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 310
    sput v10, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 311
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 312
    const-string v2, "Waiting for the host to accept..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 314
    :try_start_19
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 315
    const-string v3, ""

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->writeHello(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 316
    const v2, 0x88b8

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 317
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 319
    if-ne v6, v10, :cond_49

    const/16 v2, 0x40

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 320
    :goto_42
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_4c

    .line 335
    :cond_48
    :goto_48
    return v0

    .line 319
    :cond_49
    const-string v2, ""

    goto :goto_42

    .line 321
    :cond_4c
    if-eqz v6, :cond_c9

    .line 322
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 323
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

    .line 325
    :goto_9a
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_9c} :catch_9d

    goto :goto_48

    .line 333
    :catch_9d
    move-exception v1

    .line 334
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_48

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    const-string v1, "The host did not answer."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_48

    .line 324
    :cond_b0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_ba

    :try_start_b3
    const-string v1, "The host removed you from this game."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9a

    .line 325
    :cond_ba
    const/4 v1, 0x5

    if-ne v6, v1, :cond_c2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->filesText()Ljava/lang/String;

    move-result-object v1

    goto :goto_9a

    :cond_c2
    const-string v1, "The host declined."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9a

    .line 328
    :cond_c9
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 329
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 330
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 331
    invoke-static {p0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_d8} :catch_9d

    move v0, v1

    .line 332
    goto/16 :goto_48
.end method

.method public static keepRunning()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1325
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

    .line 1326
    :goto_13
    if-eqz v0, :cond_1e

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    const-string v1, "lan"

    const-string v2, "menu open: game keeps running"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_1e
    return v0

    .line 1325
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static kick()V
    .registers 5

    .prologue
    .line 501
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 502
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 503
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

    .line 504
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

    .line 505
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 506
    if-eqz v1, :cond_39

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->kicked()V

    .line 507
    :cond_39
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 508
    if-nez v1, :cond_45

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 510
    :cond_41
    :goto_41
    return-void

    .line 503
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0

    .line 509
    :cond_45
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_41

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    goto :goto_41
.end method

.method static killed(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 4

    .prologue
    .line 1247
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

    .line 1258
    :cond_17
    :goto_17
    return-void

    .line 1248
    :cond_18
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1249
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1250
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1251
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

    .line 1252
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1253
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 1254
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_17

    .line 1255
    :catch_5f
    move-exception v0

    goto :goto_17
.end method

.method private static lanPrefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 1772
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
    .line 2793
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2794
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

    .line 2795
    :goto_28
    if-nez v5, :cond_3a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v2, p4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-gez v2, :cond_38

    .line 2823
    :goto_34
    return-void

    .line 2794
    :cond_35
    const/4 v2, 0x0

    move v5, v2

    goto :goto_28

    .line 2795
    :cond_38
    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2796
    :cond_3a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x60

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2797
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2798
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_148

    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_52
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2799
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2800
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2801
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2802
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 2803
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

    .line 2804
    :goto_98
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2805
    if-nez v13, :cond_14f

    const/4 v3, 0x0

    move v12, v3

    .line 2806
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

    .line 2807
    :goto_b1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v14, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2808
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2809
    if-eqz v2, :cond_163

    const/4 v3, 0x1

    move v4, v3

    :goto_c1
    if-eqz v11, :cond_167

    const/4 v3, 0x2

    :goto_c4
    or-int/2addr v3, v4

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2810
    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2811
    if-eqz v2, :cond_e3

    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->write([B)V

    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->slowAt:J

    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->slowLast:[B

    .line 2812
    :cond_e3
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2813
    new-instance v9, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2814
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2815
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

    .line 2816
    :goto_119
    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2817
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2818
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

    .line 2819
    :cond_135
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 2820
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2821
    const/16 v2, 0xa

    invoke-static {v2, v14}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2822
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_34

    .line 2798
    :cond_148
    const-string v2, ""

    goto/16 :goto_52

    .line 2803
    :cond_14c
    const/4 v2, 0x0

    goto/16 :goto_98

    .line 2805
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

    .line 2806
    :cond_15f
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_b1

    .line 2809
    :cond_163
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_c1

    :cond_167
    const/4 v3, 0x0

    goto/16 :goto_c4

    .line 2815
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
    .line 2949
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2950
    if-eqz v0, :cond_8

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v1, :cond_9

    .line 2960
    :cond_8
    :goto_8
    return-void

    .line 2951
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2953
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2954
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
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

    .line 2957
    :catch_38
    move-exception v0

    goto :goto_8
.end method

.method public static menuOpening()V
    .registers 2

    .prologue
    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->menuAt:J

    return-void
.end method

.method static missionDone()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1713
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1714
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

    .line 1716
    :cond_14
    :goto_14
    return v0

    .line 1715
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method static missionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1704
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1705
    if-eqz v0, :cond_d

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    .line 1707
    :goto_c
    return-object v0

    .line 1705
    :cond_d
    const-string v0, ""
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_c

    .line 1706
    :catch_10
    move-exception v0

    .line 1707
    const-string v0, ""

    goto :goto_c
.end method

.method private static missionLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3096
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    .line 3097
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

    .line 3100
    :goto_1d
    return-object v0

    .line 3097
    :cond_1e
    const-string v0, ""

    goto :goto_11

    .line 3098
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

    .line 3099
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

    .line 3100
    :cond_53
    const-string v0, "Missions: pick the same mission to work on it together, or the guest can fly their own missions and come back later."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method static myAddresses()Ljava/lang/String;
    .registers 5

    .prologue
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 578
    :cond_9
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 579
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 580
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 581
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

    .line 582
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 583
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2b

    .line 584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4a

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_4a
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_51} :catch_52

    goto :goto_2b

    .line 589
    :catch_52
    move-exception v0

    .line 592
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
    .line 408
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myNick()Ljava/lang/String;
    .registers 1

    .prologue
    .line 406
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->nick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 395
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    .line 403
    :goto_6
    return-object v0

    .line 397
    :cond_7
    :try_start_7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 398
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 399
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

    .line 403
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    goto :goto_6

    .line 400
    :catch_3a
    move-exception v0

    .line 401
    const-string v0, "?"

    goto :goto_6
.end method

.method private static netLines()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3236
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->linkLine()Ljava/lang/String;

    move-result-object v0

    .line 3237
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

    .line 2400
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 2408
    :goto_12
    if-eqz v0, :cond_4a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2409
    :goto_1a
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    return-object v0

    .line 2403
    :cond_1d
    const-class v0, Lfr/testudo/spacecorsair/business/factory/GamePools;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_25
    if-ge v2, v5, :cond_4f

    aget-object v0, v4, v2

    .line 2404
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

    .line 2406
    :goto_40
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2403
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 2408
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

    .line 459
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

    .line 895
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    .line 896
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_91

    .line 897
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    monitor-enter v1

    .line 898
    :try_start_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 899
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 900
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 901
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    array-length v0, v0

    array-length v2, p1

    if-ge v0, v2, :cond_32

    array-length v0, p1

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 902
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 903
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 904
    add-int/lit8 v0, v2, 0xa

    new-array v0, v0, [B

    .line 905
    add-int/lit8 v3, v2, 0x5

    .line 906
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput-byte v5, v0, v4

    .line 907
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

    .line 908
    const/4 v3, 0x5

    int-to-byte v4, p0

    aput-byte v4, v0, v3

    .line 909
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

    .line 910
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    monitor-exit v1

    .line 919
    :goto_8f
    return-object v0

    .line 913
    :cond_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_16 .. :try_end_91} :catchall_b5

    .line 915
    :cond_91
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    .line 916
    int-to-byte v1, p0

    aput-byte v1, v0, v5

    .line 917
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

    .line 918
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    .line 913
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
    .line 3069
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static peerLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
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
    .line 1828
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

    .line 1829
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 1845
    :cond_1a
    :goto_1a
    return-void

    .line 1830
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1831
    if-eqz v0, :cond_5e

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1832
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1833
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1834
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 1835
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

    .line 1842
    :catch_5c
    move-exception v0

    goto :goto_1a

    .line 1837
    :cond_5e
    if-nez v0, :cond_64

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    if-eqz v0, :cond_1a

    .line 1838
    :cond_64
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    .line 1839
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1840
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
    .line 3301
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3302
    const-string v1, "192.168.1.10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3303
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3304
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Join a game"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3305
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 3306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3307
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$46;

    invoke-direct {v2, v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$46;-><init>([Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3313
    const-string v0, "Type address"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$47;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$47;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3324
    :goto_45
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3325
    return-void

    .line 3317
    :cond_49
    const-string v2, "No game found. Type the host\'s address (shown on the host\'s LAN co-op screen):"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3318
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3319
    const-string v2, "Join"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$48;

    invoke-direct {v3, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$48;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3322
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
    .line 2763
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

    .line 2768
    :try_start_4
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2769
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

    .line 2775
    :goto_18
    return-object v0

    .line 2770
    :cond_19
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2771
    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2772
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

    .line 2773
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

    .line 2774
    :catch_67
    move-exception v0

    move-object v0, v1

    .line 2775
    goto :goto_18
.end method

.method static preFrame()V
    .registers 4

    .prologue
    .line 1787
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->exitReload:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->exitFrame()V

    .line 1788
    :cond_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    if-nez v0, :cond_c

    .line 1802
    :cond_b
    :goto_b
    return-void

    .line 1789
    :cond_c
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    .line 1791
    :try_start_f
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v0, :cond_b

    .line 1792
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1793
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1794
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

    .line 1795
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 1796
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

    .line 1799
    :catch_4e
    move-exception v0

    .line 1800
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

    .line 1797
    :cond_68
    :try_start_68
    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
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
    .line 553
    const-string v0, "Private (code)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static privacy(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 3228
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

    .line 3229
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    .line 3233
    :goto_27
    return-void

    .line 3230
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method private static publicList(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 3259
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$41;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$41;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 3260
    return-void
.end method

.method static queueSize()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 1067
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 1068
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 1070
    :cond_11
    :goto_11
    return v0

    .line 1069
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
    .line 3058
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
    .line 2609
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2610
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 2626
    :cond_f
    :goto_f
    return-void

    .line 2611
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_f

    .line 2612
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_f

    .line 2613
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_f

    .line 2614
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_f

    .line 2615
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_f

    .line 2616
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_f

    .line 2617
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_f

    .line 2618
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2619
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2620
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 2621
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2622
    if-nez v0, :cond_86

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2623
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
    .line 3086
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
    .line 412
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 413
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 414
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

    .line 1505
    new-array v1, p1, [Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1506
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_248

    .line 1507
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$Rec;-><init>()V

    .line 1508
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    .line 1509
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v3, :cond_23

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ed

    .line 1510
    :cond_23
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    .line 1511
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

    .line 1512
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

    .line 1513
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1514
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

    .line 1515
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e4

    .line 1516
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

    .line 1517
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

    .line 1540
    :cond_de
    :goto_de
    aput-object v2, v1, v0

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 1519
    :cond_e4
    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    goto :goto_de

    .line 1521
    :cond_ed
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_143

    .line 1522
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

    .line 1523
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

    .line 1524
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1525
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    .line 1526
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->fromWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    goto :goto_de

    .line 1527
    :cond_143
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_190

    .line 1528
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

    .line 1529
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

    .line 1530
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

    .line 1531
    :cond_190
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22d

    .line 1532
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

    .line 1533
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

    .line 1534
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

    .line 1535
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

    .line 1536
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

    .line 1538
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

    .line 1542
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
    .line 3078
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
    .line 638
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 639
    mul-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "string too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_10
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 641
    const/4 v2, 0x0

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 642
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 643
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

    .line 1331
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1332
    const/4 v0, 0x6

    if-ne p0, v0, :cond_17

    .line 1333
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLan;->unpack([B)V

    .line 1468
    :cond_16
    :goto_16
    return-void

    .line 1334
    :cond_17
    if-ne p0, v5, :cond_5f

    .line 1335
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1336
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1337
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->defOk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1338
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v2

    .line 1339
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

    .line 1341
    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v0

    .line 1340
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

    .line 1341
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_48

    goto :goto_16

    .line 1342
    :cond_5f
    if-ne p0, v2, :cond_130

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_130

    .line 1343
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1344
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1345
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1346
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

    .line 1347
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1348
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v3, 0x898

    if-le v2, v3, :cond_b0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_b0
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1350
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

    .line 1351
    :cond_d8
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_118

    .line 1352
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1353
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1354
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1355
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

    .line 1357
    :cond_118
    :goto_118
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11b
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_12d

    .line 1358
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1359
    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1355
    :cond_12a
    iput v8, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    goto :goto_118

    .line 1357
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v0

    .line 1360
    :cond_130
    const/16 v0, 0xc

    if-ne p0, v0, :cond_139

    .line 1361
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->style([B)V

    goto/16 :goto_16

    .line 1362
    :cond_139
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2a7

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_2a7

    .line 1363
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1364
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    .line 1365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    .line 1366
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 1367
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

    .line 1368
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1ae

    .line 1369
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    .line 1370
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDmg:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->leanXp:J

    .line 1371
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

    .line 1372
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    .line 1374
    :cond_1ae
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    .line 1375
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

    .line 1376
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1377
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1378
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v4, 0x898

    if-le v3, v4, :cond_1ee

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_1ee
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->read(Ljava/io/DataInputStream;IFF)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1380
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLanSync;->compact([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)I

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1381
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_22b

    .line 1382
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1383
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1384
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

    .line 1387
    :cond_22b
    :goto_22b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1388
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->index([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1390
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_240
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_243
    .catchall {:try_start_240 .. :try_end_243} :catchall_2a1

    .line 1391
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

    .line 1392
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget-object v5, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pair([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I[Lfr/testudo/spacecorsair/mod/ModLan$Rec;Ljava/util/HashMap;)V

    .line 1393
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

    .line 1394
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phx:F

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phy:F

    .line 1396
    :cond_284
    if-eqz v2, :cond_289

    const/4 v1, 0x0

    iput-object v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1397
    :cond_289
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28c
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_28f
    .catchall {:try_start_28c .. :try_end_28f} :catchall_2a4

    .line 1398
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1399
    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1385
    :cond_29b
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    goto :goto_22b

    .line 1390
    :catchall_2a1
    move-exception v0

    :try_start_2a2
    monitor-exit v1
    :try_end_2a3
    .catchall {:try_start_2a2 .. :try_end_2a3} :catchall_2a1

    throw v0

    .line 1397
    :catchall_2a4
    move-exception v0

    :try_start_2a5
    monitor-exit v1
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2a4

    throw v0

    .line 1400
    :cond_2a7
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2ae

    const/16 v0, 0xb

    if-ne p0, v0, :cond_411

    :cond_2ae
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_411

    .line 1401
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$InState;-><init>()V

    .line 1402
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    .line 1403
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    .line 1404
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

    .line 1405
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

    .line 1407
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

    .line 1408
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

    .line 1409
    :cond_367
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1410
    if-nez v0, :cond_36f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    .line 1411
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

    .line 1412
    :cond_387
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    .line 1413
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    .line 1414
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    const/16 v3, 0xc8

    if-le v0, v3, :cond_3a5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many ship records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
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

    .line 1417
    :goto_3bb
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3c8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    .line 1418
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

    .line 1419
    :cond_3e1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    .line 1420
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3f3

    iget-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    .line 1421
    :cond_3f3
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3f6
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_3f9
    .catchall {:try_start_3f6 .. :try_end_3f9} :catchall_40e

    .line 1422
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1423
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1416
    :cond_405
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    goto :goto_3bb

    .line 1421
    :catchall_40e
    move-exception v0

    :try_start_40f
    monitor-exit v1
    :try_end_410
    .catchall {:try_start_40f .. :try_end_410} :catchall_40e

    throw v0

    .line 1424
    :cond_411
    const/16 v0, 0x8

    if-ne p0, v0, :cond_48c

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_48c

    .line 1425
    array-length v0, p1

    const/16 v2, 0x100

    if-le v0, v2, :cond_426

    new-instance v0, Ljava/io/IOException;

    const-string v1, "kill too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :cond_426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1427
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_437

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    .line 1428
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

    .line 1429
    :cond_449
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$Kill;-><init>()V

    .line 1430
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

    .line 1431
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

    .line 1432
    :cond_48c
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4b9

    .line 1433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1434
    array-length v0, p1

    const/16 v4, 0x200

    if-le v0, v4, :cond_4a0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "chat too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_4a0
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_16

    .line 1436
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    .line 1437
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->onChat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1438
    :cond_4b9
    const/16 v0, 0xd

    if-ne p0, v0, :cond_561

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_561

    .line 1439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1440
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->decode([B)Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    move-result-object v2

    .line 1441
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v3, :cond_4f5

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->peerDev:Z

    if-nez v3, :cond_4f5

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hasDev(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v3

    if-eqz v3, :cond_4f5

    .line 1442
    const-string v0, "lan"

    const-string v1, "guest declared DEV gear: session ended"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v0, "The other player flies DEV gear, which is not allowed in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 1445
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 1446
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v1, :cond_4f1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 1447
    :cond_4f1
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto/16 :goto_16

    .line 1450
    :cond_4f5
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->limits(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v3

    .line 1451
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 1452
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-lez v2, :cond_50c

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/2addr v2, v4

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1453
    :cond_50c
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    .line 1454
    sput-boolean v8, Lfr/testudo/spacecorsair/mod/ModLan;->hullFlagged:Z

    .line 1455
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1456
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

    .line 1457
    :cond_561
    const/4 v0, 0x4

    if-ne p0, v0, :cond_593

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_593

    .line 1458
    array-length v0, p1

    const/16 v1, 0x1000

    if-le v0, v1, :cond_575

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shot too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
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

    .line 1460
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    goto/16 :goto_16

    .line 1459
    :catchall_590
    move-exception v0

    :try_start_591
    monitor-exit v1
    :try_end_592
    .catchall {:try_start_591 .. :try_end_592} :catchall_590

    throw v0

    .line 1461
    :cond_593
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5c3

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_5c3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v0, :cond_5c3

    .line 1462
    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_5ac

    new-instance v0, Ljava/io/IOException;

    const-string v1, "drone launch too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
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

    .line 1464
    :cond_5c3
    const/16 v0, 0xf

    if-ne p0, v0, :cond_16

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_16

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v0, :cond_16

    .line 1465
    array-length v0, p1

    if-le v0, v4, :cond_5da

    new-instance v0, Ljava/io/IOException;

    const-string v1, "doomsday tick too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1466
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
    .line 3018
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 3019
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 3020
    return-void
.end method

.method private static refl()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1044
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    if-eqz v1, :cond_6

    .line 1056
    :goto_5
    return v0

    .line 1046
    :cond_6
    :try_start_6
    const-class v0, Lfr/testudo/spacecorsair/display/RenderElement;

    .line 1047
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

    .line 1048
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

    .line 1049
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

    .line 1050
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

    .line 1051
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

    .line 1052
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_87} :catch_8b

    .line 1056
    :goto_87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto/16 :goto_5

    .line 1053
    :catch_8b
    move-exception v0

    .line 1054
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto :goto_87
.end method

.method private static removeProxy()V
    .registers 2

    .prologue
    .line 2146
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->dropGuestDrone(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->dropGuestDrone(I)V

    .line 2147
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2148
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2149
    if-eqz v0, :cond_16

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 2150
    :cond_16
    return-void
.end method

.method private static replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V
    .registers 25

    .prologue
    .line 1554
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1605
    :cond_8
    :goto_8
    return-void

    .line 1555
    :cond_9
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v16, v0

    .line 1556
    move-object/from16 v0, v16

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aget-object v17, v1, v2

    .line 1557
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 1558
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    rem-int/lit8 v18, v1, 0x3

    .line 1559
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

    .line 1560
    :cond_3f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v19, v1, v18

    .line 1561
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v20, v1, v18

    .line 1562
    const/4 v13, 0x0

    .line 1563
    const/4 v12, 0x0

    .line 1564
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

    .line 1565
    aget-object v11, p0, v15

    .line 1566
    aget-object v1, v17, v14

    .line 1567
    if-nez v1, :cond_6a

    .line 1601
    :cond_60
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_8

    .line 1602
    :catch_68
    move-exception v1

    goto :goto_8

    .line 1568
    :cond_6a
    aget-object v3, v20, v13

    .line 1569
    if-nez v3, :cond_75

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    aput-object v3, v20, v13

    .line 1570
    :cond_75
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    add-float v2, v2, p2

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    add-float v4, v4, p3

    invoke-virtual {v3, v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1571
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a0

    const/4 v10, 0x1

    .line 1572
    :goto_87
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v2, :cond_90

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_120

    .line 1573
    :cond_90
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->texFor(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 1574
    if-nez v4, :cond_a2

    move v3, v13

    move v4, v14

    .line 1564
    :goto_9a
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    move v13, v3

    move v14, v4

    goto :goto_4b

    .line 1571
    :cond_a0
    const/4 v10, 0x0

    goto :goto_87

    .line 1575
    :cond_a2
    aget-object v2, v19, v13

    .line 1576
    if-nez v2, :cond_ad

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v2, v19, v13

    .line 1577
    :cond_ad
    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 1578
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 1579
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 1580
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_116

    const/4 v4, 0x1

    :goto_ce
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 1581
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_118

    const/4 v4, 0x1

    :goto_d7
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 1582
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_11a

    const/4 v4, 0x1

    :goto_e0
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 1583
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11c

    .line 1584
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-nez v4, :cond_f1

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    .line 1585
    :cond_f1
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x0

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    aput v6, v4, v5

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x1

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    aput v6, v4, v5

    .line 1587
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

    .line 1598
    :goto_10f
    add-int/lit8 v4, v14, 0x1

    .line 1599
    add-int/lit8 v2, v13, 0x1

    move v12, v1

    move v3, v2

    goto :goto_9a

    .line 1580
    :cond_116
    const/4 v4, 0x0

    goto :goto_ce

    .line 1581
    :cond_118
    const/4 v4, 0x0

    goto :goto_d7

    .line 1582
    :cond_11a
    const/4 v4, 0x0

    goto :goto_e0

    .line 1586
    :cond_11c
    const/4 v4, 0x0

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    goto :goto_ff

    .line 1588
    :cond_120
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_147

    .line 1589
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    array-length v4, v4

    if-lt v2, v4, :cond_130

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1590
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

    .line 1591
    :cond_147
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_15d

    .line 1592
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

    .line 1593
    :cond_15d
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_176

    .line 1594
    add-int/lit8 v2, v12, 0x1

    move/from16 v0, v18

    invoke-static {v0, v12, v11}, Lfr/testudo/spacecorsair/mod/ModLan;->barFor(IILfr/testudo/spacecorsair/mod/ModLan$Rec;)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v4

    .line 1595
    if-nez v4, :cond_171

    move v12, v2

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1596
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
    .line 3082
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    return-void
.end method

.method private static report(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 3242
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Report player"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send a report about this player? It contains the chat of this game and what the anti-cheat checks counted. Nothing else."

    .line 3243
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    .line 3244
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$40;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$40;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    .line 3254
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3255
    return-void
.end method

.method private static resetTables()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 958
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->reset()V

    .line 959
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

    .line 960
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_7e

    .line 961
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_81

    .line 962
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
    .catchall {:try_start_3b .. :try_end_50} :catchall_84

    .line 963
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 964
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    sput v5, Lfr/testudo/spacecorsair/mod/ModLan;->jumps:I

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpWin:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveSeen:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveGrace:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->graceAt:J

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->obsSpeed:F

    .line 965
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_77
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_87

    .line 966
    return-void

    .line 960
    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0

    .line 961
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v0

    .line 962
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0

    .line 965
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v0
.end method

.method private static respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V
    .registers 14

    .prologue
    const/high16 v10, 0x45160000    # 2400.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 3009
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, v0, p1

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v0, p2

    .line 3010
    float-to-double v6, v4

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 3011
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1f

    move v0, v1

    move v2, v3

    move v4, v1

    .line 3012
    :cond_1f
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    div-float/2addr v4, v0

    mul-float/2addr v4, v10

    add-float/2addr v4, p1

    div-float v0, v2, v0

    mul-float/2addr v0, v10

    add-float/2addr v0, p2

    invoke-virtual {v1, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 3013
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 3014
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 3015
    return-void
.end method

.method private static rollLoot(Lfr/testudo/spacecorsair/mod/ModLan$Kill;)V
    .registers 7

    .prologue
    .line 1283
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->cls:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1284
    if-nez v0, :cond_9

    .line 1297
    :cond_8
    :goto_8
    return-void

    .line 1285
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x11

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1286
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

    .line 1287
    if-eqz v0, :cond_8

    .line 1288
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->elite:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1289
    :cond_38
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1290
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1291
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->GenerateLoots(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/Element;)V

    .line 1292
    :cond_52
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drops(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 1293
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_8

    .line 1294
    :catch_5c
    move-exception v0

    .line 1295
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

    .line 2991
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_92

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    :goto_c
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v2, :cond_96

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2992
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

    .line 2993
    if-eqz p1, :cond_a2

    move v5, v3

    :goto_58
    if-eqz p1, :cond_a4

    :goto_5a
    if-eqz p1, :cond_a9

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2992
    :goto_5e
    invoke-static {p0, v6, v5, v4, v2}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 2994
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

    .line 2995
    return-void

    .line 2991
    :cond_92
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    goto/16 :goto_c

    :cond_96
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    goto/16 :goto_12

    .line 2992
    :cond_9a
    const-string v2, "DUEL LOST"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1f

    :cond_a2
    move v5, v4

    .line 2993
    goto :goto_58

    :cond_a4
    const v2, 0x3ecccccd    # 0.4f

    move v4, v2

    goto :goto_5a

    :cond_a9
    move v2, v3

    goto :goto_5e

    .line 2994
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

    .line 521
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
    :try_start_7
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_143
    .catchall {:try_start_7 .. :try_end_d} :catchall_133

    .line 525
    const/4 v1, 0x1

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 526
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 527
    new-instance v1, Ljava/net/InetSocketAddress;

    const v3, 0x9089

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 528
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p0

    add-long/2addr v4, v6

    .line 530
    const/16 v1, 0x100

    new-array v3, v1, [B

    .line 531
    :cond_2f
    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_12d

    .line 532
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v1, v3, v6}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_3d} :catch_104
    .catchall {:try_start_e .. :try_end_3d} :catchall_13f

    .line 533
    :try_start_3d
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_40
    .catch Ljava/net/SocketTimeoutException; {:try_start_3d .. :try_end_40} :catch_13c
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_104
    .catchall {:try_start_3d .. :try_end_40} :catchall_13f

    .line 534
    :try_start_40
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 535
    const-string v7, "SCLAN2|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 536
    const-string v7, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 537
    array-length v7, v6

    if-lt v7, v11, :cond_2f

    .line 538
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

    .line 539
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

    .line 540
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

    .line 541
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

    .line 542
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_102} :catch_104
    .catchall {:try_start_40 .. :try_end_102} :catchall_13f

    goto/16 :goto_2f

    .line 544
    :catch_104
    move-exception v1

    .line 547
    :goto_105
    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 549
    :cond_10a
    :goto_10a
    return-object v2

    .line 539
    :cond_10b
    :try_start_10b
    const-string v1, ""

    goto :goto_ba

    .line 540
    :cond_10e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->privTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_d8

    .line 541
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

    .line 547
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

    .line 548
    :cond_13b
    throw v2

    .line 533
    :catch_13c
    move-exception v1

    goto/16 :goto_2f

    .line 547
    :catchall_13f
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_136

    .line 544
    :catch_143
    move-exception v0

    move-object v0, v1

    goto :goto_105
.end method

.method static sendChat(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 424
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v1, :cond_13

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_14

    .line 432
    :cond_13
    :goto_13
    return v0

    .line 425
    :cond_14
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    .line 427
    :try_start_16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 428
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x78

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 429
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_2f

    .line 430
    const/4 v0, 0x1

    goto :goto_13

    .line 431
    :catch_2f
    move-exception v1

    goto :goto_13
.end method

.method static sendDoom(IFFFFFZI)V
    .registers 10

    .prologue
    .line 2372
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->extra:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2382
    :cond_a
    :goto_a
    return-void

    .line 2374
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2375
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2376
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1, p5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2377
    invoke-virtual {v1, p6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1, p7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2378
    const/16 v1, 0xf

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_a

    .line 2379
    :catch_35
    move-exception v0

    goto :goto_a
.end method

.method private static sendLatest(ILjava/io/ByteArrayOutputStream;)V
    .registers 5

    .prologue
    const/high16 v2, 0x40000

    .line 882
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    .line 883
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

    .line 885
    :goto_1b
    return-void

    .line 884
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
    .line 877
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->frameBytes(ILjava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 878
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 879
    return-void

    .line 878
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
    .line 2860
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    .line 2861
    if-nez p0, :cond_7

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2862
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

    .line 2863
    return-void
.end method

.method static setSolo(Z)V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1737
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-ne v0, p0, :cond_6

    .line 1742
    :goto_5
    return-void

    .line 1738
    :cond_6
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 1739
    if-eqz p0, :cond_11

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    .line 1740
    :cond_11
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    .line 1741
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
    .line 3215
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3216
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3217
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3e

    const-string v0, "Join my Space Corsair game. Multiplayer, Join by code:"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3218
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

    .line 3217
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3219
    const-string v0, "Share code"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3223
    :goto_3d
    return-void

    .line 3218
    :cond_3e
    const-string v0, "Join my local Space Corsair game (same Wi-Fi). Multiplayer, Find local games, code:"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_1b

    .line 3220
    :catch_45
    move-exception v0

    goto :goto_3d
.end method

.method static shipEnd()V
    .registers 1

    .prologue
    .line 2537
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
    .line 2535
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

    .line 2088
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

    .line 2098
    :cond_14
    :goto_14
    return-object v0

    .line 2089
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

    .line 2092
    :cond_26
    const/4 v0, 0x0

    :try_start_27
    const-class v2, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2093
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

    .line 2097
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

    .line 2094
    :catch_5c
    move-exception v0

    move-object v0, v1

    .line 2095
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
    .line 3071
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

    .line 2568
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2569
    if-eqz v0, :cond_c

    .line 2588
    :goto_b
    return-object v0

    .line 2570
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 2571
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

    .line 2572
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2573
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2574
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2575
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$13;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$13;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2576
    array-length v5, v4

    move v0, v1

    :goto_47
    if-ge v0, v5, :cond_2d

    aget-object v6, v4, v0

    .line 2577
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 2578
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

    .line 2576
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 2579
    :cond_6a
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->SKIP:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 2580
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 2581
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_84

    const-class v8, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v7, v8, :cond_67

    .line 2582
    :cond_84
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2583
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 2586
    :cond_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2587
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b
.end method

.method static shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FF)Z
    .registers 4

    .prologue
    .line 2104
    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FFF)Z

    move-result v0

    return v0
.end method

.method static shotOk(Lfr/testudo/spacecorsair/business/projectiles/Projectile;FFF)Z
    .registers 10

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 2108
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v1, :cond_e

    .line 2114
    :cond_d
    :goto_d
    return v0

    .line 2109
    :cond_e
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->life:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->maxLife:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->bad(F)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2110
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, p2

    .line 2111
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float v2, p3, p3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    .line 2112
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_71

    iput v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 2113
    :cond_71
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_7f

    iput-wide v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2114
    :cond_7f
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static showMenu(Landroid/app/Activity;)V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3105
    :try_start_3
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 3106
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->warmHash()V

    .line 3107
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_1c

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    if-eqz v1, :cond_1c

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-nez v1, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 3211
    :goto_1b
    return-void

    .line 3108
    :cond_1c
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$14;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModLan$14;-><init>(Landroid/app/Activity;)V

    .line 3109
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->hasProfile()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 3208
    :catch_2b
    move-exception v0

    goto :goto_1b

    .line 3110
    :cond_2d
    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3111
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_18b

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_18b

    .line 3112
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

    .line 3113
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_165

    const-string v2, "ON"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PvP duel: both ships go to the old multiplayer bay and fight until one is destroyed. The destroyed ship respawns at full hull with no death fee, then both ships go back. Undock to start."

    .line 3114
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3115
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v2, :cond_16d

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

    :goto_d1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3116
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

    .line 3117
    const/4 v2, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 3118
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v5, :cond_171

    const-string v5, "PvP: ON (tap to turn off)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_fe
    aput-object v5, v4, v6

    const/4 v6, 0x1

    .line 3119
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v5, :cond_178

    move-object v5, v0

    :goto_106
    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "Kick player"

    .line 3120
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v6, :cond_11c

    const-string v0, "Report player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11c
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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$15;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$15;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$16;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$16;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$17;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$17;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$18;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$18;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$19;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$19;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x5

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3117
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 3113
    :cond_165
    const-string v2, "OFF"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_88

    .line 3115
    :cond_16d
    const-string v2, ""

    goto/16 :goto_d1

    .line 3118
    :cond_171
    const-string v5, "PvP: OFF (tap to turn on)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_fe

    .line 3119
    :cond_178
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v5, :cond_183

    const-string v5, "End duel"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_106

    :cond_183
    const-string v5, "PvP duel"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_106

    .line 3129
    :cond_18b
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_26e

    .line 3130
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

    .line 3131
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v2, :cond_264

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

    :goto_1f1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3132
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

    .line 3133
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 3134
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v5, :cond_267

    const-string v5, "Follow the host"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_21e
    aput-object v5, v4, v6

    const/4 v5, 0x1

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v6, :cond_22b

    const-string v0, "Report player"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_22b
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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$20;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$20;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$21;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$21;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$22;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$22;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3133
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 3131
    :cond_264
    const-string v2, ""

    goto :goto_1f1

    .line 3134
    :cond_267
    const-string v5, "Fly my own missions"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_21e

    .line 3141
    :cond_26e
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_34d

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_34d

    .line 3142
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 3143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_337

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    :goto_287
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3144
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v8, :cond_343

    .line 3146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Game code:"

    .line 3144
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

    .line 3145
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v2, :cond_33b

    const-string v2, "Public game: listed for everyone, and anyone with the code can join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2c0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "You accept or decline each player."

    .line 3146
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2d8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3147
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3148
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v8, :cond_2f1

    const-string v0, "Share code"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f1
    aput-object v0, v4, v5

    const/4 v5, 0x1

    .line 3149
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_346

    const-string v0, "PvP: ON (tap to turn off)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2fe
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

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModLan$23;

    invoke-direct {v7, p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan$23;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    aput-object v7, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$24;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$24;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$25;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$25;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3147
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 3143
    :cond_337
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto/16 :goto_287

    .line 3145
    :cond_33b
    const-string v2, "Private game: only players with the code can join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c0

    .line 3146
    :cond_343
    const-string v2, ""

    goto :goto_2d8

    .line 3149
    :cond_346
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2fe

    .line 3156
    :cond_34d
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_435

    .line 3157
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->lanCode:Ljava/lang/String;

    .line 3158
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

    .line 3159
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    if-eqz v2, :cond_3ff

    const-string v2, "Public local game: anyone on this network can ask to join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3160
    :goto_38c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "You accept or decline each player."

    .line 3161
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3162
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3163
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    if-nez v7, :cond_3b9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v8, :cond_3b9

    const-string v0, "Share code"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3b9
    aput-object v0, v4, v5

    const/4 v5, 0x1

    .line 3164
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_42e

    const-string v0, "PvP: ON (tap to turn off)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c6
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

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModLan$26;

    invoke-direct {v7, p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan$26;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    aput-object v7, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$27;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$27;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$28;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$28;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3162
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 3160
    :cond_3ff
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

    goto/16 :goto_38c

    .line 3164
    :cond_42e
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c6

    .line 3172
    :cond_435
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    .line 3173
    if-eqz v2, :cond_445

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v3, :cond_445

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->needCode:Ljava/lang/String;

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->askCode(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 3174
    :cond_445
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5f8

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 3175
    :goto_44f
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v6

    .line 3176
    if-eqz v6, :cond_47e

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v2

    if-nez v2, :cond_47e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5fc

    const-string v2, "\n\n"

    :goto_46c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3177
    :cond_47e
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

    .line 3178
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

    .line 3179
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

    .line 3180
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

    .line 3181
    if-eqz v6, :cond_600

    move-object v5, v0

    :goto_506
    aput-object v5, v4, v7

    const/4 v5, 0x7

    .line 3182
    if-eqz v6, :cond_50b

    :cond_50b
    const/4 v7, 0x0

    aput-object v7, v4, v5

    const/16 v7, 0x8

    .line 3183
    if-eqz v6, :cond_608

    const-string v5, "Find public games"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_518
    aput-object v5, v4, v7

    const/16 v7, 0x9

    .line 3184
    if-eqz v6, :cond_60b

    const-string v5, "Host public game"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_524
    aput-object v5, v4, v7

    const/16 v7, 0xa

    .line 3185
    if-eqz v6, :cond_60e

    const-string v5, "Host private game (code only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_530
    aput-object v5, v4, v7

    const/16 v7, 0xb

    .line 3186
    if-eqz v6, :cond_611

    const-string v5, "Join by code"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_53c
    aput-object v5, v4, v7

    const/16 v7, 0xc

    .line 3187
    if-eqz v6, :cond_61c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v5

    if-eqz v5, :cond_614

    const-string v5, "Hide my IP: ON (relay only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_54e
    aput-object v5, v4, v7

    const/16 v7, 0xd

    .line 3188
    if-eqz v6, :cond_627

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->saverPref()Z

    move-result v5

    if-eqz v5, :cond_61f

    const-string v5, "Data saver: ON"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_560
    aput-object v5, v4, v7

    const/16 v5, 0xe

    .line 3189
    if-eqz v6, :cond_56c

    const-string v0, "Privacy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_56c
    aput-object v0, v4, v5

    const/16 v0, 0xf

    const-string v5, "Close"

    .line 3190
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x10

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$29;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$29;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$30;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$30;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$31;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$31;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$32;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$32;-><init>(Landroid/app/Activity;)V

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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$33;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$33;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0x9

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$34;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$34;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xa

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$35;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$35;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xb

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$36;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$36;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xc

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$37;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$37;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xd

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$38;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$38;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xe

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$39;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$39;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xf

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 3177
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 3174
    :cond_5f8
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto/16 :goto_44f

    .line 3176
    :cond_5fc
    const-string v2, ""

    goto/16 :goto_46c

    .line 3181
    :cond_600
    const-string v5, "Not available yet in this version"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_506

    :cond_608
    move-object v5, v0

    .line 3183
    goto/16 :goto_518

    :cond_60b
    move-object v5, v0

    .line 3184
    goto/16 :goto_524

    :cond_60e
    move-object v5, v0

    .line 3185
    goto/16 :goto_530

    :cond_611
    move-object v5, v0

    .line 3186
    goto/16 :goto_53c

    .line 3187
    :cond_614
    const-string v5, "Hide my IP: OFF"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_54e

    :cond_61c
    move-object v5, v0

    goto/16 :goto_54e

    .line 3188
    :cond_61f
    const-string v5, "Data saver: AUTO (on with mobile data or relay)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_624
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_624} :catch_2b

    move-result-object v5

    goto/16 :goto_560

    :cond_627
    move-object v5, v0

    goto/16 :goto_560
.end method

.method static skipRange(II)V
    .registers 5

    .prologue
    .line 1308
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

    .line 1309
    :cond_1f
    return-void
.end method

.method private static skipped(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1312
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

    .line 1313
    :cond_15
    return v1

    .line 1312
    :cond_16
    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private static spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2119
    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2120
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v0, v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 2121
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 2122
    const/4 v2, 0x1

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    .line 2123
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 2124
    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 2125
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

    .line 2126
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 2127
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 2128
    const/4 v0, 0x0

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->drawLifeBar:Z

    .line 2129
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2130
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2131
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 2132
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 2133
    const-string v0, "CO-OP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 2134
    const/4 v0, -0x1

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 2135
    const/4 v0, 0x0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 2136
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 2137
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 2138
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2139
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

    .line 2143
    :goto_a3
    return-void

    .line 2140
    :catch_a4
    move-exception v0

    .line 2141
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

    .line 824
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v0, :cond_34

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_34

    .line 825
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

    .line 826
    if-eqz v0, :cond_34

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$10;

    invoke-direct {v4, v0}, Lfr/testudo/spacecorsair/mod/ModLan$10;-><init>([Ljava/lang/String;)V

    const-string v0, "lobby-sample"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 828
    :cond_34
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 829
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

    .line 830
    :cond_4d
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 831
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 832
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 833
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 834
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 835
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 836
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 837
    const-string v5, ""

    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 838
    if-eqz v0, :cond_75

    .line 839
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$11;

    invoke-direct {v6, v4, v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan$11;-><init>(ZLjava/util/concurrent/locks/ReentrantLock;Ljava/net/Socket;)V

    const-string v0, "lan-bye"

    invoke-direct {v5, v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 853
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 855
    :cond_75
    :try_start_75
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_7e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7e} :catch_cf

    .line 856
    :cond_7e
    :goto_7e
    :try_start_7e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_87

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_87} :catch_cd

    .line 857
    :cond_87
    :goto_87
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 858
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    .line 859
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

    .line 860
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    .line 861
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 862
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 863
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 864
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 865
    const/high16 v0, -0x80000000

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotId:I

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->doomShotAt:J

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->doomTicksShot:I

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->droneLaunchAt:J

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->askAt:J

    .line 866
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 867
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 868
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 869
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 870
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 871
    sput v9, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 872
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 873
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->clearChat()V

    .line 874
    return-void

    :cond_c7
    move v0, v1

    .line 825
    goto/16 :goto_1b

    .line 859
    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0

    .line 856
    :catch_cd
    move-exception v0

    goto :goto_87

    .line 855
    :catch_cf
    move-exception v0

    goto :goto_7e
.end method

.method private static testSwitch(J)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1751
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 1762
    :cond_b
    :goto_b
    return-void

    .line 1752
    :cond_c
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    .line 1753
    const-string v0, "corsair_lan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1754
    if-eqz v0, :cond_b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1755
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    .line 1756
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

    .line 1757
    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->host(Z)V

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    goto :goto_b

    .line 1758
    :cond_46
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_b

    .line 1759
    :cond_52
    const-string v1, "duel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1760
    :cond_60
    const-string v1, "duel-off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1761
    :cond_6d
    const-string v1, "join:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$12;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan$12;-><init>(Ljava/lang/String;)V

    const-string v0, "lan-join"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method private static texFor(I)Lfr/testudo/spacecorsair/display/Texture;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1012
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v3

    .line 1013
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 1014
    if-eqz v0, :cond_14

    monitor-exit v3

    .line 1035
    :goto_13
    return-object v0

    .line 1015
    :cond_14
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1016
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2c

    :cond_29
    monitor-exit v3

    move-object v0, v2

    goto :goto_13

    .line 1017
    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1018
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4b

    move-result-object v1

    .line 1020
    const/16 v5, 0x4c

    if-ne v4, v5, :cond_4e

    :try_start_3a
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_aa
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4b

    move-result-object v0

    .line 1034
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_49

    :try_start_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    :cond_49
    monitor-exit v3

    goto :goto_13

    .line 1036
    :catchall_4b
    move-exception v0

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v0

    .line 1021
    :cond_4e
    const/16 v5, 0x4d

    if-ne v4, v5, :cond_57

    :try_start_52
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    goto :goto_3e

    .line 1022
    :cond_57
    const/16 v5, 0x52

    if-ne v4, v5, :cond_3e

    .line 1023
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texByRes:Ljava/lang/reflect/Method;

    if-nez v0, :cond_91

    .line 1024
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "textureLibrary"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1025
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1026
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texLib:Ljava/lang/Object;

    .line 1027
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

    .line 1029
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

    .line 1031
    :catch_aa
    move-exception v0

    move-object v0, v2

    .line 1032
    goto :goto_3e
.end method

.method private static texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 970
    if-nez p0, :cond_4

    .line 981
    :cond_3
    :goto_3
    return-object v1

    .line 971
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 972
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    move-object v0, v1

    :cond_15
    move-object v1, v0

    goto :goto_3

    .line 973
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

    .line 980
    :goto_33
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 975
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->nameOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v0

    .line 976
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

    .line 977
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

    .line 978
    :cond_74
    const-string v0, ""

    goto :goto_33
.end method

.method private static tryRejoin(Ljava/lang/String;J)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 792
    const/4 v3, 0x0

    .line 794
    :try_start_3
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_80

    .line 795
    :try_start_8
    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v3, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x9c4

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 796
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 797
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->lastCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->writeHello(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 798
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 799
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 800
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 801
    if-nez v4, :cond_3d

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v5, v6, p1

    if-eqz v5, :cond_57

    .line 802
    :cond_3d
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 803
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v3, v6, p1

    if-nez v3, :cond_4f

    const/4 v3, 0x5

    if-ne v4, v3, :cond_50

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->filesText()Ljava/lang/String;

    move-result-object v3

    :goto_4d
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 816
    :cond_4f
    :goto_4f
    return v0

    .line 803
    :cond_50
    const-string v3, "Co-op link lost"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    .line 806
    :cond_57
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 807
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 808
    const/4 v3, 0x2

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 809
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 810
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 811
    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V

    .line 812
    const-string v3, "lan"

    const-string v4, "reconnected"

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_74} :catch_75

    goto :goto_4f

    .line 814
    :catch_75
    move-exception v0

    move-object v0, v2

    .line 815
    :goto_77
    if-eqz v0, :cond_7c

    :try_start_79
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_7e

    :cond_7c
    :goto_7c
    move v0, v1

    .line 816
    goto :goto_4f

    .line 815
    :catch_7e
    move-exception v0

    goto :goto_7c

    .line 814
    :catch_80
    move-exception v0

    move-object v0, v3

    goto :goto_77
.end method

.method private static typeCode(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 3263
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$42;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$42;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 3264
    return-void
.end method

.method private static undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;
    .registers 1

    .prologue
    .line 2042
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->noDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2043
    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->limits(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->noDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 2044
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

    .line 924
    array-length v0, p0

    if-ge v0, v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "short packed message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_e
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 926
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

    .line 927
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

    .line 928
    :cond_48
    new-array v2, v1, [B

    .line 929
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 931
    const/4 v4, 0x5

    :try_start_50
    array-length v5, p0

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 932
    invoke-virtual {v3, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .line 933
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

    .line 934
    :catch_6a
    move-exception v0

    .line 935
    :try_start_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_73

    .line 937
    :catchall_73
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 938
    throw v0

    .line 937
    :cond_78
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 939
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V

    .line 940
    return-void
.end method

.method private static upkeepGuestDrones(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;J)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 2310
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneRetarget:I

    long-to-int v2, p1

    sub-int/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneRetarget:I

    if-gtz v1, :cond_1c

    const/4 v1, 0x1

    .line 2311
    :goto_a
    if-eqz v1, :cond_10

    const/16 v2, 0x3e8

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneRetarget:I

    .line 2312
    :cond_10
    :goto_10
    const/4 v2, 0x2

    if-ge v0, v2, :cond_58

    .line 2313
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->gDrones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v0

    .line 2314
    if-nez v2, :cond_1e

    .line 2312
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    move v1, v0

    .line 2310
    goto :goto_a

    .line 2315
    :cond_1e
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->gDroneLeft:[I

    aget v4, v3, v0

    long-to-int v5, p1

    sub-int/2addr v4, v5

    aput v4, v3, v0

    .line 2316
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

    .line 2317
    :cond_48
    if-eqz v1, :cond_19

    .line 2318
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x44e10000    # 1800.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v3

    .line 2319
    if-eqz v3, :cond_19

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_19

    .line 2322
    :cond_58
    return-void
.end method

.method private static viewHalfH()F
    .registers 1

    .prologue
    .line 2631
    const-string v0, "yDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static viewHalfW()F
    .registers 1

    .prologue
    .line 2629
    const-string v0, "xDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static violation(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 514
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

    .line 515
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v3, :cond_21

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->kick()V

    .line 517
    :goto_20
    return-void

    .line 516
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

.method static warmHash()V
    .registers 3

    .prologue
    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->hashCache:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 220
    :goto_4
    return-void

    .line 219
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$1;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLan$1;-><init>()V

    const-string v2, "lan-hash"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method private static writeField(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2592
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2593
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2606
    :cond_f
    :goto_f
    return-void

    .line 2594
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_f

    .line 2595
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_f

    .line 2596
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_f

    .line 2597
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_f

    .line 2598
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_f

    .line 2599
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_f

    .line 2600
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_f

    .line 2601
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2602
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2603
    if-eqz v0, :cond_81

    const/4 v1, 0x1

    :goto_71
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2604
    if-eqz v0, :cond_f

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_f

    .line 2603
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
    .line 3084
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
    .line 172
    const-string v0, "SCLAN2"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 173
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 174
    if-nez p1, :cond_32

    const-string v0, ""

    :goto_24
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->contentHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 177
    return-void

    .line 174
    :cond_32
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeChars(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method
