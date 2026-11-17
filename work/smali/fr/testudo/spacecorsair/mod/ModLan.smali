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

.field static final DECL_WAIT_MS:J = 0x2710L

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

.field private static volatile firstStateAt:J

.field static volatile flags:I

.field private static fx:Ljava/lang/reflect/Field;

.field static volatile fxDropped:J

.field private static fy:Ljava/lang/reflect/Field;

.field static volatile gotFrames:I

.field static guestWins:I

.field static hostWins:I

.field private static volatile hullFlagged:Z

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

    const/4 v3, 0x0

    const/4 v6, 0x1

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

    .line 237
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->kicked:Ljava/util/HashSet;

    .line 339
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 340
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 764
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, v6}, Ljava/util/zip/Deflater;-><init>(I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    .line 765
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 827
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    .line 828
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    .line 830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    .line 1052
    new-array v0, v2, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1056
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    .line 1104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    .line 1115
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    .line 1116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    .line 1174
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->skips:[I

    .line 1411
    new-array v0, v5, [[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1413
    new-array v0, v5, [[Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1414
    invoke-static {}, Lfr/testudo/spacecorsair/textengine/TextSize;->values()[Lfr/testudo/spacecorsair/textengine/TextSize;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1473
    const/16 v0, 0x60

    filled-new-array {v5, v0}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 1527
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->values()[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 1528
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1689
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    .line 1696
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 1697
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 1698
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 1824
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    .line 1881
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotClasses:Ljava/util/HashMap;

    .line 2022
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    .line 2188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    .line 2189
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

    .line 2341
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2347
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2463
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
    .line 935
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 936
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 937
    return-object v0
.end method

.method private static acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 381
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

    .line 382
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$5;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$5;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Decline"

    .line 383
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$4;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/mod/ModLan$4;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_51} :catch_52

    .line 388
    :goto_51
    return-void

    .line 385
    :catch_52
    move-exception v0

    goto :goto_51
.end method

.method static acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    :try_start_2
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 192
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v4, v0, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v4, :cond_10

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v4, :cond_12

    :cond_10
    move v0, v1

    .line 199
    :goto_11
    return v0

    .line 193
    :cond_12
    if-nez p1, :cond_16

    const-string p1, ""

    :cond_16
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    .line 194
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;J)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_26

    :cond_24
    move v0, v1

    goto :goto_11

    .line 195
    :cond_26
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netJoinId:Ljava/lang/String;

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 196
    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 198
    :catch_2e
    move-exception v0

    move v0, v1

    .line 199
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

.method static synthetic access$2200(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 87
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->privacy(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2300()I
    .registers 1

    .prologue
    .line 87
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    return v0
.end method

.method static synthetic access$2400(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->joinCode(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/Activity;Ljava/lang/String;)V
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
    .line 2167
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 2185
    :cond_8
    :goto_8
    return-void

    .line 2169
    :cond_9
    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2171
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

    .line 2182
    :catch_2f
    move-exception v0

    goto :goto_8

    .line 2172
    :cond_31
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_11

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v1, :cond_11

    .line 2173
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 2174
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v1, v2, :cond_11

    .line 2175
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2176
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2178
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

    .line 2179
    :cond_68
    const/4 v0, 0x4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 2180
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

    .line 2445
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v3, v1, :cond_11

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_11

    if-nez p0, :cond_12

    .line 2453
    :cond_11
    :goto_11
    return v2

    .line 2446
    :cond_12
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2447
    if-eqz v4, :cond_11

    .line 2448
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2449
    if-eqz v3, :cond_11

    .line 2450
    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfW:F

    add-float/2addr v5, v6

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->halfH:F

    add-float/2addr v6, v3

    .line 2451
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 2452
    if-eqz v7, :cond_55

    iget v3, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v8

    :goto_29
    if-eqz v7, :cond_2e

    iget v0, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v0, v8

    .line 2453
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

    .line 2452
    goto :goto_29

    :cond_57
    move v0, v2

    .line 2453
    goto :goto_53
.end method

.method static arenaLevel(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2635
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

    .line 2647
    :goto_16
    return-object v0

    .line 2637
    :cond_17
    :try_start_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2638
    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 2639
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2640
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 2641
    const v3, 0x7f06002d

    iput v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 2642
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 2643
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

    .line 2645
    :catch_57
    move-exception v0

    .line 2646
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

    .line 2647
    goto :goto_16
.end method

.method private static askAccept(Ljava/lang/String;J)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 354
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    .line 355
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 356
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 358
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->activity()Landroid/app/Activity;

    move-result-object v2

    .line 359
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_18
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 361
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

    .line 365
    :cond_2a
    :goto_2a
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->joinAsk:Z

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    .line 368
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

    .line 369
    :catch_4b
    move-exception v2

    .line 372
    :cond_4c
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    .line 373
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

    .line 362
    :catch_5c
    move-exception v2

    goto :goto_2a
.end method

.method static autoAcceptForTest()V
    .registers 1

    .prologue
    .line 2658
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static b255(F)I
    .registers 3

    .prologue
    .line 950
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    .line 951
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
    .line 1898
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
    .line 1477
    const/16 v0, 0x60

    if-lt p1, v0, :cond_6

    const/4 v0, 0x0

    .line 1485
    :cond_5
    :goto_5
    return-object v0

    .line 1478
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->barPool:[[Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    .line 1479
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

    .line 1480
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

    .line 1482
    :cond_50
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 1483
    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xa:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extA:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xr:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xg:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xb:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 1484
    iget v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->pourcentageValue:F

    iget v2, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, p2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    goto :goto_5
.end method

.method public static beforeSwap(Lfr/testudo/spacecorsair/engine/RenderQueue;)V
    .registers 21

    .prologue
    .line 2272
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_5

    .line 2339
    :cond_4
    :goto_4
    return-void

    .line 2274
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2275
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

    .line 2276
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastSendMs:J

    .line 2277
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2278
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 2279
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v2, :cond_4

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v2, :cond_4

    .line 2280
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2281
    if-eqz v4, :cond_4

    .line 2282
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_140

    .line 2283
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_4

    .line 2284
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v13, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2285
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2286
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2287
    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_ad

    iget-object v2, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_67
    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2288
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2289
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2290
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 2291
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

    .line 2292
    :cond_9d
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpLastHost:J

    .line 2293
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v2, :cond_b0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModLan;->leanHost(Lfr/testudo/spacecorsair/engine/RenderQueue;ILfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;J)V

    goto/16 :goto_4

    .line 2336
    :catch_aa
    move-exception v2

    goto/16 :goto_4

    .line 2287
    :cond_ad
    const-string v2, ""

    goto :goto_67

    .line 2294
    :cond_b0
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v14, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2295
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2296
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2297
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

    .line 2298
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2299
    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2300
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2301
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2302
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2303
    if-nez v4, :cond_12d

    const/4 v2, 0x0

    move v3, v2

    .line 2304
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

    .line 2305
    :cond_118
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 2306
    const/4 v2, 0x2

    invoke-static {v2, v13}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2307
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2297
    :cond_127
    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    goto :goto_c8

    :cond_12a
    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    goto :goto_cd

    .line 2303
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

    .line 2304
    :cond_13c
    array-length v2, v4

    add-int/lit8 v2, v2, -0x2

    goto :goto_10c

    .line 2308
    :cond_140
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2309
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2310
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2311
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v8, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2312
    iget-boolean v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_258

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_258

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_258

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-nez v2, :cond_258

    const/4 v2, 0x1

    move v3, v2

    .line 2313
    :goto_172
    sget-boolean v18, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    .line 2314
    if-eqz v18, :cond_184

    if-nez v3, :cond_184

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1f4

    cmp-long v2, v10, v12

    if-ltz v2, :cond_4

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2315
    :cond_184
    if-eqz v18, :cond_189

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2316
    :cond_189
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2317
    iget-object v2, v8, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_25c

    iget-object v2, v8, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_196
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2318
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2319
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

    .line 2320
    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2321
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfW()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->viewHalfH()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2322
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2323
    new-instance v15, Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2324
    const/4 v2, 0x0

    .line 2325
    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-ltz v8, :cond_21b

    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sget v9, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    if-le v8, v9, :cond_21b

    if-nez v3, :cond_205

    if-nez v18, :cond_21b

    :cond_205
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

    .line 2326
    :cond_21b
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2327
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2328
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2329
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2330
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 2331
    if-eqz v18, :cond_246

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2332
    :cond_246
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->declare(J)V

    .line 2333
    if-eqz v18, :cond_260

    const/16 v2, 0xb

    :goto_24d
    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2334
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_4

    .line 2312
    :cond_258
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_172

    .line 2317
    :cond_25c
    const-string v2, ""
    :try_end_25e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_25e} :catch_aa

    goto/16 :goto_196

    .line 2333
    :cond_260
    const/4 v2, 0x3

    goto :goto_24d
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

    .line 524
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 525
    const v2, 0x8000

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 526
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 527
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 528
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 529
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 530
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 531
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    .line 532
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I

    .line 533
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

    .line 534
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

    .line 535
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 536
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

    .line 537
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->resetTables()V

    .line 538
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 539
    const-string v0, "Co-op connected"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 540
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

    .line 541
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->announce:Z

    .line 542
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 543
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 544
    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_b4

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    move-object v6, p0

    .line 545
    :cond_b4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$6;

    invoke-direct {v2, p1, p2, v6, v0}, Lfr/testudo/spacecorsair/mod/ModLan$6;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/io/DataInputStream;)V

    const-string v0, "lan-read"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    .line 579
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$7;

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLan$7;-><init>(JLjava/util/concurrent/locks/ReentrantLock;Ljava/io/DataOutputStream;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    const-string v2, "lan-write"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    .line 612
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->readerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->writerT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 614
    return-void

    .line 536
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
    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 446
    :cond_9
    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 447
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 448
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 449
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

    .line 450
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

    .line 453
    :catch_4f
    move-exception v0

    .line 456
    :cond_50
    :try_start_50
    const-string v0, "255.255.255.255"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_5a

    .line 457
    :goto_59
    return-object v1

    .line 456
    :catch_5a
    move-exception v0

    goto :goto_59
.end method

.method static buttonLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2681
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_f

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_f

    const-string v0, "Multiplayer"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2682
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
    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aget-object v23, v2, v3

    .line 960
    const/16 v22, 0x0

    .line 961
    :goto_10
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_527

    move/from16 v0, v22

    move/from16 v1, p8

    if-ge v0, v1, :cond_527

    .line 962
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2f

    move/from16 v0, p1

    move/from16 v1, p4

    if-ge v0, v1, :cond_2f

    move/from16 v2, v22

    .line 961
    :goto_2a
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, v2

    goto :goto_10

    .line 963
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

    .line 964
    :cond_41
    aget-object v13, v23, p1

    .line 965
    if-eqz v13, :cond_528

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/display/RenderElement;->cameraRelative:Z

    if-nez v2, :cond_528

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fBack:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move/from16 v2, v22

    goto :goto_2a

    .line 966
    :cond_54
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fType:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 967
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPos:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 968
    if-nez v2, :cond_67

    move/from16 v2, v22

    goto :goto_2a

    .line 969
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

    .line 970
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->fZoom:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    .line 971
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->SPRITE:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_2d3

    .line 972
    iget-object v3, v13, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 973
    if-eqz v3, :cond_528

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eq v3, v4, :cond_528

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-ne v3, v4, :cond_98

    move/from16 v2, v22

    goto :goto_2a

    .line 974
    :cond_98
    instance-of v4, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    if-eqz v4, :cond_52c

    .line 975
    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v5, v7, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    .line 976
    check-cast v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;

    iget-object v14, v3, Lfr/testudo/spacecorsair/mod/ModPoliceData$Tinted;->base:Lfr/testudo/spacecorsair/display/Drawable;

    move v11, v4

    move v10, v5

    move v9, v6

    .line 978
    :goto_ae
    iget-object v3, v14, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->defId(Lfr/testudo/spacecorsair/display/Texture;)I

    move-result v4

    .line 979
    if-gez v4, :cond_ba

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 980
    :cond_ba
    instance-of v3, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 981
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v5, :cond_1ef

    .line 982
    if-eqz v3, :cond_110

    move-object v5, v14

    check-cast v5, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v21, v5

    .line 984
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

    .line 985
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 986
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

    .line 982
    :cond_110
    const/4 v5, 0x0

    move-object/from16 v21, v5

    goto :goto_c7

    .line 988
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

    .line 989
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

    .line 990
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

    .line 991
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

    .line 989
    invoke-static/range {v2 .. v21}, Lfr/testudo/spacecorsair/mod/ModLanSync;->sprite(Ljava/io/DataOutputStream;ZIFFFIIIIIFFFFFFZFF)Z

    move-result v2

    if-eqz v2, :cond_528

    .line 991
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 988
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

    .line 990
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

    .line 991
    :cond_1e9
    const/16 v20, 0x0

    goto :goto_19e

    :cond_1ec
    const/16 v21, 0x0

    goto :goto_1ae

    .line 994
    :cond_1ef
    if-eqz v3, :cond_2a9

    const/4 v5, 0x1

    :goto_1f2
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 995
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 996
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

    .line 997
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

    .line 998
    if-eqz v3, :cond_2b6

    .line 999
    check-cast v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 1000
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

    .line 1001
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1002
    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v14, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1003
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

    .line 1004
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

    .line 1009
    :cond_2a5
    :goto_2a5
    add-int/lit8 v2, v22, 0x1

    .line 1010
    goto/16 :goto_2a

    .line 994
    :cond_2a9
    const/4 v5, 0x0

    goto/16 :goto_1f2

    .line 1000
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

    .line 1006
    :cond_2b6
    if-eqz v12, :cond_2d1

    const/4 v2, 0x1

    :goto_2b9
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1007
    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v14, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2a5

    .line 1006
    :cond_2d1
    const/4 v2, 0x0

    goto :goto_2b9

    .line 1010
    :cond_2d3
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->TEXT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_38a

    .line 1011
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fText:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 1012
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fTSize:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lfr/testudo/spacecorsair/textengine/TextSize;

    .line 1013
    if-eqz v11, :cond_528

    if-eqz v10, :cond_528

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2f9

    move/from16 v2, v22

    goto/16 :goto_2a

    .line 1014
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

    .line 1015
    :cond_32e
    const/4 v3, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1016
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1017
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

    .line 1018
    if-eqz v12, :cond_388

    const/4 v2, 0x1

    :goto_36d
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1019
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1020
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->forWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1021
    add-int/lit8 v2, v22, 0x1

    .line 1022
    goto/16 :goto_2a

    .line 1018
    :cond_388
    const/4 v2, 0x0

    goto :goto_36d

    .line 1022
    :cond_38a
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->POINT:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_407

    .line 1023
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

    .line 1024
    :cond_3bc
    const/4 v3, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1025
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1026
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

    .line 1027
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fPSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1028
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1029
    :cond_407
    sget-object v4, Lfr/testudo/spacecorsair/display/RenderElementType;->INFOBAR:Lfr/testudo/spacecorsair/display/RenderElementType;

    if-ne v3, v4, :cond_528

    .line 1030
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->fInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1031
    instance-of v4, v3, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-nez v4, :cond_419

    move/from16 v2, v22

    goto/16 :goto_2a

    :cond_419
    move-object v9, v3

    .line 1032
    check-cast v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 1033
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-eqz v3, :cond_48c

    .line 1034
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLan;->barCol:[I

    .line 1035
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

    .line 1036
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

    .line 1037
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

    .line 1040
    :cond_48c
    const/4 v3, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1041
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v3, p5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v2, p6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1042
    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1043
    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->height:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v9, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1044
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

    .line 1045
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

    .line 1046
    add-int/lit8 v2, v22, 0x1

    goto/16 :goto_2a

    .line 1049
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
    .line 2665
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    .line 2666
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
    .line 329
    if-nez p0, :cond_5

    const-string v0, ""

    .line 335
    :goto_4
    return-object v0

    .line 330
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_2f

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 333
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2c

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 335
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static connectTo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2901
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 2908
    :goto_6
    return-void

    .line 2902
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$46;

    invoke-direct {v1, p1, p0}, Lfr/testudo/spacecorsair/mod/ModLan$46;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    const-string v2, "lan-join"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2907
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method public static countsAsEnemy(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 1948
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

    .line 1828
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 1829
    if-eqz v0, :cond_c

    .line 1838
    :goto_b
    return-object v0

    .line 1830
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1831
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_17
    if-ge v0, v4, :cond_54

    aget-object v5, v3, v0

    .line 1832
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_26

    .line 1831
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1833
    :cond_26
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1834
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

    .line 1836
    :cond_54
    new-array v0, v1, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 1837
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgFieldCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private static declare(J)V
    .registers 8

    .prologue
    .line 1856
    :try_start_0
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 1874
    :cond_a
    :goto_a
    return-void

    .line 1857
    :cond_b
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    .line 1858
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->mine()Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    move-result-object v0

    .line 1859
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v1, :cond_30

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hasDev(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1860
    const-string v0, "DEV ships and DEV gear cannot be used in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 1861
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_a

    .line 1871
    :catch_2e
    move-exception v0

    goto :goto_a

    .line 1864
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

    .line 1865
    :cond_42
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->declSent:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 1866
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->declSentAt:J

    .line 1867
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->encode(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)[B

    move-result-object v0

    .line 1868
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1869
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1870
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

    .line 861
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v2

    .line 862
    if-nez v2, :cond_9

    move v0, v1

    .line 878
    :goto_8
    return v0

    .line 863
    :cond_9
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v3

    .line 864
    :try_start_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 865
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 879
    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v0

    .line 866
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

    .line 867
    :cond_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 868
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_1c

    .line 870
    :try_start_3e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 871
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 872
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 873
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 874
    const/4 v2, 0x1

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_56} :catch_5c
    .catchall {:try_start_3e .. :try_end_56} :catchall_1c

    .line 878
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_8

    .line 875
    :catch_5c
    move-exception v0

    .line 876
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

    .line 1351
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x60

    if-le v2, v3, :cond_14

    .line 1366
    :cond_13
    :goto_13
    return v0

    .line 1352
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1353
    const/16 v3, 0x52

    if-ne v2, v3, :cond_33

    .line 1355
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_7d

    move-result v2

    .line 1356
    ushr-int/lit8 v3, v2, 0x10

    const/16 v4, 0x7f02

    if-eq v3, v4, :cond_31

    ushr-int/lit8 v2, v2, 0x10

    const/16 v3, 0x7f03

    if-ne v2, v3, :cond_13

    :cond_31
    move v0, v1

    goto :goto_13

    .line 1361
    :cond_33
    const/16 v3, 0x4c

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_13

    :cond_3b
    move v2, v1

    .line 1362
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 1363
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1364
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

    .line 1362
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1366
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

    .line 1357
    :catch_7d
    move-exception v1

    goto :goto_13
.end method

.method static defineForTest(ILfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 2671
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
    .line 1962
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 1969
    :goto_9
    return v0

    .line 1964
    :cond_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_41

    .line 1965
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    .line 1966
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 1967
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

    .line 1968
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    .line 1969
    const/4 v0, 0x1

    goto :goto_9

    .line 1964
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
    .line 2477
    if-eqz p0, :cond_7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v0, :cond_7

    .line 2480
    :goto_6
    return-void

    .line 2478
    :cond_7
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2479
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

    .line 2624
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

    .line 2630
    :cond_15
    :goto_15
    return p1

    .line 2625
    :cond_16
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2626
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_15

    .line 2627
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2628
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_15
.end method

.method private static enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1136
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

    .line 1151
    :cond_15
    :goto_15
    return-object v0

    .line 1137
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

    .line 1140
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    const-class v3, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1141
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1142
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_42
    if-ge v2, v5, :cond_83

    aget-object v0, v4, v2

    .line 1143
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1144
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

    .line 1150
    :goto_6c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_15

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMakers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1142
    :cond_7c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 1147
    :catch_80
    move-exception v0

    move-object v0, v1

    .line 1148
    goto :goto_6c

    :cond_83
    move-object v0, v1

    goto :goto_6c
.end method

.method private static explode(FF)V
    .registers 9

    .prologue
    .line 2596
    const/high16 v2, 0x43f00000    # 480.0f

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f19999a    # 0.6f

    move v0, p0

    move v1, p1

    :try_start_e
    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    .line 2597
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_19

    .line 2601
    :goto_18
    return-void

    .line 2598
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method private static extent(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 2263
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

    .line 2264
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

    .line 2266
    :goto_2a
    return v0

    .line 2264
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->fy:Ljava/lang/reflect/Field;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 2265
    :catch_2e
    move-exception v0

    .line 2266
    const v0, 0x44bb8000    # 1500.0f

    goto :goto_2a
.end method

.method private static fail(Ljava/lang/Throwable;)V
    .registers 15

    .prologue
    const-wide/16 v12, 0x7530

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 617
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 618
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 619
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

    .line 620
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 621
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 622
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 623
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 624
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->netPeerId:Ljava/lang/String;

    .line 625
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 626
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

    .line 627
    if-eqz v1, :cond_69

    sput-boolean v10, Lfr/testudo/spacecorsair/mod/ModLan;->lost:Z

    .line 628
    :cond_69
    if-eqz v6, :cond_9b

    .line 629
    if-ne v2, v10, :cond_87

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_87

    .line 630
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 631
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 665
    :cond_83
    :goto_83
    return-void

    .line 626
    :cond_84
    const-string v0, ""

    goto :goto_5b

    .line 632
    :cond_87
    if-ne v2, v11, :cond_83

    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 633
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 634
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->rejoin()V

    goto :goto_83

    .line 638
    :cond_9b
    if-eqz v1, :cond_83

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z

    if-nez v0, :cond_83

    .line 640
    if-ne v2, v10, :cond_ba

    .line 641
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v12

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinUntil:J

    .line 643
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 644
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 645
    const-string v0, "Co-op link lost. Waiting 30 s for your friend to reconnect..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_83

    .line 646
    :cond_ba
    if-ne v2, v11, :cond_83

    if-eqz v3, :cond_83

    .line 647
    const-string v0, "Co-op link lost. Reconnecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 648
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 649
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$8;

    invoke-direct {v4, v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLan$8;-><init>(JLjava/lang/String;)V

    const-string v0, "lan-rejoin"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 663
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
    .line 1345
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

    .line 1346
    :cond_14
    return p0
.end method

.method private static findHosts(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 2861
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

    .line 2862
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$42;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$42;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lan-scan"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2874
    return-void
.end method

.method private static fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 14

    .prologue
    .line 1975
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1976
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1977
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->shotClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1978
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

    .line 2020
    :cond_29
    :goto_29
    return-void

    .line 1979
    :cond_2a
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->newProjectile(Ljava/lang/Class;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v4

    .line 1980
    if-eqz v4, :cond_29

    .line 1981
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

    .line 1982
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

    .line 2017
    :catch_58
    move-exception v0

    .line 2018
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

    .line 1984
    :cond_72
    :try_start_72
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1986
    if-nez v0, :cond_167

    .line 1987
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    .line 1988
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

    .line 1989
    :cond_a7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    move-object v2, v0

    .line 1992
    :goto_ac
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->damageFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1993
    const/4 v1, 0x0

    .line 1994
    array-length v5, v3

    const/4 v0, 0x0

    :goto_b3
    if-ge v0, v5, :cond_d8

    aget-object v8, v3, v0

    .line 1995
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v8

    .line 1996
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

    .line 1997
    :cond_d1
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1994
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 1999
    :cond_d8
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_e2

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2001
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

    .line 2002
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

    .line 2003
    cmpg-float v2, v0, v1

    if-gez v2, :cond_14f

    .line 2004
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    cmp-long v2, v8, v10

    if-lez v2, :cond_129

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clampAt:J

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2005
    :cond_129
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->clamped:J

    .line 2006
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_13c

    const/4 v0, 0x1

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    goto/16 :goto_29

    .line 2002
    :cond_13a
    const/4 v0, 0x0

    goto :goto_10f

    .line 2007
    :cond_13c
    div-float v1, v0, v1

    .line 2008
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

    .line 2010
    :cond_14f
    iput-object p1, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 2011
    const/4 v0, 0x0

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 2012
    const/4 v0, 0x0

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->poisonSource:Lfr/testudo/spacecorsair/business/Element;

    .line 2013
    const/4 v0, 0x0

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    .line 2014
    const/4 v0, 0x0

    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPlayer:Z

    .line 2015
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->updateSapCoords()V

    .line 2016
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
    .line 2398
    const-class v1, Lfr/testudo/spacecorsair/mod/ModLanSync;

    monitor-enter v1

    .line 2399
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

    .line 2400
    array-length v3, v0

    add-int/lit8 v3, v3, 0x5

    new-array v3, v3, [B

    .line 2401
    const/4 v4, 0x0

    const/16 v5, 0xc

    aput-byte v5, v3, v4

    const/4 v4, 0x4

    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2402
    const/4 v4, 0x0

    const/4 v5, 0x5

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2403
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

    .line 2406
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v0

    .line 2405
    :cond_3a
    :try_start_3a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2406
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 2407
    return-void
.end method

.method static frame()V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1705
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3c

    const-wide/16 v0, 0x10

    .line 1706
    :goto_10
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastFrameMs:J

    .line 1707
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    .line 1708
    const/4 v4, -0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxyFrom:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipTo:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->shipFrom:I

    .line 1709
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->skipN:I

    .line 1711
    :try_start_23
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1712
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1713
    :cond_31
    if-eqz v5, :cond_3b

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_fc

    if-nez v4, :cond_4d

    .line 1738
    :cond_3b
    :goto_3b
    return-void

    .line 1705
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

    .line 1714
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

    if-lez v4, :cond_ff

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

    .line 1715
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

    .line 1716
    :cond_ac
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->testSwitch(J)V

    .line 1717
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

    .line 1718
    :cond_e1
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x7d0

    cmp-long v4, v8, v10

    if-lez v4, :cond_f0

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->persistAt:J

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->persistedMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 1719
    :cond_f0
    invoke-static {v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->guestPos(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 1720
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v4, :cond_102

    .line 1721
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    goto/16 :goto_3b

    .line 1735
    :catch_fc
    move-exception v0

    goto/16 :goto_3b

    .line 1714
    :cond_ff
    const-string v4, ""

    goto :goto_82

    .line 1724
    :cond_102
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xbb8

    cmp-long v4, v8, v10

    if-lez v4, :cond_267

    .line 1725
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->lastLog:J

    .line 1726
    const-string v6, "lan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v4, v3, :cond_270

    const-string v4, "host"

    :goto_11b
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

    if-eqz v7, :cond_160

    move v2, v3

    :cond_160
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

    .line 1731
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logOut:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logIn:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->logRaw:J

    .line 1733
    :cond_267
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_274

    invoke-static {v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto/16 :goto_3b

    .line 1726
    :cond_270
    const-string v4, "guest"

    goto/16 :goto_11b

    .line 1734
    :cond_274
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLan;->guestFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_27c
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_27c} :catch_fc

    goto/16 :goto_3b
.end method

.method private static frameBytes(ILjava/io/ByteArrayOutputStream;)[B
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 818
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 819
    add-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    .line 820
    int-to-byte v2, p0

    aput-byte v2, v1, v4

    .line 821
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

    .line 822
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    return-object v1
.end method

.method static guestActive()Z
    .registers 2

    .prologue
    .line 2156
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

    .line 2145
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 2146
    if-ne p0, v3, :cond_18

    move v0, v1

    :goto_9
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->shipNow:Z

    .line 2147
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v0, :cond_1a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2152
    :goto_17
    return v1

    :cond_18
    move v0, v2

    .line 2146
    goto :goto_9

    .line 2148
    :cond_1a
    if-eq p0, v3, :cond_1e

    move v1, v2

    goto :goto_17

    .line 2150
    :cond_1e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 2151
    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    goto :goto_17

    .line 2150
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

    .line 2559
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->pvp:Z

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2560
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_f

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2584
    :cond_e
    :goto_e
    return-void

    .line 2561
    :cond_f
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_3a

    .line 2562
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2563
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_37

    .line 2564
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeats:I

    .line 2565
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2566
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2568
    :cond_37
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2570
    :cond_3a
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v0, v3, :cond_e

    .line 2571
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    if-le v0, v3, :cond_8b

    move v0, v1

    .line 2572
    :goto_47
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-nez v3, :cond_8d

    .line 2573
    :goto_4b
    if-nez v1, :cond_6b

    if-nez v0, :cond_6b

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    if-eq v2, v3, :cond_6b

    .line 2574
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 2575
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2576
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2578
    :cond_6b
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->round:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 2579
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hostWins:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->guestWins:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2580
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 2581
    if-nez v1, :cond_85

    if-eqz v0, :cond_85

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2582
    :cond_85
    if-nez v1, :cond_e

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    goto :goto_e

    :cond_8b
    move v0, v2

    .line 2571
    goto :goto_47

    :cond_8d
    move v1, v2

    .line 2572
    goto :goto_4b
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

    .line 2041
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_30

    .line 2042
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

    .line 2043
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

    .line 2122
    :cond_2f
    :goto_2f
    return-void

    .line 2041
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 2043
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 2044
    :cond_36
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2046
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

    .line 2047
    if-eq v0, p0, :cond_42

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_42

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2048
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v1, :cond_66

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->myLoot:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2049
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

    .line 2050
    :cond_85
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_42

    .line 2052
    :cond_89
    const/4 v0, 0x0

    .line 2053
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

    .line 2054
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

    .line 2053
    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0

    .line 2055
    :cond_cd
    if-eqz v6, :cond_2f

    .line 2056
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 2058
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

    .line 2059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2060
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v2, :cond_fc

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    sub-long v2, v0, v2

    const-wide/16 v8, 0xbb8

    cmp-long v2, v2, v8

    if-lez v2, :cond_2f

    .line 2061
    :cond_fc
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 2062
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->pullAt:J

    .line 2064
    const/4 v1, 0x0

    .line 2065
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

    .line 2066
    :goto_116
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_15f

    .line 2067
    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v2, :cond_128

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v1, :cond_128

    iget-object v1, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2068
    :cond_128
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v2, "VECTOR00_GATE"

    invoke-virtual {v5, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
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

    .line 2072
    :catch_158
    move-exception v0

    goto/16 :goto_2f

    .line 2065
    :cond_15b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_108

    .line 2070
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

    .line 2071
    goto :goto_14b

    .line 2078
    :cond_16b
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    if-eqz v0, :cond_189

    .line 2079
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pulled:Z

    .line 2080
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_2a4

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    const/high16 v4, 0x45160000    # 2400.0f

    add-float/2addr v1, v4

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2082
    :goto_181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2083
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2086
    :cond_189
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_193

    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 2087
    :cond_193
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->dmg:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    sub-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sub-float v1, v0, v1

    .line 2088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2089
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v0, v8, v12

    if-nez v0, :cond_2b5

    move v0, v2

    .line 2090
    :goto_1a7
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_1b7

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v10

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    const v7, 0x4e6e6b28    # 1.0E9f

    sput v7, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 2091
    :cond_1b7
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    .line 2093
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v4, v10

    sget v5, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 2094
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v4, :cond_1f9

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1f9

    .line 2095
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    add-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    .line 2096
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1ed

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 2097
    :cond_1ed
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    sub-float/2addr v4, v1

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgRoom:F

    .line 2098
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1f9

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 2101
    :cond_1f9
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    cmp-long v1, v4, v12

    if-gez v1, :cond_203

    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    .line 2102
    :cond_203
    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->xp:J

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    sub-long/2addr v4, v8

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    sub-long/2addr v4, v8

    .line 2104
    const/high16 v1, 0x447a0000    # 1000.0f

    :try_start_20d
    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v7, v7, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v8, v7, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-float v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2105
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

    .line 2107
    :goto_227
    cmp-long v0, v4, v12

    if-lez v0, :cond_25f

    .line 2108
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    add-long/2addr v0, v4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    .line 2109
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

    .line 2110
    :goto_244
    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    long-to-float v5, v0

    sub-float/2addr v4, v5

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->xpRoom:F

    .line 2111
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

    .line 2113
    :cond_25f
    :goto_25f
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->guestMission(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InFrame;)V

    .line 2114
    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    .line 2115
    iget-boolean v0, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    if-eqz v0, :cond_2db

    .line 2116
    iget-wide v8, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->span:J

    cmp-long v0, v8, v12

    if-gtz v0, :cond_2c5

    move v0, v3

    .line 2117
    :goto_271
    iget-object v3, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v5, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v5, v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->glide([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IF)V

    .line 2118
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

    .line 2120
    :goto_291
    iget-object v1, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v4, v2, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    .line 2121
    const/high16 v1, 0x43160000    # 150.0f

    add-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->drawLabel(FFLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 2081
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

    .line 2089
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

    .line 2116
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

    .line 2111
    :catch_2d6
    move-exception v0

    goto :goto_25f

    .line 2106
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
    .line 1532
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-gtz v1, :cond_f

    .line 1565
    :cond_e
    :goto_e
    return-void

    .line 1534
    :cond_f
    :try_start_f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 1535
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v14, v2, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1536
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v15, v2

    .line 1537
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-lez v2, :cond_e

    .line 1538
    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    div-float v16, v2, v15

    .line 1539
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1540
    const/4 v2, 0x0

    move v13, v2

    :goto_3c
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    if-ge v13, v2, :cond_e

    .line 1541
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 1542
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 1543
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

    .line 1544
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readFloat()F

    move-result v12

    .line 1545
    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v6, v2

    iget v6, v14, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v3, v6, v3

    .line 1546
    mul-float v6, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v6, v11

    mul-float v11, v15, v15

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_91

    .line 1540
    :cond_8d
    :goto_8d
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3c

    .line 1547
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

    .line 1548
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_bd

    const/4 v2, 0x1

    .line 1549
    :goto_a7
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_cd

    .line 1550
    if-eqz v2, :cond_bf

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/Mission;->targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 1551
    :goto_af
    if-eqz v4, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto :goto_8d

    .line 1562
    :catch_ba
    move-exception v1

    goto/16 :goto_e

    .line 1548
    :cond_bd
    const/4 v2, 0x0

    goto :goto_a7

    .line 1550
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

    .line 1552
    :cond_cd
    if-eqz v2, :cond_105

    .line 1553
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_f9

    const-string v2, "icon_skull"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 1554
    :goto_d9
    if-eqz v2, :cond_fb

    .line 1555
    const/high16 v6, 0x41500000    # 13.0f

    const v3, 0x3f555555

    mul-float v5, v6, v3

    .line 1556
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

    .line 1553
    :cond_f9
    const/4 v2, 0x0

    goto :goto_d9

    .line 1557
    :cond_fb
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->mkAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-static/range {v5 .. v12}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto :goto_8d

    .line 1558
    :cond_105
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    array-length v2, v2

    if-ge v5, v2, :cond_8d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->RDT:[Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    aget-object v2, v2, v5

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_8d

    .line 1559
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
    .line 1588
    :try_start_0
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    if-nez v0, :cond_11

    .line 1598
    :cond_10
    :goto_10
    return-void

    .line 1589
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1590
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

    .line 1591
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_79

    .line 1592
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

    .line 1593
    :goto_4e
    :try_start_4e
    const-string v1, "CO-OP MISSION COMPLETE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1594
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

    .line 1595
    :catch_79
    move-exception v0

    goto :goto_10

    .line 1592
    :catch_7b
    move-exception v1

    goto :goto_4e
.end method

.method private static guestPos(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2351
    :try_start_2
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2352
    if-eqz v2, :cond_e

    iget-object v3, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v3, :cond_f

    .line 2379
    :cond_e
    :goto_e
    return-void

    .line 2353
    :cond_f
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v3, :cond_4c

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4c

    .line 2354
    :goto_18
    if-nez v0, :cond_1e

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    if-eqz v1, :cond_92

    .line 2356
    :cond_1e
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2357
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->posAt:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    .line 2358
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

    .line 2376
    :catch_4a
    move-exception v0

    goto :goto_e

    :cond_4c
    move v0, v1

    .line 2353
    goto :goto_18

    .line 2359
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

    .line 2360
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModLan;->posAt:J

    .line 2361
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posLive:Z

    .line 2362
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

    .line 2365
    :cond_92
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    if-eqz v0, :cond_e

    .line 2366
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->posArmed:Z

    .line 2367
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pos"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2369
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->lanPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pos"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2370
    iget-object v1, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->posOf(Ljava/lang/String;Ljava/lang/String;J)[F

    move-result-object v0

    .line 2371
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_e

    .line 2372
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2373
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2374
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2375
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 485
    const/16 v2, 0xbb8

    :try_start_4
    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 486
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 487
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 488
    const-string v3, "SCLAN2"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [B

    .line 489
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 490
    const-string v5, "SCLAN2"

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 509
    :goto_33
    return v0

    .line 491
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

    .line 492
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 493
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_87

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 495
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

    .line 496
    if-eqz v2, :cond_90

    const/4 v1, 0x3

    :try_start_7e
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_33

    .line 508
    :catch_85
    move-exception v1

    goto :goto_33

    .line 493
    :cond_87
    const-string v2, ""
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_89} :catch_85

    move-object v3, v2

    goto :goto_6a

    :cond_8b
    move v2, v0

    .line 495
    goto :goto_7a

    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v1

    .line 497
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

    .line 498
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

    .line 499
    :goto_e3
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 500
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

    .line 498
    :cond_11c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->rejoinAddr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    :cond_124
    move v2, v0

    goto :goto_e3

    .line 501
    :cond_126
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 502
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 504
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 505
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 506
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_149} :catch_85

    move v0, v1

    .line 507
    goto/16 :goto_33
.end method

.method static host()V
    .registers 5

    .prologue
    .line 121
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 176
    :goto_8
    return-void

    .line 123
    :cond_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 124
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 125
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 126
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 127
    const-string v2, "Waiting for a player to join..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 128
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$1;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$1;-><init>(J)V

    const-string v4, "lan-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    .line 150
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->acceptT:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 151
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$2;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan$2;-><init>(J)V

    const-string v0, "lan-beacon"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beaconT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_8
.end method

.method private static hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2492
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_23

    .line 2493
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2494
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2495
    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2496
    if-eqz p2, :cond_34

    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    :goto_1c
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2497
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2498
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2500
    :cond_23
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_36

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    if-nez v0, :cond_36

    .line 2501
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 2502
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 2503
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->leaveBay()V

    .line 2541
    :cond_33
    :goto_33
    return-void

    :cond_34
    move v0, v1

    .line 2496
    goto :goto_1c

    .line 2506
    :cond_36
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v0, :cond_33

    .line 2507
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2509
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    if-eqz v3, :cond_52

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1770

    cmp-long v3, v4, v6

    if-lez v3, :cond_33

    .line 2510
    :cond_52
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->jumpedIn:Z

    .line 2511
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->jumpAt:J

    .line 2512
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_64

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v0, :cond_64

    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2513
    :cond_64
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v1, "VECTOR00_GATE"

    invoke-virtual {p1, v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
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

    .line 2519
    :cond_88
    if-eqz p2, :cond_137

    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_137

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_137

    move v0, v2

    .line 2520
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

    .line 2521
    :cond_c1
    if-eqz p2, :cond_f5

    iget v3, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    if-gt v3, v4, :cond_cb

    if-eqz v0, :cond_f5

    .line 2522
    :cond_cb
    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2523
    iget v0, p2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->seenDefeats:I

    .line 2524
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    .line 2525
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2526
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2527
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_f2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2528
    :cond_f2
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2530
    :cond_f5
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    if-eqz v0, :cond_12c

    .line 2531
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->lostRound:Z

    .line 2532
    sput v6, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 2533
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2534
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    .line 2535
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    .line 2536
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->explode(FF)V

    .line 2537
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_129

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 2538
    :cond_129
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->roundText(Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)V

    .line 2540
    :cond_12c
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    if-eqz v0, :cond_33

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->restore:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_33

    :cond_137
    move v0, v1

    .line 2519
    goto/16 :goto_9f
.end method

.method static hostForTest()V
    .registers 1

    .prologue
    .line 2654
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hostFrame(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    .line 1744
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1745
    :try_start_3
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1746
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1747
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1748
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_50

    .line 1749
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1750
    invoke-static {p0, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->hostMarks(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;)V

    .line 1751
    invoke-static {p0, v5, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->hostDuel(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    .line 1752
    if-eqz v3, :cond_53

    iget-boolean v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    if-eqz v0, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x7d0

    cmp-long v0, v0, v6

    if-gez v0, :cond_53

    iget-object v0, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_53

    iget-object v0, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v1, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_53

    const/4 v0, 0x1

    .line 1754
    :goto_4a
    if-nez v0, :cond_55

    .line 1755
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    .line 1812
    :cond_4f
    return-void

    .line 1748
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 1752
    :cond_53
    const/4 v0, 0x0

    goto :goto_4a

    .line 1758
    :cond_55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_63

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_63

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxyLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eq v0, v5, :cond_6f

    :cond_63
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->removeProxy()V

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V

    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->proxyLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    .line 1759
    :cond_6f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1760
    if-eqz v2, :cond_4f

    .line 1762
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    if-eq v3, v0, :cond_d4

    .line 1763
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->moveState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 1764
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sub-float v1, v0, v1

    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    sub-float v6, v0, v6

    .line 1765
    const v0, 0x3c83126f    # 0.016f

    iget-wide v8, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1766
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v8

    iget v8, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    iget-object v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v8, v9

    .line 1767
    mul-float/2addr v0, v0

    mul-float/2addr v8, v8

    add-float/2addr v0, v8

    const v8, 0x4b742400    # 1.6E7f

    cmpg-float v0, v0, v8

    if-gez v0, :cond_189

    const/4 v0, 0x1

    .line 1768
    :goto_ae
    const v8, 0x45bb8000    # 6000.0f

    mul-float/2addr v7, v8

    const v8, 0x44bb8000    # 1500.0f

    add-float/2addr v7, v8

    .line 1769
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

    .line 1770
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1771
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1777
    :cond_d4
    :goto_d4
    iget v1, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    .line 1778
    mul-float v6, v1, v1

    mul-float v7, v0, v0

    add-float/2addr v6, v7

    .line 1779
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

    .line 1780
    :cond_f0
    const-wide/16 v6, 0xfa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-float v6, v6

    const/high16 v7, 0x41800000    # 16.0f

    div-float/2addr v6, v7

    .line 1781
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    if-eqz v7, :cond_19d

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v7, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1783
    :goto_10e
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1784
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1785
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1787
    const v0, 0x49742400    # 1000000.0f

    iget v1, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    sub-float/2addr v0, v1

    .line 1788
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

    .line 1789
    :cond_133
    const v0, 0x49742400    # 1000000.0f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1790
    const v0, 0x49742400    # 1000000.0f

    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1791
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1ad

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    iget v6, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    div-float/2addr v0, v1

    :goto_151
    iput v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 1792
    const/4 v0, 0x0

    iput-boolean v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 1793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 1794
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    cmp-long v3, v0, v6

    if-eqz v3, :cond_168

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotSec:J

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    .line 1795
    :cond_168
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1796
    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->shotCount:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_1b0

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    goto :goto_16c

    .line 1767
    :cond_189
    const/4 v0, 0x0

    goto/16 :goto_ae

    .line 1773
    :cond_18c
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    .line 1774
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveX:F

    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveY:F

    iget-wide v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    goto/16 :goto_d4

    .line 1782
    :cond_19d
    iget-object v7, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    mul-float v9, v1, v6

    add-float/2addr v8, v9

    iget v9, v3, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    mul-float/2addr v6, v0

    add-float/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_10e

    .line 1791
    :cond_1ad
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_151

    .line 1797
    :cond_1b0
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->fireShot([BLfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_16c

    .line 1799
    :cond_1b4
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1800
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_4f

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_4f

    .line 1801
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->retarget:J

    .line 1802
    iget-object v0, v5, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1cf
    :goto_1cf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1803
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_1cf

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_1cf

    if-eq v0, v2, :cond_1cf

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_1cf

    move-object v1, v0

    .line 1804
    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1805
    iget-object v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eq v4, p0, :cond_1f6

    iget-object v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v4, v2, :cond_1cf

    .line 1807
    :cond_1f6
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 1808
    cmpg-float v0, v4, v0

    if-gez v0, :cond_213

    move-object v0, v2

    .line 1809
    :goto_20b
    iget-object v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eq v4, v0, :cond_1cf

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_1cf

    :cond_213
    move-object v0, p0

    .line 1808
    goto :goto_20b
.end method

.method static hostHides(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1178
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

    .line 1497
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1498
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1500
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

    .line 1501
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

    .line 1503
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

    .line 1504
    const/16 v1, 0x12c

    if-lt v7, v1, :cond_7a

    .line 1517
    :cond_5b
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 1518
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 1519
    const/4 v2, 0x0

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, v1, v2

    .line 1520
    const/4 v2, 0x0

    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1521
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 1525
    :goto_79
    return-void

    .line 1505
    :cond_7a
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_4b

    if-eq v0, p0, :cond_4b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq v0, v1, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    if-eqz v1, :cond_4b

    .line 1506
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-eqz v1, :cond_125

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    if-eqz v1, :cond_125

    move v6, v5

    .line 1507
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

    .line 1508
    :cond_a9
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const v4, 0x469c4000    # 20000.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_4b

    .line 1509
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

    .line 1510
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

    .line 1511
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

    .line 1512
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

    .line 1514
    :goto_11b
    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1515
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 1516
    goto/16 :goto_4b

    :cond_125
    move v6, v3

    .line 1506
    goto/16 :goto_93

    :cond_128
    move v4, v3

    .line 1509
    goto :goto_bf

    :cond_12a
    move v1, v3

    goto :goto_c2

    .line 1513
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

    .line 1522
    :catch_14d
    move-exception v0

    .line 1523
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    goto/16 :goto_79

    .line 1510
    :catch_153
    move-exception v4

    goto/16 :goto_d3
.end method

.method static hostNet()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 181
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 182
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 183
    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 184
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 185
    const-string v0, "Waiting for a player to join..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 186
    return-void
.end method

.method static hostNetForTest()V
    .registers 1

    .prologue
    .line 2656
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    return-void
.end method

.method private static hurt(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 5

    .prologue
    .line 2129
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_18

    .line 2130
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 2131
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "CO-OP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 2133
    :cond_18
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;-><init>()V

    .line 2134
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 2135
    iput p1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 2136
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 2137
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->dummySender:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p0, p1, v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 2141
    :goto_2c
    return-void

    .line 2138
    :catch_2d
    move-exception v0

    .line 2139
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sub-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    goto :goto_2c
.end method

.method private static inBay()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2484
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 2485
    if-eqz v1, :cond_10

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_11

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 2487
    :cond_10
    :goto_10
    return v0

    .line 2486
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method static isAlly(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 1957
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
    .line 1952
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

    .line 240
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 279
    :cond_9
    :goto_9
    return-void

    .line 242
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 243
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 244
    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 245
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 246
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 248
    :try_start_21
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 249
    new-instance v0, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v0, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v1, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 250
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_48

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_3c} :catch_3d

    goto :goto_9

    .line 276
    :catch_3d
    move-exception v0

    .line 277
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 251
    :cond_48
    :try_start_48
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 252
    const-string v4, "SCLAN2"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 253
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 255
    const-string v0, "Waiting for the host to accept..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 256
    const v0, 0x88b8

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 257
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 259
    if-ne v5, v8, :cond_a4

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_95
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 261
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_a7

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto/16 :goto_9

    .line 259
    :cond_a4
    const-string v0, ""

    goto :goto_95

    .line 262
    :cond_a7
    if-eqz v5, :cond_128

    .line 263
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 264
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 265
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 266
    if-ne v5, v8, :cond_117

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

    .line 267
    :goto_fb
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 268
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

    goto/16 :goto_9

    .line 267
    :cond_117
    const/4 v0, 0x3

    if-ne v5, v0, :cond_121

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_fb

    :cond_121
    const-string v0, "The host declined."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_fb

    .line 271
    :cond_128
    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 272
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 273
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 274
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 275
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_139} :catch_3d

    goto/16 :goto_9
.end method

.method private static joinCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2843
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Connecting... This can take up to a minute. The host has to accept."

    .line 2844
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 2845
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$40;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$40;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2846
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$41;

    invoke-direct {v2, p1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$41;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    const-string v0, "lobby-join"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2858
    return-void
.end method

.method static joinNet(Ljava/net/Socket;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v0, 0x0

    .line 205
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 206
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 207
    sput v10, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 208
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 209
    const-string v2, "Waiting for the host to accept..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 211
    :try_start_19
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    const-string v3, "SCLAN2"

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 213
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 215
    const v2, 0x88b8

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 216
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 217
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 218
    if-ne v6, v10, :cond_67

    const/16 v2, 0x40

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 219
    :goto_60
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_6a

    .line 233
    :cond_66
    :goto_66
    return v0

    .line 218
    :cond_67
    const-string v2, ""

    goto :goto_60

    .line 220
    :cond_6a
    if-eqz v6, :cond_df

    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 222
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

    .line 223
    :goto_b8
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_ba} :catch_bb

    goto :goto_66

    .line 231
    :catch_bb
    move-exception v1

    .line 232
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_66

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    const-string v1, "The host did not answer."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_66

    .line 223
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

    .line 226
    :cond_df
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 227
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 228
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 229
    invoke-static {p0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_ee} :catch_bb

    move v0, v1

    .line 230
    goto/16 :goto_66
.end method

.method public static keepRunning()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1199
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

    .line 1200
    :goto_13
    if-eqz v0, :cond_1e

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    const-string v1, "lan"

    const-string v2, "menu open: game keeps running"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_1e
    return v0

    .line 1199
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static kick()V
    .registers 5

    .prologue
    .line 392
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 393
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 394
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

    .line 395
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

    .line 396
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->noRejoin()V

    .line 397
    if-eqz v1, :cond_39

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->kicked()V

    .line 398
    :cond_39
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 399
    if-nez v1, :cond_45

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    .line 401
    :cond_41
    :goto_41
    return-void

    .line 394
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0

    .line 400
    :cond_45
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_41

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    goto :goto_41
.end method

.method static killed(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 4

    .prologue
    .line 1121
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

    .line 1132
    :cond_17
    :goto_17
    return-void

    .line 1122
    :cond_18
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1123
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1124
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1125
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

    .line 1126
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1127
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V

    .line 1128
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsOut:I
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_17

    .line 1129
    :catch_5f
    move-exception v0

    goto :goto_17
.end method

.method private static lanPrefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 1637
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
    .line 2411
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    .line 2412
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

    .line 2413
    :goto_28
    if-nez v5, :cond_3a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    sub-long v2, p4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-gez v2, :cond_38

    .line 2441
    :goto_34
    return-void

    .line 2412
    :cond_35
    const/4 v2, 0x0

    move v5, v2

    goto :goto_28

    .line 2413
    :cond_38
    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->idleAt:J

    .line 2414
    :cond_3a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x60

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2415
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2416
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v2, :cond_148

    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    :goto_52
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2417
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2418
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->round:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2419
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionDone()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2420
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 2421
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

    .line 2422
    :goto_98
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 2423
    if-nez v13, :cond_14f

    const/4 v3, 0x0

    move v12, v3

    .line 2424
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

    .line 2425
    :goto_b1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v14, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2426
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2427
    if-eqz v2, :cond_163

    const/4 v3, 0x1

    move v4, v3

    :goto_c1
    if-eqz v11, :cond_167

    const/4 v3, 0x2

    :goto_c4
    or-int/2addr v3, v4

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2428
    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2429
    if-eqz v2, :cond_e3

    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->write([B)V

    sput-wide p4, Lfr/testudo/spacecorsair/mod/ModLan;->slowAt:J

    sput-object v6, Lfr/testudo/spacecorsair/mod/ModLan;->slowLast:[B

    .line 2430
    :cond_e3
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2431
    new-instance v9, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2432
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->frameStart()V

    .line 2433
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

    .line 2434
    :goto_119
    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2435
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2436
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

    .line 2437
    :cond_135
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 2438
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->flushStyles()V

    .line 2439
    const/16 v2, 0xa

    invoke-static {v2, v14}, Lfr/testudo/spacecorsair/mod/ModLan;->sendLatest(ILjava/io/ByteArrayOutputStream;)V

    .line 2440
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->sentFrames:I

    goto/16 :goto_34

    .line 2416
    :cond_148
    const-string v2, ""

    goto/16 :goto_52

    .line 2421
    :cond_14c
    const/4 v2, 0x0

    goto/16 :goto_98

    .line 2423
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

    .line 2424
    :cond_15f
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_b1

    .line 2427
    :cond_163
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_c1

    :cond_167
    const/4 v3, 0x0

    goto/16 :goto_c4

    .line 2433
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
    .line 2545
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2546
    if-eqz v0, :cond_8

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-eqz v1, :cond_9

    .line 2556
    :cond_8
    :goto_8
    return-void

    .line 2547
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->duelFrom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 2549
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->inBay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2550
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
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

    .line 2553
    :catch_38
    move-exception v0

    goto :goto_8
.end method

.method public static menuOpening()V
    .registers 2

    .prologue
    .line 1195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->menuAt:J

    return-void
.end method

.method static missionDone()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1578
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1579
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

    .line 1581
    :cond_14
    :goto_14
    return v0

    .line 1580
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method static missionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1569
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1570
    if-eqz v0, :cond_d

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    .line 1572
    :goto_c
    return-object v0

    .line 1570
    :cond_d
    const-string v0, ""
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_c

    .line 1571
    :catch_10
    move-exception v0

    .line 1572
    const-string v0, ""

    goto :goto_c
.end method

.method private static missionLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2687
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->missionId()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    .line 2688
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

    .line 2691
    :goto_1d
    return-object v0

    .line 2688
    :cond_1e
    const-string v0, ""

    goto :goto_11

    .line 2689
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

    .line 2690
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

    .line 2691
    :cond_53
    const-string v0, "Missions: pick the same mission to work on it together, or the guest can fly their own missions and come back later."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method static myAddresses()Ljava/lang/String;
    .registers 5

    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 465
    :cond_9
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 466
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 467
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_9

    .line 468
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

    .line 469
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 470
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2b

    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4a

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_4a
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_51} :catch_52

    goto :goto_2b

    .line 476
    :catch_52
    move-exception v0

    .line 479
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
    .line 299
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myNick()Ljava/lang/String;
    .registers 1

    .prologue
    .line 297
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->nick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static myVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 286
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    .line 294
    :goto_6
    return-object v0

    .line 288
    :cond_7
    :try_start_7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 289
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 290
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

    .line 294
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->verCache:Ljava/lang/String;

    goto :goto_6

    .line 291
    :catch_3a
    move-exception v0

    .line 292
    const-string v0, "?"

    goto :goto_6
.end method

.method private static netLines()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2812
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->linkLine()Ljava/lang/String;

    move-result-object v0

    .line 2813
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

    .line 2026
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 2034
    :goto_12
    if-eqz v0, :cond_4a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2035
    :goto_1a
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    return-object v0

    .line 2029
    :cond_1d
    const-class v0, Lfr/testudo/spacecorsair/business/factory/GamePools;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_25
    if-ge v2, v5, :cond_4f

    aget-object v0, v4, v2

    .line 2030
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

    .line 2032
    :goto_40
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->poolMakers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2029
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 2034
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

    .line 350
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

    .line 770
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->rawOut:J

    .line 771
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_91

    .line 772
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    monitor-enter v1

    .line 773
    :try_start_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 774
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 775
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 776
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    array-length v0, v0

    array-length v2, p1

    if-ge v0, v2, :cond_32

    array-length v0, p1

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    .line 777
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 778
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->zOut:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 779
    add-int/lit8 v0, v2, 0xa

    new-array v0, v0, [B

    .line 780
    add-int/lit8 v3, v2, 0x5

    .line 781
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput-byte v5, v0, v4

    .line 782
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

    .line 783
    const/4 v3, 0x5

    int-to-byte v4, p0

    aput-byte v4, v0, v3

    .line 784
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

    .line 785
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->zBuf:[B

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    monitor-exit v1

    .line 794
    :goto_8f
    return-object v0

    .line 788
    :cond_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_16 .. :try_end_91} :catchall_b5

    .line 790
    :cond_91
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    .line 791
    int-to-byte v1, p0

    aput-byte v1, v0, v5

    .line 792
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

    .line 793
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    .line 788
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
    .line 2660
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static peerLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
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
    .line 1667
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

    .line 1668
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 1684
    :cond_1a
    :goto_1a
    return-void

    .line 1669
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 1670
    if-eqz v0, :cond_5e

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1671
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1672
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1673
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 1674
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

    .line 1681
    :catch_5c
    move-exception v0

    goto :goto_1a

    .line 1676
    :cond_5e
    if-nez v0, :cond_64

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    if-eqz v0, :cond_1a

    .line 1677
    :cond_64
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistId:Ljava/lang/String;

    .line 1678
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->persistSeen:Z

    .line 1679
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
    .line 2877
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2878
    const-string v1, "192.168.1.10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2879
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2880
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Join a game"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2881
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 2882
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2883
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$43;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$43;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2886
    const-string v0, "Type address"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$44;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$44;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2897
    :goto_45
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2898
    return-void

    .line 2890
    :cond_49
    const-string v2, "No game found. Type the host\'s address (shown on the host\'s LAN co-op screen):"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2891
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2892
    const-string v2, "Join"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLan$45;

    invoke-direct {v3, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$45;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2895
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
    .line 2381
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

    .line 2386
    :try_start_4
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2387
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

    .line 2393
    :goto_18
    return-object v0

    .line 2388
    :cond_19
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2389
    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2390
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

    .line 2391
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

    .line 2392
    :catch_67
    move-exception v0

    move-object v0, v1

    .line 2393
    goto :goto_18
.end method

.method static preFrame()V
    .registers 4

    .prologue
    .line 1649
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    if-nez v0, :cond_5

    .line 1663
    :cond_4
    :goto_4
    return-void

    .line 1650
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    .line 1652
    :try_start_8
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-eqz v0, :cond_4

    .line 1653
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 1654
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1655
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v2, :cond_4

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v2, :cond_4

    .line 1656
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 1657
    if-eqz v1, :cond_3f

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    if-nez v2, :cond_61

    :cond_3f
    const-string v0, "lan"

    const-string v1, "solo reload skipped: no gate"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_46} :catch_47

    goto :goto_4

    .line 1660
    :catch_47
    move-exception v0

    .line 1661
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

    goto :goto_4

    .line 1658
    :cond_61
    :try_start_61
    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
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
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_82} :catch_47

    goto :goto_4
.end method

.method private static privacy(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 2804
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

    .line 2805
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    .line 2809
    :goto_27
    return-void

    .line 2806
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method private static publicList(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 2835
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$38;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$38;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 2836
    return-void
.end method

.method static queueSize()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 942
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 943
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 945
    :cond_11
    :goto_11
    return v0

    .line 944
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
    .line 2652
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
    .line 2235
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2236
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 2252
    :cond_f
    :goto_f
    return-void

    .line 2237
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_f

    .line 2238
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_f

    .line 2239
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_f

    .line 2240
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_f

    .line 2241
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_f

    .line 2242
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_f

    .line 2243
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_f

    .line 2244
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2245
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2246
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 2247
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2248
    if-nez v0, :cond_86

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2249
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
    .line 2677
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
    .line 303
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerNick:Ljava/lang/String;

    .line 304
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readShortUTF(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerCtry:Ljava/lang/String;

    .line 305
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

    .line 1370
    new-array v1, p1, [Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1371
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_248

    .line 1372
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$Rec;-><init>()V

    .line 1373
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    .line 1374
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v3, :cond_23

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ed

    .line 1375
    :cond_23
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    .line 1376
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

    .line 1377
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

    .line 1378
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1379
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

    .line 1380
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e4

    .line 1381
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

    .line 1382
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

    .line 1405
    :cond_de
    :goto_de
    aput-object v2, v1, v0

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 1384
    :cond_e4
    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v7, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    goto :goto_de

    .line 1386
    :cond_ed
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_143

    .line 1387
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

    .line 1388
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

    .line 1389
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 1390
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    .line 1391
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->fromWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    goto :goto_de

    .line 1392
    :cond_143
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_190

    .line 1393
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

    .line 1394
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

    .line 1395
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

    .line 1396
    :cond_190
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22d

    .line 1397
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

    .line 1398
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

    .line 1399
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

    .line 1400
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

    .line 1401
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

    .line 1403
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

    .line 1407
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
    .line 2669
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
    .line 515
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 516
    mul-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "string too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_10
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 518
    const/4 v2, 0x0

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 519
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 520
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

    .line 1205
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1206
    const/4 v0, 0x6

    if-ne p0, v0, :cond_17

    .line 1207
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLan;->unpack([B)V

    .line 1333
    :cond_16
    :goto_16
    return-void

    .line 1208
    :cond_17
    if-ne p0, v5, :cond_5f

    .line 1209
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1210
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->defOk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1212
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v2

    .line 1213
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

    .line 1215
    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v0

    .line 1214
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

    .line 1215
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_48

    goto :goto_16

    .line 1216
    :cond_5f
    if-ne p0, v2, :cond_130

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_130

    .line 1217
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1218
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1219
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->level:Ljava/lang/String;

    .line 1220
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

    .line 1221
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1222
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v3, 0x898

    if-le v2, v3, :cond_b0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_b0
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1224
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

    .line 1225
    :cond_d8
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_118

    .line 1226
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1227
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1228
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1229
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

    .line 1231
    :cond_118
    :goto_118
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11b
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_12d

    .line 1232
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1233
    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1229
    :cond_12a
    iput v8, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    goto :goto_118

    .line 1231
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v0

    .line 1234
    :cond_130
    const/16 v0, 0xc

    if-ne p0, v0, :cond_139

    .line 1235
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->style([B)V

    goto/16 :goto_16

    .line 1236
    :cond_139
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2a7

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_2a7

    .line 1237
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;-><init>()V

    .line 1238
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->lean:Z

    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->at:J

    .line 1240
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 1241
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

    .line 1242
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1ae

    .line 1243
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    .line 1244
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->fin(F)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDmg:F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->leanXp:J

    .line 1245
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

    .line 1246
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    .line 1248
    :cond_1ae
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanLevel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    .line 1249
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

    .line 1250
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanMission:Ljava/lang/String;

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->mission:Ljava/lang/String;

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->leanDone:Z

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->missionDone:Z

    .line 1251
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1252
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    const/16 v4, 0x898

    if-le v3, v4, :cond_1ee

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_1ee
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->read(Ljava/io/DataInputStream;IFF)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 1254
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLanSync;->compact([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)I

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    .line 1255
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_22b

    .line 1256
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1257
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1258
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

    .line 1261
    :cond_22b
    :goto_22b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marks:[B

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->marksN:I

    .line 1262
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->index([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1264
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_240
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_243
    .catchall {:try_start_240 .. :try_end_243} :catchall_2a1

    .line 1265
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

    .line 1266
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    iget-object v5, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pair([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I[Lfr/testudo/spacecorsair/mod/ModLan$Rec;Ljava/util/HashMap;)V

    .line 1267
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

    .line 1268
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hx:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phx:F

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->hy:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->phy:F

    .line 1270
    :cond_284
    if-eqz v2, :cond_289

    const/4 v1, 0x0

    iput-object v1, v2, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->idx:Ljava/util/HashMap;

    .line 1271
    :cond_289
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28c
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inFrame:Lfr/testudo/spacecorsair/mod/ModLan$InFrame;

    monitor-exit v1
    :try_end_28f
    .catchall {:try_start_28c .. :try_end_28f} :catchall_2a4

    .line 1272
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1273
    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$InFrame;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1259
    :cond_29b
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarks:[B

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->leanMarksN:I

    goto :goto_22b

    .line 1264
    :catchall_2a1
    move-exception v0

    :try_start_2a2
    monitor-exit v1
    :try_end_2a3
    .catchall {:try_start_2a2 .. :try_end_2a3} :catchall_2a1

    throw v0

    .line 1271
    :catchall_2a4
    move-exception v0

    :try_start_2a5
    monitor-exit v1
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2a4

    throw v0

    .line 1274
    :cond_2a7
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2ae

    const/16 v0, 0xb

    if-ne p0, v0, :cond_411

    :cond_2ae
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_411

    .line 1275
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLan$InState;-><init>()V

    .line 1276
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->alive:Z

    .line 1277
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->level:Ljava/lang/String;

    .line 1278
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

    .line 1279
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

    .line 1281
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

    .line 1282
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

    .line 1283
    :cond_367
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1284
    if-nez v0, :cond_36f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    .line 1285
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

    .line 1286
    :cond_387
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->maxLife:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->life:F

    .line 1287
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    .line 1288
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    const/16 v3, 0xc8

    if-le v0, v3, :cond_3a5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many ship records"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
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

    .line 1291
    :goto_3bb
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3c8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->defeats:I

    .line 1292
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

    .line 1293
    :cond_3e1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    .line 1294
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3f3

    iget-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->at:J

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->firstStateAt:J

    .line 1295
    :cond_3f3
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3f6
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->inState:Lfr/testudo/spacecorsair/mod/ModLan$InState;

    monitor-exit v1
    :try_end_3f9
    .catchall {:try_start_3f6 .. :try_end_3f9} :catchall_40e

    .line 1296
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->gotFrames:I

    .line 1297
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->lastRecs:I

    goto/16 :goto_16

    .line 1290
    :cond_405
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->n:I

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->readRecs(Ljava/io/DataInputStream;I)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$InState;->recs:[Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    goto :goto_3bb

    .line 1295
    :catchall_40e
    move-exception v0

    :try_start_40f
    monitor-exit v1
    :try_end_410
    .catchall {:try_start_40f .. :try_end_410} :catchall_40e

    throw v0

    .line 1298
    :cond_411
    const/16 v0, 0x8

    if-ne p0, v0, :cond_48c

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_48c

    .line 1299
    array-length v0, p1

    const/16 v2, 0x100

    if-le v0, v2, :cond_426

    new-instance v0, Ljava/io/IOException;

    const-string v1, "kill too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :cond_426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1301
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_437

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->killSec:J

    sput v8, Lfr/testudo/spacecorsair/mod/ModLan;->killCount:I

    .line 1302
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

    .line 1303
    :cond_449
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$Kill;-><init>()V

    .line 1304
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

    .line 1305
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

    .line 1306
    :cond_48c
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4b9

    .line 1307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1308
    array-length v0, p1

    const/16 v4, 0x200

    if-le v0, v4, :cond_4a0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "chat too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_4a0
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_16

    .line 1310
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatIn:J

    .line 1311
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->peerLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->onChat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1312
    :cond_4b9
    const/16 v0, 0xd

    if-ne p0, v0, :cond_557

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_557

    .line 1313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1314
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->decode([B)Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    move-result-object v2

    .line 1315
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v3, :cond_4eb

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->peerDev:Z

    if-nez v3, :cond_4eb

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->hasDev(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Z

    move-result v3

    if-eqz v3, :cond_4eb

    .line 1316
    const-string v0, "lan"

    const-string v1, "guest declared DEV gear: session ended"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v0, "The other player flies DEV gear, which is not allowed in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 1318
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto/16 :goto_16

    .line 1321
    :cond_4eb
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->limits(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v3

    .line 1322
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 1323
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-lez v2, :cond_502

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;->flags:I

    add-int/2addr v2, v4

    sput v2, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1324
    :cond_502
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->declAt:J

    .line 1325
    sput-boolean v8, Lfr/testudo/spacecorsair/mod/ModLan;->hullFlagged:Z

    .line 1326
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1327
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

    .line 1328
    :cond_557
    const/4 v0, 0x4

    if-ne p0, v0, :cond_16

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v5, :cond_16

    .line 1329
    array-length v0, p1

    const/16 v1, 0x1000

    if-le v0, v1, :cond_56b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shot too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :cond_56b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_56e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x190

    if-ge v0, v2, :cond_57d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inShots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57d
    monitor-exit v1
    :try_end_57e
    .catchall {:try_start_56e .. :try_end_57e} :catchall_586

    .line 1331
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotsIn:I

    goto/16 :goto_16

    .line 1330
    :catchall_586
    move-exception v0

    :try_start_587
    monitor-exit v1
    :try_end_588
    .catchall {:try_start_587 .. :try_end_588} :catchall_586

    throw v0
.end method

.method private static refill(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 2

    .prologue
    .line 2614
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 2615
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 2616
    return-void
.end method

.method private static refl()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 919
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    if-eqz v1, :cond_6

    .line 931
    :goto_5
    return v0

    .line 921
    :cond_6
    :try_start_6
    const-class v0, Lfr/testudo/spacecorsair/display/RenderElement;

    .line 922
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

    .line 923
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

    .line 924
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

    .line 925
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

    .line 926
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

    .line 927
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_87} :catch_8b

    .line 931
    :goto_87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto/16 :goto_5

    .line 928
    :catch_8b
    move-exception v0

    .line 929
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->reflOk:Z

    goto :goto_87
.end method

.method private static removeProxy()V
    .registers 2

    .prologue
    .line 1941
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1942
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1943
    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 1944
    :cond_e
    return-void
.end method

.method private static replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V
    .registers 25

    .prologue
    .line 1419
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->refl()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1470
    :cond_8
    :goto_8
    return-void

    .line 1420
    :cond_9
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v16, v0

    .line 1421
    move-object/from16 v0, v16

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->fQIdx:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aget-object v17, v1, v2

    .line 1422
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 1423
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->poolFrame:I

    rem-int/lit8 v18, v1, 0x3

    .line 1424
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

    .line 1425
    :cond_3f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pools:[[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v19, v1, v18

    .line 1426
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->vpools:[[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v20, v1, v18

    .line 1427
    const/4 v13, 0x0

    .line 1428
    const/4 v12, 0x0

    .line 1429
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

    .line 1430
    aget-object v11, p0, v15

    .line 1431
    aget-object v1, v17, v14

    .line 1432
    if-nez v1, :cond_6a

    .line 1466
    :cond_60
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->fQSize:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_8

    .line 1467
    :catch_68
    move-exception v1

    goto :goto_8

    .line 1433
    :cond_6a
    aget-object v3, v20, v13

    .line 1434
    if-nez v3, :cond_75

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    aput-object v3, v20, v13

    .line 1435
    :cond_75
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    add-float v2, v2, p2

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    add-float v4, v4, p3

    invoke-virtual {v3, v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1436
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a0

    const/4 v10, 0x1

    .line 1437
    :goto_87
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-eqz v2, :cond_90

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_120

    .line 1438
    :cond_90
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->texFor(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v4

    .line 1439
    if-nez v4, :cond_a2

    move v3, v13

    move v4, v14

    .line 1429
    :goto_9a
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    move v13, v3

    move v14, v4

    goto :goto_4b

    .line 1436
    :cond_a0
    const/4 v10, 0x0

    goto :goto_87

    .line 1440
    :cond_a2
    aget-object v2, v19, v13

    .line 1441
    if-nez v2, :cond_ad

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v2, v19, v13

    .line 1442
    :cond_ad
    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 1443
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 1444
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 1445
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_116

    const/4 v4, 0x1

    :goto_ce
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 1446
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_118

    const/4 v4, 0x1

    :goto_d7
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 1447
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_11a

    const/4 v4, 0x1

    :goto_e0
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 1448
    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11c

    .line 1449
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    if-nez v4, :cond_f1

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    .line 1450
    :cond_f1
    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x0

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    aput v6, v4, v5

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    const/4 v5, 0x1

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    aput v6, v4, v5

    .line 1452
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

    .line 1463
    :goto_10f
    add-int/lit8 v4, v14, 0x1

    .line 1464
    add-int/lit8 v2, v13, 0x1

    move v12, v1

    move v3, v2

    goto :goto_9a

    .line 1445
    :cond_116
    const/4 v4, 0x0

    goto :goto_ce

    .line 1446
    :cond_118
    const/4 v4, 0x0

    goto :goto_d7

    .line 1447
    :cond_11a
    const/4 v4, 0x0

    goto :goto_e0

    .line 1451
    :cond_11c
    const/4 v4, 0x0

    iput-object v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    goto :goto_ff

    .line 1453
    :cond_120
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_147

    .line 1454
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->SIZES:[Lfr/testudo/spacecorsair/textengine/TextSize;

    array-length v4, v4

    if-lt v2, v4, :cond_130

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1455
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

    .line 1456
    :cond_147
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_15d

    .line 1457
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

    .line 1458
    :cond_15d
    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_176

    .line 1459
    add-int/lit8 v2, v12, 0x1

    move/from16 v0, v18

    invoke-static {v0, v12, v11}, Lfr/testudo/spacecorsair/mod/ModLan;->barFor(IILfr/testudo/spacecorsair/mod/ModLan$Rec;)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v4

    .line 1460
    if-nez v4, :cond_171

    move v12, v2

    move v3, v13

    move v4, v14

    goto/16 :goto_9a

    .line 1461
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
    .line 2673
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModLan;->replay([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IFF)V

    return-void
.end method

.method private static report(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 2818
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Report player"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send a report about this player? It contains the chat of this game and what the anti-cheat checks counted. Nothing else."

    .line 2819
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    .line 2820
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$37;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModLan$37;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    .line 2830
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2831
    return-void
.end method

.method private static resetTables()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 833
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanSync;->reset()V

    .line 834
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

    .line 835
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->defOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_68

    .line 836
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

    .line 837
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

    .line 838
    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSent:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->dmgSeen:F

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSent:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->xpSeen:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->xpBase:J

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->dmgBase:F

    .line 839
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->capAt:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->moveAt:J

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->moveHold:Z

    sput v4, Lfr/testudo/spacecorsair/mod/ModLan;->roundDmg:F

    .line 840
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->inLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_61
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->inKills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_71

    .line 841
    return-void

    .line 835
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    .line 836
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    .line 837
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 840
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method private static respawnApart(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V
    .registers 14

    .prologue
    const/high16 v10, 0x45160000    # 2400.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2605
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, v0, p1

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v0, p2

    .line 2606
    float-to-double v6, v4

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 2607
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1f

    move v0, v1

    move v2, v3

    move v4, v1

    .line 2608
    :cond_1f
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    div-float/2addr v4, v0

    mul-float/2addr v4, v10

    add-float/2addr v4, p1

    div-float v0, v2, v0

    mul-float/2addr v0, v10

    add-float/2addr v0, p2

    invoke-virtual {v1, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2609
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2610
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateSapCoords()V

    .line 2611
    return-void
.end method

.method private static rollLoot(Lfr/testudo/spacecorsair/mod/ModLan$Kill;)V
    .registers 7

    .prologue
    .line 1157
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->cls:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->enemyMaker(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1158
    if-nez v0, :cond_9

    .line 1171
    :cond_8
    :goto_8
    return-void

    .line 1159
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x11

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1160
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

    .line 1161
    if-eqz v0, :cond_8

    .line 1162
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->elite:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1163
    :cond_38
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$Kill;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1164
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1165
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->GenerateLoots(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/Element;)V

    .line 1166
    :cond_52
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drops(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 1167
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->killsIn:I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_8

    .line 1168
    :catch_5c
    move-exception v0

    .line 1169
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

    .line 2587
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_92

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    :goto_c
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v2, :cond_96

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    .line 2588
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

    .line 2589
    if-eqz p1, :cond_a2

    move v5, v3

    :goto_58
    if-eqz p1, :cond_a4

    :goto_5a
    if-eqz p1, :cond_a9

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2588
    :goto_5e
    invoke-static {p0, v6, v5, v4, v2}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 2590
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

    .line 2591
    return-void

    .line 2587
    :cond_92
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->guestWins:I

    goto/16 :goto_c

    :cond_96
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->hostWins:I

    goto/16 :goto_12

    .line 2588
    :cond_9a
    const-string v2, "ROUND LOST"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1f

    :cond_a2
    move v5, v4

    .line 2589
    goto :goto_58

    :cond_a4
    const v2, 0x3ecccccd    # 0.4f

    move v4, v2

    goto :goto_5a

    :cond_a9
    move v2, v3

    goto :goto_5e

    .line 2590
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

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    :try_start_6
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_c} :catch_120
    .catchall {:try_start_6 .. :try_end_c} :catchall_110

    .line 416
    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 417
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 418
    new-instance v1, Ljava/net/InetSocketAddress;

    const v3, 0x9089

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 419
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p0

    add-long/2addr v4, v6

    .line 421
    const/16 v1, 0x100

    new-array v3, v1, [B

    .line 422
    :cond_2e
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_10a

    .line 423
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v1, v3, v6}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_3c} :catch_e6
    .catchall {:try_start_d .. :try_end_3c} :catchall_11c

    .line 424
    :try_start_3c
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3c .. :try_end_3f} :catch_119
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_e6
    .catchall {:try_start_3c .. :try_end_3f} :catchall_11c

    .line 425
    :try_start_3f
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 426
    const-string v7, "SCLAN2|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 427
    const-string v7, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 428
    array-length v7, v6

    const/4 v8, 0x6

    if-lt v7, v8, :cond_2e

    .line 429
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

    .line 430
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

    .line 431
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

    .line 432
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_e4} :catch_e6
    .catchall {:try_start_3f .. :try_end_e4} :catchall_11c

    goto/16 :goto_2e

    .line 434
    :catch_e6
    move-exception v1

    .line 437
    :goto_e7
    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 439
    :cond_ec
    :goto_ec
    return-object v2

    .line 430
    :cond_ed
    :try_start_ed
    const-string v1, ""

    goto :goto_ba

    .line 431
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

    .line 437
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

    .line 438
    :cond_118
    throw v2

    .line 424
    :catch_119
    move-exception v1

    goto/16 :goto_2e

    .line 437
    :catchall_11c
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_113

    .line 434
    :catch_120
    move-exception v0

    move-object v0, v1

    goto :goto_e7
.end method

.method static sendChat(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 315
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v1, :cond_13

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_14

    .line 323
    :cond_13
    :goto_13
    return v0

    .line 316
    :cond_14
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLan;->chatAt:J

    .line 318
    :try_start_16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 319
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x78

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 320
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->sendReliable(ILjava/io/ByteArrayOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_2f

    .line 321
    const/4 v0, 0x1

    goto :goto_13

    .line 322
    :catch_2f
    move-exception v1

    goto :goto_13
.end method

.method private static sendLatest(ILjava/io/ByteArrayOutputStream;)V
    .registers 5

    .prologue
    const/high16 v2, 0x40000

    .line 757
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->packed(I[B)[B

    move-result-object v0

    .line 758
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

    .line 760
    :goto_1b
    return-void

    .line 759
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
    .line 752
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->frameBytes(ILjava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 753
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 754
    return-void

    .line 753
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
    .line 2471
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    .line 2472
    if-nez p0, :cond_7

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 2473
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

    .line 2474
    return-void
.end method

.method static setSolo(Z)V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1602
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    if-ne v0, p0, :cond_6

    .line 1607
    :goto_5
    return-void

    .line 1603
    :cond_6
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 1604
    if-eqz p0, :cond_11

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->soloReload:Z

    .line 1605
    :cond_11
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->soloReset:Z

    .line 1606
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

.method static shipEnd()V
    .registers 1

    .prologue
    .line 2163
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
    .line 2161
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

    .line 1885
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

    .line 1895
    :cond_14
    :goto_14
    return-object v0

    .line 1886
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

    .line 1889
    :cond_26
    const/4 v0, 0x0

    :try_start_27
    const-class v2, Lfr/testudo/spacecorsair/mod/ModLan;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1890
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

    .line 1894
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

    .line 1891
    :catch_5c
    move-exception v0

    move-object v0, v1

    .line 1892
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
    .line 2662
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

    .line 2194
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->shotFieldCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2195
    if-eqz v0, :cond_c

    .line 2214
    :goto_b
    return-object v0

    .line 2196
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 2197
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

    .line 2198
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2199
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2200
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2201
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$12;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLan$12;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2202
    array-length v5, v4

    move v0, v1

    :goto_47
    if-ge v0, v5, :cond_2d

    aget-object v6, v4, v0

    .line 2203
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 2204
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

    .line 2202
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 2205
    :cond_6a
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLan;->SKIP:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 2206
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 2207
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_84

    const-class v8, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v7, v8, :cond_67

    .line 2208
    :cond_84
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2209
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 2212
    :cond_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 2213
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

    .line 1902
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v1, :cond_11

    .line 1909
    :cond_10
    :goto_10
    return v0

    .line 1903
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

    .line 1904
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, p2

    .line 1905
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const v2, 0x4a095440    # 2250000.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_10

    .line 1906
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_75

    iput v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 1907
    :cond_75
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_83

    iput v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1908
    :cond_83
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_91

    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    .line 1909
    :cond_91
    const/4 v0, 0x1

    goto/16 :goto_10
.end method

.method static showMenu(Landroid/app/Activity;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2696
    :try_start_2
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAct:Landroid/app/Activity;

    .line 2697
    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v1, v3, :cond_18

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    if-eqz v1, :cond_18

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    if-nez v1, :cond_18

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->pendingWho:Ljava/lang/String;

    sget v1, Lfr/testudo/spacecorsair/mod/ModLan;->askId:I

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2799
    :goto_17
    return-void

    .line 2698
    :cond_18
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$13;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModLan$13;-><init>(Landroid/app/Activity;)V

    .line 2699
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->hasProfile()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_17

    .line 2796
    :catch_27
    move-exception v0

    goto :goto_17

    .line 2700
    :cond_29
    const-string v1, "Multiplayer"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2701
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_187

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_187

    .line 2702
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

    .line 2703
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

    .line 2704
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2705
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

    .line 2706
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

    .line 2707
    const/4 v2, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2708
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v5, :cond_16d

    const-string v5, "PvP: ON (tap to turn off)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_fa
    aput-object v5, v4, v6

    const/4 v6, 0x1

    .line 2709
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-nez v5, :cond_174

    move-object v5, v0

    :goto_102
    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "Kick player"

    .line 2710
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

    .line 2707
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2703
    :cond_161
    const-string v2, "OFF"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_84

    .line 2705
    :cond_169
    const-string v2, ""

    goto/16 :goto_cd

    .line 2708
    :cond_16d
    const-string v5, "PvP: OFF (tap to turn on)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_fa

    .line 2709
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

    .line 2719
    :cond_187
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v2, :cond_26a

    .line 2720
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

    .line 2721
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

    .line 2722
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

    .line 2723
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2724
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

    .line 2723
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2721
    :cond_260
    const-string v2, ""

    goto :goto_1ed

    .line 2724
    :cond_263
    const-string v5, "Fly my own missions"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_21a

    .line 2731
    :cond_26a
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_34b

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_34b

    .line 2732
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 2733
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

    .line 2734
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_341

    .line 2736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Game code:"

    .line 2734
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

    .line 2735
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

    .line 2736
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

    .line 2737
    const/4 v2, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2738
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

    .line 2739
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

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModLan$22;

    invoke-direct {v7, v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$22;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

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

    .line 2737
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2733
    :cond_335
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto/16 :goto_283

    .line 2735
    :cond_339
    const-string v2, "Private game: only players with the code can join."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2bd

    .line 2736
    :cond_341
    const-string v2, ""

    goto :goto_2d5

    .line 2739
    :cond_344
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2fc

    .line 2753
    :cond_34b
    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v3, :cond_3c3

    .line 2754
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

    .line 2755
    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2756
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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$25;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$25;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$26;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModLan$26;-><init>()V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2755
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2756
    :cond_3bc
    const-string v0, "PvP: OFF (tap to turn on)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38b

    .line 2763
    :cond_3c3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_563

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 2764
    :goto_3cd
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v6

    .line 2765
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

    if-lez v2, :cond_567

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

    .line 2766
    :cond_3fc
    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->profileRow(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Local game (same Wi-Fi)"

    .line 2767
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

    .line 2768
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

    .line 2769
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

    .line 2770
    if-eqz v6, :cond_56b

    move-object v5, v0

    :goto_47b
    aput-object v5, v4, v7

    const/4 v5, 0x6

    .line 2771
    if-eqz v6, :cond_480

    :cond_480
    const/4 v7, 0x0

    aput-object v7, v4, v5

    const/4 v7, 0x7

    .line 2772
    if-eqz v6, :cond_573

    const-string v5, "Find public games"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_48c
    aput-object v5, v4, v7

    const/16 v7, 0x8

    .line 2773
    if-eqz v6, :cond_576

    const-string v5, "Host public game"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_498
    aput-object v5, v4, v7

    const/16 v7, 0x9

    .line 2774
    if-eqz v6, :cond_579

    const-string v5, "Host private game (code only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4a4
    aput-object v5, v4, v7

    const/16 v7, 0xa

    .line 2775
    if-eqz v6, :cond_57c

    const-string v5, "Join by code"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4b0
    aput-object v5, v4, v7

    const/16 v7, 0xb

    .line 2776
    if-eqz v6, :cond_587

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v5

    if-eqz v5, :cond_57f

    const-string v5, "Hide my IP: ON (relay only)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4c2
    aput-object v5, v4, v7

    const/16 v7, 0xc

    .line 2777
    if-eqz v6, :cond_592

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->saverPref()Z

    move-result v5

    if-eqz v5, :cond_58a

    const-string v5, "Data saver: ON"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4d4
    aput-object v5, v4, v7

    const/16 v5, 0xd

    .line 2778
    if-eqz v6, :cond_4e0

    const-string v0, "Privacy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4e0
    aput-object v0, v4, v5

    const/16 v0, 0xe

    const-string v5, "Close"

    .line 2779
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xf

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$27;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$27;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$28;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$28;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$29;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$29;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v0, 0x5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

    aput-object v6, v5, v0

    const/4 v0, 0x6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

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

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$35;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$35;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xd

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$36;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModLan$36;-><init>(Landroid/app/Activity;)V

    aput-object v6, v5, v0

    const/16 v0, 0xe

    const/4 v6, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    .line 2766
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 2763
    :cond_563
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto/16 :goto_3cd

    .line 2765
    :cond_567
    const-string v2, ""

    goto/16 :goto_3ea

    .line 2770
    :cond_56b
    const-string v5, "Not available yet in this version"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_47b

    :cond_573
    move-object v5, v0

    .line 2772
    goto/16 :goto_48c

    :cond_576
    move-object v5, v0

    .line 2773
    goto/16 :goto_498

    :cond_579
    move-object v5, v0

    .line 2774
    goto/16 :goto_4a4

    :cond_57c
    move-object v5, v0

    .line 2775
    goto/16 :goto_4b0

    .line 2776
    :cond_57f
    const-string v5, "Hide my IP: OFF"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4c2

    :cond_587
    move-object v5, v0

    goto/16 :goto_4c2

    .line 2777
    :cond_58a
    const-string v5, "Data saver: AUTO (on with mobile data or relay)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_58f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_58f} :catch_27

    move-result-object v5

    goto/16 :goto_4d4

    :cond_592
    move-object v5, v0

    goto/16 :goto_4d4
.end method

.method static skipRange(II)V
    .registers 5

    .prologue
    .line 1182
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

    .line 1183
    :cond_1f
    return-void
.end method

.method private static skipped(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1186
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

    .line 1187
    :cond_15
    return v1

    .line 1186
    :cond_16
    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private static spawnProxy(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModLan$InState;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1914
    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1915
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v1, v0, v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 1916
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 1917
    const/4 v2, 0x1

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    .line 1918
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 1919
    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 1920
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

    .line 1921
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 1922
    const v0, 0x49742400    # 1000000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->drawLifeBar:Z

    .line 1924
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->x:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->y:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1925
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vx:F

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->vy:F

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1926
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$InState;->spin:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 1927
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 1928
    const-string v0, "CO-OP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 1929
    const/4 v0, -0x1

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 1930
    const/4 v0, 0x0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 1931
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 1932
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 1933
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 1934
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

    .line 1938
    :goto_a3
    return-void

    .line 1935
    :catch_a4
    move-exception v0

    .line 1936
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_a3
.end method

.method static stop()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 703
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v0, :cond_2d

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v2, :cond_2d

    .line 704
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLan;->limits:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_9a

    :cond_17
    move v0, v2

    :goto_18
    invoke-static {v3, v4, v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->sample(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;Z)[Ljava/lang/String;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_2d

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$9;

    invoke-direct {v4, v0}, Lfr/testudo/spacecorsair/mod/ModLan$9;-><init>([Ljava/lang/String;)V

    const-string v0, "lobby-sample"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 707
    :cond_2d
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->lastDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;

    .line 708
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 709
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 710
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 711
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 712
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 713
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 714
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    .line 715
    const-string v5, ""

    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 716
    if-eqz v0, :cond_57

    .line 717
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLan$10;

    invoke-direct {v6, v4, v3, v0}, Lfr/testudo/spacecorsair/mod/ModLan$10;-><init>(ZLjava/util/concurrent/locks/ReentrantLock;Ljava/net/Socket;)V

    const-string v0, "lan-bye"

    invoke-direct {v5, v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 733
    :cond_57
    :try_start_57
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_60

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_60} :catch_a2

    .line 734
    :cond_60
    :goto_60
    :try_start_60
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_69

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_69} :catch_a0

    .line 735
    :cond_69
    :goto_69
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->sock:Ljava/net/Socket;

    .line 736
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;

    .line 737
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_70
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_9d

    .line 738
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->dropProxy:Z

    .line 739
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvp:Z

    .line 740
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->pvpWanted:Z

    .line 741
    sput v1, Lfr/testudo/spacecorsair/mod/ModLan;->seenRound:I

    .line 742
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->defeatRound:I

    .line 743
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->solo:Z

    .line 744
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLan;->marksOut:[B

    .line 745
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    .line 746
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModLan;->decision:I

    .line 747
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->peerAddr:Ljava/lang/String;

    .line 748
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->clearChat()V

    .line 749
    return-void

    :cond_9a
    move v0, v1

    .line 704
    goto/16 :goto_18

    .line 737
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v0

    .line 734
    :catch_a0
    move-exception v0

    goto :goto_69

    .line 733
    :catch_a2
    move-exception v0

    goto :goto_60
.end method

.method private static testSwitch(J)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1616
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 1627
    :cond_b
    :goto_b
    return-void

    .line 1617
    :cond_c
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModLan;->testAt:J

    .line 1618
    const-string v0, "corsair_lan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1619
    if-eqz v0, :cond_b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1620
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->testLast:Ljava/lang/String;

    .line 1621
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

    .line 1622
    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->host()V

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->autoAccept:Z

    goto :goto_b

    .line 1623
    :cond_46
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    goto :goto_b

    .line 1624
    :cond_52
    const-string v1, "duel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1625
    :cond_60
    const-string v1, "duel-off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->duel(Z)V

    goto :goto_b

    .line 1626
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

    .line 887
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    monitor-enter v3

    .line 888
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 889
    if-eqz v0, :cond_14

    monitor-exit v3

    .line 910
    :goto_13
    return-object v0

    .line 890
    :cond_14
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->defIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 891
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2c

    :cond_29
    monitor-exit v3

    move-object v0, v2

    goto :goto_13

    .line 892
    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 893
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4b

    move-result-object v1

    .line 895
    const/16 v5, 0x4c

    if-ne v4, v5, :cond_4e

    :try_start_3a
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_aa
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4b

    move-result-object v0

    .line 909
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_49

    :try_start_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLan;->texIn:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_49
    monitor-exit v3

    goto :goto_13

    .line 911
    :catchall_4b
    move-exception v0

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v0

    .line 896
    :cond_4e
    const/16 v5, 0x4d

    if-ne v4, v5, :cond_57

    :try_start_52
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    goto :goto_3e

    .line 897
    :cond_57
    const/16 v5, 0x52

    if-ne v4, v5, :cond_3e

    .line 898
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texByRes:Ljava/lang/reflect/Method;

    if-nez v0, :cond_91

    .line 899
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "textureLibrary"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 900
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 901
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texLib:Ljava/lang/Object;

    .line 902
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

    .line 904
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

    .line 906
    :catch_aa
    move-exception v0

    move-object v0, v2

    .line 907
    goto :goto_3e
.end method

.method private static texKey(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 845
    if-nez p0, :cond_4

    .line 856
    :cond_3
    :goto_3
    return-object v1

    .line 846
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 847
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    move-object v0, v1

    :cond_15
    move-object v1, v0

    goto :goto_3

    .line 848
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

    .line 855
    :goto_33
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->texKeys:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 850
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->nameOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v0

    .line 851
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

    .line 852
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

    .line 853
    :cond_74
    const-string v0, ""

    goto :goto_33
.end method

.method private static tryRejoin(Ljava/lang/String;J)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 669
    const/4 v3, 0x0

    .line 671
    :try_start_3
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_96

    .line 672
    :try_start_8
    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x9089

    invoke-direct {v3, p0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x9c4

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 673
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 674
    const-string v4, "SCLAN2"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 675
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 677
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 678
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 679
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 680
    if-nez v4, :cond_5b

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_6d

    .line 681
    :cond_5b
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 682
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_6c

    const-string v3, "Co-op link lost"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 695
    :cond_6c
    :goto_6c
    return v0

    .line 685
    :cond_6d
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->readPeerId(Ljava/io/DataInputStream;)V

    .line 686
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 687
    const/4 v3, 0x2

    sput v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    .line 688
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J

    .line 689
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLan;->lastAddr:Ljava/lang/String;

    .line 690
    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V

    .line 691
    const-string v3, "lan"

    const-string v4, "reconnected"

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8a} :catch_8b

    goto :goto_6c

    .line 693
    :catch_8b
    move-exception v0

    move-object v0, v2

    .line 694
    :goto_8d
    if-eqz v0, :cond_92

    :try_start_8f
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_94

    :cond_92
    :goto_92
    move v0, v1

    .line 695
    goto :goto_6c

    .line 694
    :catch_94
    move-exception v0

    goto :goto_92

    .line 693
    :catch_96
    move-exception v0

    move-object v0, v3

    goto :goto_8d
.end method

.method private static typeCode(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 2839
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$39;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$39;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    .line 2840
    return-void
.end method

.method private static undeclared()Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;
    .registers 1

    .prologue
    .line 1844
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->noDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1845
    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanCheck;->limits(Lfr/testudo/spacecorsair/mod/ModLanCheck$Decl;)Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->noDecl:Lfr/testudo/spacecorsair/mod/ModLanCheck$Limits;

    .line 1846
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

    .line 799
    array-length v0, p0

    if-ge v0, v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "short packed message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_e
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 801
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

    .line 802
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

    .line 803
    :cond_48
    new-array v2, v1, [B

    .line 804
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 806
    const/4 v4, 0x5

    :try_start_50
    array-length v5, p0

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 807
    invoke-virtual {v3, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .line 808
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

    .line 809
    :catch_6a
    move-exception v0

    .line 810
    :try_start_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad packed data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_73

    .line 812
    :catchall_73
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 813
    throw v0

    .line 812
    :cond_78
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 814
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V

    .line 815
    return-void
.end method

.method private static viewHalfH()F
    .registers 1

    .prologue
    .line 2257
    const-string v0, "yDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static viewHalfW()F
    .registers 1

    .prologue
    .line 2255
    const-string v0, "xDelta"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->extent(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static violation(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 405
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

    .line 406
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v0, v3, :cond_21

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->kick()V

    .line 408
    :goto_20
    return-void

    .line 407
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
    .line 2218
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2219
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2232
    :cond_f
    :goto_f
    return-void

    .line 2220
    :cond_10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_f

    .line 2221
    :cond_1c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_f

    .line 2222
    :cond_28
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_f

    .line 2223
    :cond_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_f

    .line 2224
    :cond_40
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_f

    .line 2225
    :cond_4c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_f

    .line 2226
    :cond_58
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_f

    .line 2227
    :cond_64
    const-class v1, Lfr/testudo/spacecorsair/engine/Vector2;

    if-ne v0, v1, :cond_f

    .line 2228
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/Vector2;

    .line 2229
    if-eqz v0, :cond_81

    const/4 v1, 0x1

    :goto_71
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2230
    if-eqz v0, :cond_f

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_f

    .line 2229
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
    .line 2675
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLan;->writeField(Ljava/io/DataOutputStream;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method
