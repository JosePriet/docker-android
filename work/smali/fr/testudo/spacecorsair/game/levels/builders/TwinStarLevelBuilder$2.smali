.class synthetic Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 307
    invoke-static {}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->values()[Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
