.class public Lfr/testudo/spacecorsair/display/TextureLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEFAULT_SIZE:I = 0x200

.field static sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mCropWorkspace:[I

.field mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

.field mTextureNameWorkspace:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lfr/testudo/spacecorsair/display/TextureLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lfr/testudo/spacecorsair/display/TextureLibrary;->$assertionsDisabled:Z

    .line 33
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/TextureLibrary;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-void

    .line 26
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Texture;

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    move v0, v1

    .line 38
    :goto_b
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 39
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    new-instance v3, Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/display/Texture;-><init>()V

    aput-object v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 42
    :cond_1c
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureNameWorkspace:[I

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mCropWorkspace:[I

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/display/TextureLibrary;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/display/TextureLibrary;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 47
    return-void
.end method

.method private findFirstKey(II)I
    .registers 7

    .prologue
    const/4 v2, -0x1

    .line 213
    .line 214
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 215
    add-int v1, p1, v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v3, v3

    rem-int/2addr v1, v3

    .line 216
    iget-object v3, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v3, v1

    iget v3, v3, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    if-ne v3, p2, :cond_17

    move v0, v1

    .line 223
    :goto_16
    return v0

    .line 219
    :cond_17
    iget-object v3, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v1, v3, v1

    iget v1, v1, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    if-ne v1, v2, :cond_21

    move v0, v2

    .line 220
    goto :goto_16

    .line 214
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_24
    move v0, v2

    goto :goto_16
.end method

.method private getHashIndex(I)I
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v0, v0

    rem-int v0, p1, v0

    return v0
.end method


# virtual methods
.method protected addTexture(IIII)Lfr/testudo/spacecorsair/display/Texture;
    .registers 9

    .prologue
    const/4 v3, -0x1

    .line 228
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/display/TextureLibrary;->getHashIndex(I)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->findFirstKey(II)I

    move-result v1

    .line 229
    const/4 v0, 0x0

    .line 230
    sget-boolean v2, Lfr/testudo/spacecorsair/display/TextureLibrary;->$assertionsDisabled:Z

    if-nez v2, :cond_16

    if-ne v1, v3, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 232
    :cond_16
    if-eq v1, v3, :cond_34

    .line 233
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v0, v0, v1

    iput p1, v0, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    .line 234
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v0, v0, v1

    iput p2, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 235
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v0, v0, v1

    iput p3, v0, Lfr/testudo/spacecorsair/display/Texture;->width:I

    .line 236
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v0, v0, v1

    iput p4, v0, Lfr/testudo/spacecorsair/display/Texture;->height:I

    .line 237
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v0, v0, v1

    .line 240
    :cond_34
    return-object v0
.end method

.method public allocateTexture(I)Lfr/testudo/spacecorsair/display/Texture;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/display/TextureLibrary;->getTextureByResource(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 62
    if-nez v0, :cond_c

    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lfr/testudo/spacecorsair/display/TextureLibrary;->addTexture(IIII)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 66
    :cond_c
    return-object v0
.end method

.method public deleteAll(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 9

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 91
    move v0, v1

    :goto_3
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v2, v2

    if-ge v0, v2, :cond_92

    .line 92
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    if-eq v2, v6, :cond_8e

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    if-eqz v2, :cond_8e

    .line 93
    sget-boolean v2, Lfr/testudo/spacecorsair/display/TextureLibrary;->$assertionsDisabled:Z

    if-nez v2, :cond_2a

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-ne v2, v6, :cond_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_2a
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureNameWorkspace:[I

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v3, v0

    iget v3, v3, Lfr/testudo/spacecorsair/display/Texture;->name:I

    aput v3, v2, v1

    .line 95
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iput v6, v2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 96
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 97
    const/4 v2, 0x1

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureNameWorkspace:[I

    invoke-interface {p1, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 98
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v2

    .line 99
    if-eqz v2, :cond_82

    .line 100
    const-string v3, "JDE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture Delete GLError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_82
    sget-boolean v3, Lfr/testudo/spacecorsair/display/TextureLibrary;->$assertionsDisabled:Z

    if-nez v3, :cond_8e

    if-eqz v2, :cond_8e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 107
    :cond_92
    return-void
.end method

.method public getTextureByResource(I)Lfr/testudo/spacecorsair/display/Texture;
    .registers 5

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/display/TextureLibrary;->getHashIndex(I)I

    move-result v0

    .line 191
    invoke-direct {p0, v0, p1}, Lfr/testudo/spacecorsair/display/TextureLibrary;->findFirstKey(II)I

    move-result v1

    .line 192
    const/4 v0, 0x0

    .line 193
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 194
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v0, v0, v1

    .line 196
    :cond_10
    return-object v0
.end method

.method public invalidateAll()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 111
    move v0, v1

    :goto_3
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    .line 112
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    if-eq v2, v3, :cond_24

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    if-eqz v2, :cond_24

    .line 113
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iput v3, v2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 114
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 111
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 117
    :cond_27
    return-void
.end method

.method public isTextureLoaded(I)Z
    .registers 3

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/display/TextureLibrary;->getTextureByResource(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public loadAll(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 82
    move v0, v1

    :goto_2
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    .line 83
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    if-nez v2, :cond_1f

    .line 84
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v2, v2, v0

    invoke-virtual {p0, p1, p2, v2, v1}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadBitmap(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Z)Lfr/testudo/spacecorsair/display/Texture;

    .line 82
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_22
    return-void
.end method

.method protected loadBitmap(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Z)Lfr/testudo/spacecorsair/display/Texture;
    .registers 14

    .prologue
    const v4, 0x47012f00    # 33071.0f

    const v8, 0x46240400    # 10497.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xde1

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p3, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 127
    :try_start_14
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_95

    move-result-object v1

    .line 132
    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_9a

    .line 139
    :goto_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureNameWorkspace:[I

    invoke-interface {p2, v7, v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 142
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureNameWorkspace:[I

    aget v0, v0, v6

    .line 143
    invoke-interface {p2, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 145
    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-interface {p2, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 146
    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-interface {p2, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 147
    const/16 v2, 0x2802

    invoke-interface {p2, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 148
    const/16 v2, 0x2803

    invoke-interface {p2, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 150
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/high16 v4, 0x46040000    # 8448.0f

    invoke-interface {p2, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 151
    if-eqz p4, :cond_55

    .line 152
    const/16 v2, 0x2802

    invoke-interface {p2, v5, v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 153
    const/16 v2, 0x2803

    invoke-interface {p2, v5, v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 157
    :cond_55
    invoke-static {p2, v1, p3}, Lfr/testudo/spacecorsair/mod/ModArt;->gameTex(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Lfr/testudo/spacecorsair/display/Texture;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v5, v6, v1, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 159
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mCropWorkspace:[I

    aput v6, v2, v6

    .line 160
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mCropWorkspace:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    aput v3, v2, v7

    .line 161
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mCropWorkspace:[I

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    aput v4, v2, v3

    .line 162
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mCropWorkspace:[I

    const/4 v3, 0x3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    aput v4, v2, v3

    .line 164
    check-cast p2, Ljavax/microedition/khronos/opengles/GL11;

    const v2, 0x8b9d

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mCropWorkspace:[I

    invoke-interface {p2, v5, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 170
    iput v0, p3, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p3, Lfr/testudo/spacecorsair/display/Texture;->width:I

    .line 172
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p3, Lfr/testudo/spacecorsair/display/Texture;->height:I

    .line 173
    iput-boolean v7, p3, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 175
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    return-object p3

    .line 131
    :catchall_95
    move-exception v1

    .line 132
    :try_start_96
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9c

    .line 135
    :goto_99
    throw v1

    .line 134
    :catch_9a
    move-exception v0

    goto :goto_1b

    :catch_9c
    move-exception v0

    goto :goto_99
.end method

.method public loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lfr/testudo/spacecorsair/display/Texture;
    .registers 5

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    return-object v0
.end method

.method public loadTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;IZ)Lfr/testudo/spacecorsair/display/Texture;
    .registers 6

    .prologue
    .line 71
    invoke-virtual {p0, p3}, Lfr/testudo/spacecorsair/display/TextureLibrary;->allocateTexture(I)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 72
    invoke-virtual {p0, p1, p2, v0, p4}, Lfr/testudo/spacecorsair/display/TextureLibrary;->loadBitmap(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Z)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method public removeAll()V
    .registers 3

    .prologue
    .line 244
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 245
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/TextureLibrary;->mTextureHash:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/display/Texture;->reset()V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_10
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/TextureLibrary;->removeAll()V

    .line 52
    return-void
.end method
