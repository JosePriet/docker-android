.class public Lfr/testudo/spacecorsair/game/CharacterDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public characterImage:I

.field public characterName:I

.field public delayInMilli:I

.field public dialogue:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .prologue
    .line 27
    const/16 v0, 0xbb8

    invoke-direct {p0, p1, p2, p3, v0}, Lfr/testudo/spacecorsair/game/CharacterDialog;-><init>(IIII)V

    .line 28
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lfr/testudo/spacecorsair/game/CharacterDialog;->characterImage:I

    .line 21
    iput p3, p0, Lfr/testudo/spacecorsair/game/CharacterDialog;->dialogue:I

    .line 22
    iput p4, p0, Lfr/testudo/spacecorsair/game/CharacterDialog;->delayInMilli:I

    .line 23
    iput p2, p0, Lfr/testudo/spacecorsair/game/CharacterDialog;->characterName:I

    .line 24
    return-void
.end method

.method public static ofDroid(II)Lfr/testudo/spacecorsair/game/CharacterDialog;
    .registers 5

    .prologue
    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/game/CharacterDialog;

    const v1, 0x7f020054

    const v2, 0x7f070187

    invoke-direct {v0, v1, v2, p0, p1}, Lfr/testudo/spacecorsair/game/CharacterDialog;-><init>(IIII)V

    return-object v0
.end method

.method public static ofRandomCivilian(II)Lfr/testudo/spacecorsair/game/CharacterDialog;
    .registers 5

    .prologue
    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/game/CharacterDialog;

    const v1, 0x7f020059

    const v2, 0x7f070391

    invoke-direct {v0, v1, v2, p0, p1}, Lfr/testudo/spacecorsair/game/CharacterDialog;-><init>(IIII)V

    return-object v0
.end method
