.class public abstract Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOP:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;->NOP:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onActivityCompleted(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
.end method
