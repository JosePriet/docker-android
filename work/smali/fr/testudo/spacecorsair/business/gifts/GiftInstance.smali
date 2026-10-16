.class public Lfr/testudo/spacecorsair/business/gifts/GiftInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/gifts/GiftInstance$1;,
        Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;
    }
.end annotation


# instance fields
.field private final achievement:Lfr/testudo/spacecorsair/game/achievements/Achievement;

.field private final giftType:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

.field private final limitDate:Ljava/util/Date;

.field private final originalValue:Ljava/lang/String;

.field private final quantity:I

.field private final sot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;


# direct methods
.method private constructor <init>(ILjava/util/Date;Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/game/achievements/Achievement;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    .line 54
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->limitDate:Ljava/util/Date;

    .line 55
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->giftType:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    .line 56
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->sot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 57
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->achievement:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    .line 58
    iput-object p6, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->originalValue:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static ofDecripted(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/gifts/GiftInstance;
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    .line 149
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 152
    :try_start_b
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_18} :catch_38

    move-result-object v2

    .line 156
    invoke-static {}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->values()[Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    move-result-object v3

    aget-object v4, v6, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    .line 161
    sget-object v4, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$1;->$SwitchMap$fr$testudo$spacecorsair$business$gifts$GiftInstance$Type:[I

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_72

    move-object v4, v5

    .line 179
    :goto_31
    new-instance v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;-><init>(ILjava/util/Date;Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/game/achievements/Achievement;Ljava/lang/String;)V

    return-object v0

    .line 153
    :catch_38
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 164
    :pswitch_3f
    aget-object v0, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v4, v5

    .line 165
    goto :goto_31

    .line 167
    :pswitch_47
    aget-object v1, v6, v8

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    .line 168
    array-length v1, v6

    if-le v1, v9, :cond_56

    aget-object v0, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_56
    move v1, v0

    .line 169
    goto :goto_31

    .line 171
    :pswitch_58
    aget-object v0, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v4, v5

    .line 172
    goto :goto_31

    .line 174
    :pswitch_60
    aget-object v0, v6, v8

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/achievements/Achievement;

    move-result-object v0

    move-object v4, v5

    move-object v5, v0

    .line 175
    goto :goto_31

    .line 177
    :pswitch_69
    aget-object v0, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v4, v5

    goto :goto_31

    .line 161
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_47
        :pswitch_58
        :pswitch_69
        :pswitch_60
    .end packed-switch
.end method

.method public static ofEncrypted(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/gifts/GiftInstance;
    .registers 4

    .prologue
    .line 128
    const-string v0, "10THANNIVSC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string p0, "MjA5OTEyMzFAMEA5OTk5OTk5"

    goto :goto_15

    :cond_b
    const-string v0, "10THANNIVSC2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string p0, "MjA5OTEyMzFAMkA5MDAw"

    :cond_15
    :goto_15
    :try_start_15
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 129
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->ofDecripted(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/gifts/GiftInstance;
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_2a} :catch_2c

    move-result-object v0

    return-object v0

    .line 131
    :catch_2c
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public apply()V
    .registers 5

    .prologue
    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$1;->$SwitchMap$fr$testudo$spacecorsair$business$gifts$GiftInstance$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->giftType:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 113
    :goto_d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->giftRepository:Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->addGift(Lfr/testudo/spacecorsair/business/gifts/GiftInstance;)V

    .line 116
    return-void

    .line 95
    :pswitch_15
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    goto :goto_d

    .line 98
    :pswitch_21
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->sot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget v3, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_d

    .line 101
    :pswitch_34
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    goto :goto_d

    .line 105
    :pswitch_40
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->achievement:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    goto :goto_d

    .line 109
    :pswitch_46
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V

    goto :goto_d

    .line 92
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_15
        :pswitch_21
        :pswitch_34
        :pswitch_46
        :pswitch_40
    .end packed-switch
.end method

.method public getAchievement()Lfr/testudo/spacecorsair/game/achievements/Achievement;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->achievement:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    return-object v0
.end method

.method public getGiftType()Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->giftType:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    return-object v0
.end method

.method public getLimitDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->limitDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOriginalValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->originalValue:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    return v0
.end method

.method public getSot()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->sot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    return-object v0
.end method

.method public isValid()Z
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->limitDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->giftRepository:Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->hasBeenUsed(Lfr/testudo/spacecorsair/business/gifts/GiftInstance;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$1;->$SwitchMap$fr$testudo$spacecorsair$business$gifts$GiftInstance$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->giftType:Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/gifts/GiftInstance$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9a

    .line 86
    const-string v0, ""

    :goto_f
    return-object v0

    .line 72
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ic_credits !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 75
    :pswitch_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->sot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 78
    :pswitch_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alien ic_credits !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 81
    :pswitch_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " xp !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 84
    :pswitch_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/gifts/GiftInstance;->achievement:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702a1

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 69
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_26
        :pswitch_46
        :pswitch_5c
        :pswitch_72
    .end packed-switch
.end method
