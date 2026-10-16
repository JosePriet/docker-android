.class final Lfr/testudo/spacecorsair/mod/ModCapitalData;
.super Ljava/lang/Object;
.source "ModCapitalData.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mounts(Ljava/lang/String;)[F
    .registers 3

    .prologue
    const/16 v1, 0x10

    .line 8
    const-string v0, "spartan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-array v0, v1, [F

    fill-array-data v0, :array_68

    .line 15
    :goto_f
    return-object v0

    .line 9
    :cond_10
    const-string v0, "reaver"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-array v0, v1, [F

    fill-array-data v0, :array_8c

    goto :goto_f

    .line 10
    :cond_1e
    const-string v0, "helion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-array v0, v1, [F

    fill-array-data v0, :array_b0

    goto :goto_f

    .line 11
    :cond_2c
    const-string v0, "warden"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-array v0, v1, [F

    fill-array-data v0, :array_d4

    goto :goto_f

    .line 12
    :cond_3a
    const-string v0, "kretari"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_f8

    goto :goto_f

    .line 13
    :cond_4a
    const-string v0, "varn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    new-array v0, v1, [F

    fill-array-data v0, :array_114

    goto :goto_f

    .line 14
    :cond_58
    const-string v0, "ironclad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-array v0, v1, [F

    fill-array-data v0, :array_138

    goto :goto_f

    .line 15
    :cond_66
    const/4 v0, 0x0

    goto :goto_f

    .line 8
    :array_68
    .array-data 4
        -0x42a6e979    # -0.053f
        -0x418624dd    # -0.244f
        0x3d591687    # 0.053f
        -0x418624dd    # -0.244f
        -0x42418937    # -0.093f
        -0x423e0ded    # -0.0947f
        0x3dbe76c9    # 0.093f
        -0x423e0ded    # -0.0947f
        -0x4237e910    # -0.0977f
        0x3d47e282    # 0.0488f
        0x3dc816f0    # 0.0977f
        0x3d47e282    # 0.0488f
        -0x42083127    # -0.121f
        0x3e85fd8b    # 0.2617f
        0x3df7ced9    # 0.121f
        0x3e85fd8b    # 0.2617f
    .end array-data

    .line 9
    :array_8c
    .array-data 4
        -0x42333333    # -0.1f
        -0x41f1f8a1    # -0.1387f
        0x3dcccccd    # 0.1f
        -0x41f1f8a1    # -0.1387f
        -0x423126e9    # -0.101f
        0x3bc154ca    # 0.0059f
        0x3dced917    # 0.101f
        0x3bc154ca    # 0.0059f
        -0x422f1aa0    # -0.102f
        0x3d87fcb9    # 0.0664f
        0x3dd0e560    # 0.102f
        0x3d87fcb9    # 0.0664f
        -0x4226e979    # -0.106f
        0x3e39096c    # 0.1807f
        0x3dd91687    # 0.106f
        0x3e39096c    # 0.1807f
    .end array-data

    .line 10
    :array_b0
    .array-data 4
        -0x428e5604    # -0.059f
        -0x41e30553    # -0.1533f
        0x3d71a9fc    # 0.059f
        -0x41e30553    # -0.1533f
        -0x428e5604    # -0.059f
        -0x4251eb85    # -0.085f
        0x3d71a9fc    # 0.059f
        -0x4251eb85    # -0.085f
        -0x428e5604    # -0.059f
        0x3e31f8a1    # 0.1738f
        0x3d71a9fc    # 0.059f
        0x3e31f8a1    # 0.1738f
        -0x4296872b    # -0.057f
        0x3e7ef9db    # 0.249f
        0x3d6978d5    # 0.057f
        0x3e7ef9db    # 0.249f
    .end array-data

    .line 11
    :array_d4
    .array-data 4
        -0x426c8b44    # -0.072f
        -0x41f6fd22    # -0.1338f
        0x3d9374bc    # 0.072f
        -0x41f6fd22    # -0.1338f
        -0x426c8b44    # -0.072f
        -0x44fced91    # -0.002f
        0x3d9374bc    # 0.072f
        -0x44fced91    # -0.002f
        -0x426c8b44    # -0.072f
        0x3e25e354    # 0.162f
        0x3d9374bc    # 0.072f
        0x3e25e354    # 0.162f
        -0x426c8b44    # -0.072f
        0x3e9a0275    # 0.3008f
        0x3d9374bc    # 0.072f
        0x3e9a0275    # 0.3008f
    .end array-data

    .line 12
    :array_f8
    .array-data 4
        -0x42027525    # -0.1238f
        -0x41efec57    # -0.1407f
        0x3df06f69    # 0.1174f
        -0x41f1a9fc    # -0.139f
        -0x41f9f55a    # -0.1309f
        0x3c816f00    # 0.0158f
        0x3dfec56d    # 0.1244f
        0x3c83126f    # 0.016f
        -0x421b7176    # -0.1116f
        0x3de3f141    # 0.1113f
        0x3dd81062    # 0.1055f
        0x3de69ad4    # 0.1126f
    .end array-data

    .line 13
    :array_114
    .array-data 4
        -0x4223a29c    # -0.1076f
        -0x41e2b6ae    # -0.1536f
        0x3ddc91d1    # 0.1077f
        -0x41e2d0e5    # -0.1535f
        -0x4238bac7    # -0.0973f
        -0x448068dc    # -0.0039f
        0x3dc7ae14    # 0.0975f
        -0x44765fd9    # -0.0042f
        -0x42388659    # -0.0974f
        0x3dc538ef    # 0.0963f
        0x3dc8e8a7    # 0.0981f
        0x3dc779a7    # 0.0974f
        0x3dd32618    # 0.1031f
        0x3e327bb3    # 0.1743f
        -0x422ee632    # -0.1021f
        0x3e3404ea    # 0.1758f
    .end array-data

    .line 14
    :array_138
    .array-data 4
        -0x41645a1d    # -0.304f
        -0x4167ef9e    # -0.297f
        0x3e9b7176    # 0.3036f
        -0x4167fcb9    # -0.2969f
        -0x417f8a09    # -0.2509f
        -0x422b020c    # -0.104f
        0x3e80346e    # 0.2504f
        -0x422a3055    # -0.1044f
        -0x417c432d    # -0.2573f
        0x3dd59b3d    # 0.1043f
        0x3e8353f8    # 0.2565f
        0x3dd6a162    # 0.1048f
        -0x415ab9f5    # -0.3228f
        0x3e892a30    # 0.2679f
        0x3ea51eb8    # 0.3225f
        0x3e88ce70    # 0.2672f
    .end array-data
.end method
