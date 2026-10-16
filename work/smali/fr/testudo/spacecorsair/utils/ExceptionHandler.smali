.class public Lfr/testudo/spacecorsair/utils/ExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handle(Ljava/lang/Exception;)V
    .registers 1

    .prologue
    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    return-void
.end method

.method public static handleOnCloud(Ljava/lang/Exception;)V
    .registers 1

    .prologue
    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    return-void
.end method
