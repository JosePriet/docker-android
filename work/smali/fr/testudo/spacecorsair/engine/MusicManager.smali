.class public Lfr/testudo/spacecorsair/engine/MusicManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STRESS_MUSIC_ID:I = 0x7f06002d


# instance fields
.field private context:Landroid/content/Context;

.field public curPlaying:Landroid/media/MediaPlayer;

.field public mpSpace1:Landroid/media/MediaPlayer;

.field public mpSpace2:Landroid/media/MediaPlayer;

.field public mpSpace3:Landroid/media/MediaPlayer;

.field public mpSpaceVoyager:Landroid/media/MediaPlayer;

.field public mploopElectro:Landroid/media/MediaPlayer;

.field public mploopEtrange:Landroid/media/MediaPlayer;

.field public mploopSerenity:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 19
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->initMusic()V

    .line 21
    return-void
.end method

.method private initMusic()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 50
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    const v1, 0x7f060029

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace1:Landroid/media/MediaPlayer;

    .line 51
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace1:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 53
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    const v1, 0x7f06002a

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace2:Landroid/media/MediaPlayer;

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace2:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    const v1, 0x7f06002b

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace3:Landroid/media/MediaPlayer;

    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace3:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 61
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    const v1, 0x7f06002d

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpaceVoyager:Landroid/media/MediaPlayer;

    .line 62
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpaceVoyager:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 65
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    const v1, 0x7f060018

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopEtrange:Landroid/media/MediaPlayer;

    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopEtrange:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 68
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    const v1, 0x7f060017

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopElectro:Landroid/media/MediaPlayer;

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopElectro:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->context:Landroid/content/Context;

    const v1, 0x7f060019

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopSerenity:Landroid/media/MediaPlayer;

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopSerenity:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public getMusicEnabed()Z
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->musicEnabled:Z

    return v0
.end method

.method public getMusicVolume()F
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    return v0
.end method

.method public isMusicSelected()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public pauseMusic()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 86
    :cond_9
    return-void
.end method

.method public playMusicResource(I)V
    .registers 5

    .prologue
    .line 99
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 199
    :cond_3
    :goto_3
    return-void

    .line 103
    :cond_4
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicEnabed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    sparse-switch p1, :sswitch_data_15a

    goto :goto_3

    .line 161
    :sswitch_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopElectro:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_de

    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_3

    .line 111
    :sswitch_22
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace1:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_36

    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_3

    .line 115
    :cond_36
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace1:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 118
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_3

    .line 123
    :sswitch_50
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace2:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_64

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_3

    .line 127
    :cond_64
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace2:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_3

    .line 136
    :sswitch_7e
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace3:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_93

    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 140
    :cond_93
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpace3:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 142
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 149
    :sswitch_ae
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpaceVoyager:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_c3

    .line 150
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 153
    :cond_c3
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 154
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mpSpaceVoyager:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 155
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 165
    :cond_de
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 166
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopElectro:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 167
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 174
    :sswitch_f9
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopSerenity:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_10e

    .line 175
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 178
    :cond_10e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 179
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopSerenity:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 180
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 186
    :sswitch_129
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopEtrange:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_13e

    .line 187
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 190
    :cond_13e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->mploopEtrange:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 192
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 193
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_3

    .line 108
    nop

    :sswitch_data_15a
    .sparse-switch
        0x7f060017 -> :sswitch_e
        0x7f060018 -> :sswitch_129
        0x7f060019 -> :sswitch_f9
        0x7f060029 -> :sswitch_22
        0x7f06002a -> :sswitch_50
        0x7f06002b -> :sswitch_7e
        0x7f06002d -> :sswitch_ae
    .end sparse-switch
.end method

.method public resumeMusic()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    .line 92
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicEnabed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 96
    :cond_f
    return-void
.end method
