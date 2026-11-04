.class final Lfr/testudo/spacecorsair/mod/ModPoliceEdges;
.super Ljava/lang/Object;
.source "ModPoliceEdges.java"


# static fields
.field static final E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field static final PAD:F = 0.18f


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x50

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    .line 13
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "bastion"

    new-array v2, v3, [F

    fill-array-data v2, :array_26e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "hornet"

    new-array v2, v3, [F

    fill-array-data v2, :array_312

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "mantis"

    new-array v2, v3, [F

    fill-array-data v2, :array_3b6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "verdant"

    new-array v2, v3, [F

    fill-array-data v2, :array_45a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "secret_spartan"

    new-array v2, v3, [F

    fill-array-data v2, :array_4fe

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "monolith"

    new-array v2, v3, [F

    fill-array-data v2, :array_5a2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "viper"

    new-array v2, v3, [F

    fill-array-data v2, :array_646

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_raider"

    new-array v2, v3, [F

    fill-array-data v2, :array_6ea

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_gunship"

    new-array v2, v3, [F

    fill-array-data v2, :array_78e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "bulldog"

    new-array v2, v3, [F

    fill-array-data v2, :array_832

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_hunter"

    new-array v2, v3, [F

    fill-array-data v2, :array_8d6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_marauder"

    new-array v2, v3, [F

    fill-array-data v2, :array_97a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "albatros"

    new-array v2, v3, [F

    fill-array-data v2, :array_a1e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "raptor"

    new-array v2, v3, [F

    fill-array-data v2, :array_ac2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_corsair"

    new-array v2, v3, [F

    fill-array-data v2, :array_b66

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_lancer"

    new-array v2, v3, [F

    fill-array-data v2, :array_c0a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "warlord"

    new-array v2, v3, [F

    fill-array-data v2, :array_cae

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_warlord"

    new-array v2, v3, [F

    fill-array-data v2, :array_d52

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "secret_reaver"

    new-array v2, v3, [F

    fill-array-data v2, :array_df6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "rv_dreadnought"

    new-array v2, v3, [F

    fill-array-data v2, :array_e9a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_scout"

    new-array v2, v3, [F

    fill-array-data v2, :array_f3e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_bomber"

    new-array v2, v3, [F

    fill-array-data v2, :array_fe2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_frigate"

    new-array v2, v3, [F

    fill-array-data v2, :array_1086

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_destroyer"

    new-array v2, v3, [F

    fill-array-data v2, :array_112a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "secret_kretari"

    new-array v2, v3, [F

    fill-array-data v2, :array_11ce

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_cruiser"

    new-array v2, v3, [F

    fill-array-data v2, :array_1272

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_heavycruiser"

    new-array v2, v3, [F

    fill-array-data v2, :array_1316

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "harbinger"

    new-array v2, v3, [F

    fill-array-data v2, :array_13ba

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_battlecruiser"

    new-array v2, v3, [F

    fill-array-data v2, :array_145e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_battleship"

    new-array v2, v3, [F

    fill-array-data v2, :array_1502

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kt_mothership"

    new-array v2, v3, [F

    fill-array-data v2, :array_15a6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "comet"

    new-array v2, v3, [F

    fill-array-data v2, :array_164a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "talon"

    new-array v2, v3, [F

    fill-array-data v2, :array_16ee

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "nightjar"

    new-array v2, v3, [F

    fill-array-data v2, :array_1792

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "aurora"

    new-array v2, v3, [F

    fill-array-data v2, :array_1836

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "raven"

    new-array v2, v3, [F

    fill-array-data v2, :array_18da

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "secret_helion"

    new-array v2, v3, [F

    fill-array-data v2, :array_197e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "shade"

    new-array v2, v3, [F

    fill-array-data v2, :array_1a22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "kite"

    new-array v2, v3, [F

    fill-array-data v2, :array_1ac6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "seraph"

    new-array v2, v3, [F

    fill-array-data v2, :array_1b6a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "tidewarden"

    new-array v2, v3, [F

    fill-array-data v2, :array_1c0e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "secret_warden"

    new-array v2, v3, [F

    fill-array-data v2, :array_1cb2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "leviathan"

    new-array v2, v3, [F

    fill-array-data v2, :array_1d56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "crimson_throne"

    new-array v2, v3, [F

    fill-array-data v2, :array_1dfa

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "cap_spartan"

    new-array v2, v3, [F

    fill-array-data v2, :array_1e9e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "cap_reaver"

    new-array v2, v3, [F

    fill-array-data v2, :array_1f42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "cap_kretari"

    new-array v2, v3, [F

    fill-array-data v2, :array_1fe6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "cap_varn"

    new-array v2, v3, [F

    fill-array-data v2, :array_208a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "cap_ironclad"

    new-array v2, v3, [F

    fill-array-data v2, :array_212e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "cap_helion"

    new-array v2, v3, [F

    fill-array-data v2, :array_21d2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    const-string v1, "cap_warden"

    new-array v2, v3, [F

    fill-array-data v2, :array_2276

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void

    .line 13
    :array_26e
    .array-data 4
        -0x457ced91    # -0.001f
        -0x41428f5c    # -0.37f
        0x3d5d2f1b    # 0.054f
        -0x41666666    # -0.3f
        0x3dd2f1aa    # 0.103f
        -0x41733333    # -0.275f
        0x3de76c8b    # 0.113f
        -0x41c8b439    # -0.179f
        0x3e0f5c29    # 0.14f
        -0x41e66666    # -0.15f
        0x3e1fbe77    # 0.156f
        -0x421a9fbe    # -0.112f
        0x3e23d70a    # 0.16f
        -0x426c8b44    # -0.072f
        0x3e24dd2f    # 0.161f
        -0x42e45a1d    # -0.038f
        0x3e3a5e35    # 0.182f
        -0x438a3d71    # -0.015f
        0x3e48b439
        0x3c54fdf4    # 0.013f
        0x3e4fdf3b    # 0.203f
        0x3d3851ec    # 0.045f
        0x3e47ae14    # 0.195f
        0x3d9ba5e3    # 0.076f
        0x3e3a5e35    # 0.182f
        0x3dd4fdf4    # 0.104f
        0x3e28f5c3    # 0.165f
        0x3e041893    # 0.129f
        0x3e4bc6a8    # 0.199f
        0x3e428f5c    # 0.19f
        0x3e4ac083    # 0.198f
        0x3e79db23    # 0.244f
        0x3e2f1aa0    # 0.171f
        0x3e90624e    # 0.282f
        0x3e116873    # 0.142f
        0x3ea5e354    # 0.324f
        0x3dd70a3d    # 0.105f
        0x3ebe76c9    # 0.372f
        0x3d2c0831    # 0.042f
        0x3e9fbe77    # 0.312f
        -0x457ced91    # -0.001f
        0x3eb74bc7    # 0.358f
        -0x42cfdf3b    # -0.043f
        0x3ea0c49c    # 0.314f
        -0x4224dd2f    # -0.107f
        0x3ebdf3b6    # 0.371f
        -0x41ed9168    # -0.143f
        0x3ea56042    # 0.323f
        -0x41cfdf3b    # -0.172f
        0x3e8fdf3b    # 0.281f
        -0x41b43958    # -0.199f
        0x3e78d4fe    # 0.243f
        -0x41b43958    # -0.199f
        0x3e418937    # 0.189f
        -0x41d4fdf4    # -0.167f
        0x3e041893    # 0.129f
        -0x41c49ba6    # -0.183f
        0x3dd4fdf4    # 0.104f
        -0x41b851ec    # -0.195f
        0x3d99999a    # 0.075f
        -0x41ae147b    # -0.205f
        0x3d3851ec    # 0.045f
        -0x41b645a2    # -0.197f
        0x3c656042    # 0.014f
        -0x41c49ba6    # -0.183f
        -0x438a3d71    # -0.015f
        -0x41d91687    # -0.163f
        -0x42e45a1d    # -0.038f
        -0x41dc28f6    # -0.16f
        -0x426e978d    # -0.071f
        -0x41df3b64    # -0.157f
        -0x421cac08    # -0.111f
        -0x41ef9db2    # -0.141f
        -0x41e76c8b    # -0.149f
        -0x42147ae1    # -0.115f
        -0x41c8b439    # -0.179f
        -0x422d0e56    # -0.103f
        -0x41753f7d    # -0.271f
        -0x429eb852    # -0.055f
        -0x4166e979    # -0.299f
    .end array-data

    .line 14
    :array_312
    .array-data 4
        -0x44fced91    # -0.002f
        -0x41191687    # -0.451f
        0x3d6d9168    # 0.058f
        -0x4156872b    # -0.331f
        0x3db645a2    # 0.089f
        -0x419374bc    # -0.231f
        0x3deb851f    # 0.115f
        -0x41c6a7f0    # -0.181f
        0x3e126e98    # 0.143f
        -0x41e66666    # -0.15f
        0x3e28f5c3    # 0.165f
        -0x420e5604    # -0.118f
        0x3e3d70a4    # 0.185f
        -0x424fdf3b    # -0.086f
        0x3e49ba5e    # 0.197f
        -0x42ab020c    # -0.052f
        0x3e604189    # 0.219f
        -0x43439581    # -0.023f
        0x3e6978d5    # 0.228f
        0x3c54fdf4    # 0.013f
        0x3e5e353f    # 0.217f
        0x3d48b439    # 0.049f
        0x3e5f3b64    # 0.218f
        0x3dac0831    # 0.084f
        0x3e570a3d    # 0.21f
        0x3df1a9fc    # 0.118f
        0x3e49ba5e    # 0.197f
        0x3e19999a    # 0.15f
        0x3e2f1aa0    # 0.171f
        0x3e322d0e    # 0.174f
        0x3e1ba5e3    # 0.152f
        0x3e4ed917    # 0.202f
        0x3e020c4a    # 0.127f
        0x3e676c8b    # 0.226f
        0x3e1374bc    # 0.144f
        0x3eab020c    # 0.334f
        0x3dd70a3d    # 0.105f
        0x3ec08312    # 0.376f
        0x3d79db23    # 0.061f
        0x3ee45a1d    # 0.446f
        -0x44fced91    # -0.002f
        0x3ed3f7cf    # 0.414f
        -0x427ae148    # -0.065f
        0x3ee45a1d    # 0.446f
        -0x4224dd2f    # -0.107f
        0x3ebf7cee    # 0.374f
        -0x41ea7efa    # -0.146f
        0x3eaa7efa    # 0.333f
        -0x41fbe76d    # -0.129f
        0x3e656042    # 0.224f
        -0x41e24dd3    # -0.154f
        0x3e4dd2f2    # 0.201f
        -0x41cfdf3b    # -0.172f
        0x3e3126e9    # 0.173f
        -0x41b33333    # -0.2f
        0x3e19999a    # 0.15f
        -0x41a6e979    # -0.212f
        0x3def9db2    # 0.117f
        -0x419cac08    # -0.222f
        0x3dac0831    # 0.084f
        -0x41a0c49c    # -0.218f
        0x3d48b439    # 0.049f
        -0x41958106    # -0.229f
        0x3c54fdf4    # 0.013f
        -0x419fbe77    # -0.219f
        -0x434bc6a8    # -0.022f
        -0x41b53f7d    # -0.198f
        -0x42af1aa0    # -0.051f
        -0x41c08312    # -0.187f
        -0x4251eb85    # -0.085f
        -0x41d4fdf4    # -0.167f
        -0x4210624e    # -0.117f
        -0x41ea7efa    # -0.146f
        -0x41e66666    # -0.15f
        -0x420c49ba    # -0.119f
        -0x41c6a7f0    # -0.181f
        -0x42439581    # -0.092f
        -0x41947ae1    # -0.23f
        -0x428a3d71    # -0.06f
        -0x415ba5e3    # -0.321f
    .end array-data

    .line 15
    :array_3b6
    .array-data 4
        -0x44fced91    # -0.002f
        -0x418c49ba    # -0.238f
        0x3d75c28f    # 0.06f
        -0x415374bc    # -0.337f
        0x3dcccccd    # 0.1f
        -0x41795810    # -0.263f
        0x3dfbe76d    # 0.123f
        -0x41b95810    # -0.194f
        0x3e26e979    # 0.163f
        -0x41cbc6a8    # -0.176f
        0x3e29fbe7    # 0.166f
        -0x4210624e    # -0.117f
        0x3e395810    # 0.181f
        -0x42581062    # -0.082f
        0x3e48b439
        -0x42b33333    # -0.05f
        0x3e591687    # 0.212f
        -0x43645a1d    # -0.019f
        0x3e604189    # 0.219f
        0x3c75c28f    # 0.015f
        0x3e78d4fe    # 0.243f
        0x3d4ccccd    # 0.05f
        0x3e810625    # 0.252f
        0x3dba5e35    # 0.091f
        0x3e818937    # 0.253f
        0x3e083127    # 0.133f
        0x3e85a1cb    # 0.261f
        0x3e3c6a7f    # 0.184f
        0x3e6b851f    # 0.23f
        0x3e604189    # 0.219f
        0x3e5b22d1    # 0.214f
        0x3e883127    # 0.266f
        0x3e2b020c    # 0.167f
        0x3e90e560    # 0.283f
        0x3e03126f    # 0.128f
        0x3e9c28f6    # 0.305f
        0x3db851ec    # 0.09f
        0x3eab020c    # 0.334f
        0x3d591687    # 0.053f
        0x3ecc49ba    # 0.399f
        -0x44fced91    # -0.002f
        0x3e9cac08    # 0.306f
        -0x4296872b    # -0.057f
        0x3ecbc6a8    # 0.398f
        -0x423f7cee    # -0.094f
        0x3eaa7efa    # 0.333f
        -0x41f8d4fe    # -0.132f
        0x3e9c28f6    # 0.305f
        -0x41d2f1aa    # -0.169f
        0x3e8fdf3b    # 0.281f
        -0x41a1cac1    # -0.217f
        0x3e87ae14    # 0.265f
        -0x41926e98    # -0.232f
        0x3e5f3b64    # 0.218f
        -0x41795810    # -0.263f
        0x3e3b645a    # 0.183f
        -0x417d70a4    # -0.255f
        0x3e083127    # 0.133f
        -0x417df3b6    # -0.254f
        0x3db851ec    # 0.09f
        -0x4183126f    # -0.247f
        0x3d4ccccd    # 0.05f
        -0x419cac08    # -0.222f
        0x3c83126f    # 0.016f
        -0x41a3d70a    # -0.215f
        -0x43645a1d    # -0.019f
        -0x41b53f7d    # -0.198f
        -0x42b33333    # -0.05f
        -0x41c39581    # -0.184f
        -0x42581062    # -0.082f
        -0x41d3f7cf    # -0.168f
        -0x42126e98    # -0.116f
        -0x41d60419    # -0.166f
        -0x41cccccd    # -0.175f
        -0x41fef9db    # -0.126f
        -0x41b95810    # -0.194f
        -0x422d0e56    # -0.103f
        -0x4179db23    # -0.262f
        -0x427ef9db    # -0.063f
        -0x4153f7cf    # -0.336f
    .end array-data

    .line 16
    :array_45a
    .array-data 4
        -0x80000000
        -0x413be76d    # -0.383f
        0x3d7df3b6    # 0.062f
        -0x4149ba5e    # -0.356f
        0x3de76c8b    # 0.113f
        -0x416147ae    # -0.31f
        0x3e116873    # 0.142f
        -0x418a3d71    # -0.24f
        0x3e3020c5    # 0.172f
        -0x41b645a2    # -0.197f
        0x3e47ae14    # 0.195f
        -0x41e147ae    # -0.155f
        0x3e5b22d1    # 0.214f
        -0x42147ae1    # -0.115f
        0x3e645a1d    # 0.223f
        -0x426a7efa    # -0.073f
        0x3e79db23    # 0.244f
        -0x42e04189    # -0.039f
        0x3e8ed917    # 0.279f
        -0x447ced91    # -0.004f
        0x3e981062    # 0.297f
        0x3d23d70a    # 0.04f
        0x3e92f1aa    # 0.287f
        0x3db020c5    # 0.086f
        0x3ea04189    # 0.313f
        0x3e116873    # 0.142f
        0x3e8ccccd    # 0.275f
        0x3e395810    # 0.181f
        0x3e872b02    # 0.264f
        0x3e6e978d    # 0.233f
        0x3e849ba6    # 0.259f
        0x3e991687    # 0.299f
        0x3e46a7f0    # 0.194f
        0x3e9db22d    # 0.308f
        0x3e147ae1    # 0.145f
        0x3ea6e979    # 0.326f
        0x3dd91687    # 0.106f
        0x3ebced91    # 0.369f
        0x3d71a9fc    # 0.059f
        0x3ed3f7cf    # 0.414f
        -0x80000000
        0x3ea8f5c3    # 0.33f
        -0x428e5604    # -0.059f
        0x3ed374bc    # 0.413f
        -0x4224dd2f    # -0.107f
        0x3ebced91    # 0.369f
        -0x41eb851f    # -0.145f
        0x3ea66666    # 0.325f
        -0x41ba5e35    # -0.193f
        0x3e9cac08    # 0.306f
        -0x417b645a    # -0.259f
        0x3e991687    # 0.299f
        -0x4178d4fe    # -0.264f
        0x3e6d9168    # 0.232f
        -0x41733333    # -0.275f
        0x3e395810    # 0.181f
        -0x415fbe77    # -0.313f
        0x3e116873    # 0.142f
        -0x416d9168    # -0.286f
        0x3db020c5    # 0.086f
        -0x416872b0    # -0.296f
        0x3d23d70a    # 0.04f
        -0x4170a3d7    # -0.28f
        -0x447ced91    # -0.004f
        -0x418624dd    # -0.244f
        -0x42e04189    # -0.039f
        -0x419ba5e3    # -0.223f
        -0x426a7efa    # -0.073f
        -0x41a4dd2f    # -0.214f
        -0x42147ae1    # -0.115f
        -0x41b851ec    # -0.195f
        -0x41e24dd3    # -0.154f
        -0x41d0e560    # -0.171f
        -0x41b851ec    # -0.195f
        -0x41ee978d    # -0.142f
        -0x418c49ba    # -0.238f
        -0x4216872b    # -0.114f
        -0x4161cac1    # -0.309f
        -0x427ef9db    # -0.063f
        -0x414a3d71    # -0.355f
    .end array-data

    .line 17
    :array_4fe
    .array-data 4
        -0x80000000
        -0x41224dd3    # -0.433f
        0x3d872b02    # 0.066f
        -0x41472b02    # -0.361f
        0x3dc6a7f0    # 0.097f
        -0x418a3d71    # -0.24f
        0x3e0c49ba    # 0.137f
        -0x41a8f5c3    # -0.21f
        0x3e1db22d    # 0.154f
        -0x41e353f8    # -0.153f
        0x3e3020c5    # 0.172f
        -0x42189375    # -0.113f
        0x3e3a5e35    # 0.182f
        -0x426a7efa    # -0.073f
        0x3e45a1cb    # 0.193f
        -0x42e04189    # -0.039f
        0x3e52f1aa    # 0.206f
        -0x43fced91    # -0.008f
        0x3e581062    # 0.211f
        0x3cd4fdf4    # 0.026f
        0x3e4ed917    # 0.202f
        0x3d71a9fc    # 0.059f
        0x3e4ccccd    # 0.2f
        0x3dba5e35    # 0.091f
        0x3e4dd2f2    # 0.201f
        0x3e000000    # 0.125f
        0x3e4fdf3b    # 0.203f
        0x3e26e979    # 0.163f
        0x3e3a5e35    # 0.182f
        0x3e449ba6    # 0.192f
        0x3e418937    # 0.189f
        0x3e7ef9db    # 0.249f
        0x3e3c6a7f    # 0.184f
        0x3ea04189    # 0.313f
        0x3e1a9fbe    # 0.151f
        0x3eb645a2    # 0.356f
        0x3df5c28f    # 0.12f
        0x3edba5e3    # 0.429f
        0x3d79db23    # 0.061f
        0x3ee353f8    # 0.444f
        -0x80000000
        0x3ee66666    # 0.45f
        -0x428624dd    # -0.061f
        0x3ee353f8    # 0.444f
        -0x420a3d71    # -0.12f
        0x3edb22d1    # 0.428f
        -0x41e56042    # -0.151f
        0x3eb5c28f    # 0.355f
        -0x41c28f5c    # -0.185f
        0x3ea04189    # 0.313f
        -0x41be76c9    # -0.189f
        0x3e7ef9db    # 0.249f
        -0x41c5a1cb    # -0.182f
        0x3e439581    # 0.191f
        -0x41b020c5    # -0.203f
        0x3e26e979    # 0.163f
        -0x41b126e9    # -0.202f
        0x3e000000    # 0.125f
        -0x41b22d0e    # -0.201f
        0x3dba5e35    # 0.091f
        -0x41b22d0e    # -0.201f
        0x3d71a9fc    # 0.059f
        -0x41a7ef9e    # -0.211f
        0x3cd4fdf4    # 0.026f
        -0x41ad0e56    # -0.206f
        -0x441a9fbe    # -0.007f
        -0x41ba5e35    # -0.193f
        -0x42e04189    # -0.039f
        -0x41c5a1cb    # -0.182f
        -0x426a7efa    # -0.073f
        -0x41cfdf3b    # -0.172f
        -0x42189375    # -0.113f
        -0x41e24dd3    # -0.154f
        -0x41e45a1d    # -0.152f
        -0x41f2b021    # -0.138f
        -0x41a8f5c3    # -0.21f
        -0x42395810    # -0.097f
        -0x418c49ba    # -0.238f
        -0x4278d4fe    # -0.066f
        -0x414a3d71    # -0.355f
    .end array-data

    .line 18
    :array_5a2
    .array-data 4
        -0x80000000
        -0x41472b02    # -0.361f
        0x3d656042    # 0.056f
        -0x413b645a    # -0.384f
        0x3dba5e35    # 0.091f
        -0x415fbe77    # -0.313f
        0x3e2e147b    # 0.17f
        -0x41451eb8    # -0.365f
        0x3e449ba6    # 0.192f
        -0x416872b0    # -0.296f
        0x3e6d9168    # 0.232f
        -0x4179db23    # -0.262f
        0x3e83126f    # 0.256f
        -0x41a1cac1    # -0.217f
        0x3e86a7f0    # 0.263f
        -0x41d70a3d    # -0.165f
        0x3e90624e    # 0.282f
        -0x420624dd    # -0.122f
        0x3e91eb85    # 0.285f
        -0x42645a1d    # -0.076f
        0x3e9374bc    # 0.288f
        -0x430a3d71    # -0.03f
        0x3e8f5c29    # 0.28f
        0x3c656042    # 0.014f
        0x3e8ac083    # 0.271f
        0x3d6d9168    # 0.058f
        0x3e828f5c    # 0.255f
        0x3dcccccd    # 0.1f
        0x3e74bc6a    # 0.239f
        0x3e126e98    # 0.143f
        0x3e5a1cac    # 0.213f
        0x3e3b645a    # 0.183f
        0x3e47ae14    # 0.195f
        0x3e73b646    # 0.238f
        0x3e1374bc    # 0.144f
        0x3e818937    # 0.253f
        0x3dced917    # 0.101f
        0x3e90e560    # 0.283f
        0x3d6147ae    # 0.055f
        0x3ea3d70a    # 0.32f
        -0x80000000
        0x3ed91687    # 0.424f
        -0x4296872b    # -0.057f
        0x3ea66666    # 0.325f
        -0x4228f5c3    # -0.105f
        0x3e947ae1    # 0.29f
        -0x41e76c8b    # -0.149f
        0x3e8624dd    # 0.262f
        -0x41b851ec    # -0.195f
        0x3e72b021    # 0.237f
        -0x41a4dd2f    # -0.214f
        0x3e3b645a    # 0.183f
        -0x418b4396    # -0.239f
        0x3e126e98    # 0.143f
        -0x417d70a4    # -0.255f
        0x3dcac083    # 0.099f
        -0x41753f7d    # -0.271f
        0x3d6978d5    # 0.057f
        -0x4170a3d7    # -0.28f
        0x3c656042    # 0.014f
        -0x416c0831    # -0.289f
        -0x430a3d71    # -0.03f
        -0x416e147b    # -0.285f
        -0x42645a1d    # -0.076f
        -0x417020c5    # -0.281f
        -0x420624dd    # -0.122f
        -0x41795810    # -0.263f
        -0x41d81062    # -0.164f
        -0x417c6a7f    # -0.257f
        -0x41a1cac1    # -0.217f
        -0x41916873    # -0.233f
        -0x41795810    # -0.263f
        -0x41b95810    # -0.194f
        -0x4167ef9e    # -0.297f
        -0x41d1eb85    # -0.17f
        -0x414624dd    # -0.363f
        -0x42418937    # -0.093f
        -0x415eb852    # -0.315f
        -0x429a9fbe    # -0.056f
        -0x413c6a7f    # -0.382f
    .end array-data

    .line 19
    :array_646
    .array-data 4
        -0x80000000
        -0x415b22d1    # -0.322f
        0x3d1374bc    # 0.036f
        -0x41c08312    # -0.187f
        0x3dc28f5c    # 0.095f
        -0x417f7cee    # -0.251f
        0x3e010625    # 0.126f
        -0x41ae147b    # -0.205f
        0x3e147ae1    # 0.145f
        -0x41df3b64    # -0.157f
        0x3e28f5c3    # 0.165f
        -0x42041893    # -0.123f
        0x3e2c0831    # 0.168f
        -0x425c28f6    # -0.08f
        0x3e3645a2    # 0.178f
        -0x42bb645a    # -0.048f
        0x3e45a1cb    # 0.193f
        -0x435c28f6    # -0.02f
        0x3e51eb85    # 0.205f
        0x3c23d70a    # 0.01f
        0x3e560419    # 0.209f
        0x3d2c0831    # 0.042f
        0x3e52f1aa    # 0.206f
        0x3d99999a    # 0.075f
        0x3e49ba5e    # 0.197f
        0x3ddb22d1    # 0.107f
        0x3e3e76c9    # 0.186f
        0x3e0c49ba    # 0.137f
        0x3e333333    # 0.175f
        0x3e2e147b    # 0.17f
        0x3e26e979    # 0.163f
        0x3e51eb85    # 0.205f
        0x3e16872b    # 0.147f
        0x3e7ae148    # 0.245f
        0x3e010625    # 0.126f
        0x3e947ae1    # 0.29f
        0x3d8f5c29    # 0.07f
        0x3e851eb8    # 0.26f
        0x3d343958    # 0.044f
        0x3ea45a1d    # 0.321f
        -0x80000000
        0x3e970a3d    # 0.295f
        -0x42cbc6a8    # -0.044f
        0x3ea3d70a    # 0.32f
        -0x4270a3d7    # -0.07f
        0x3e839581    # 0.257f
        -0x41fef9db    # -0.126f
        0x3e93f7cf    # 0.289f
        -0x41e872b0    # -0.148f
        0x3e7ae148    # 0.245f
        -0x41d91687    # -0.163f
        0x3e51eb85    # 0.205f
        -0x41cbc6a8    # -0.176f
        0x3e2e147b    # 0.17f
        -0x41c18937    # -0.186f
        0x3e0c49ba    # 0.137f
        -0x41b53f7d    # -0.198f
        0x3ddb22d1    # 0.107f
        -0x41ac0831    # -0.207f
        0x3d99999a    # 0.075f
        -0x41ab020c    # -0.208f
        0x3d2c0831    # 0.042f
        -0x41ae147b    # -0.205f
        0x3c23d70a    # 0.01f
        -0x41ba5e35    # -0.193f
        -0x435c28f6    # -0.02f
        -0x41c9ba5e    # -0.178f
        -0x42bb645a    # -0.048f
        -0x41d4fdf4    # -0.167f
        -0x425e353f    # -0.079f
        -0x41d70a3d    # -0.165f
        -0x42041893    # -0.123f
        -0x41ec8b44    # -0.144f
        -0x41e04189    # -0.156f
        -0x41fef9db    # -0.126f
        -0x41af1aa0    # -0.204f
        -0x423b645a    # -0.096f
        -0x417f7cee    # -0.251f
        -0x42ec8b44    # -0.036f
        -0x41c49ba6    # -0.183f
    .end array-data

    .line 20
    :array_6ea
    .array-data 4
        -0x447ced91    # -0.004f
        -0x41276c8b    # -0.423f
        0x3d872b02    # 0.066f
        -0x412c8b44    # -0.413f
        0x3dd70a3d    # 0.105f
        -0x41645a1d    # -0.304f
        0x3e50e560    # 0.204f
        -0x413ef9db    # -0.377f
        0x3e79db23    # 0.244f
        -0x4160c49c    # -0.311f
        0x3e841893    # 0.258f
        -0x41926e98    # -0.232f
        0x3e8ac083    # 0.271f
        -0x41d2f1aa    # -0.169f
        0x3e8ac083    # 0.271f
        -0x421eb852    # -0.11f
        0x3e8ac083    # 0.271f
        -0x428e5604    # -0.059f
        0x3e8a3d71    # 0.27f
        -0x43ab020c    # -0.013f
        0x3e8a3d71    # 0.27f
        0x3cf5c28f    # 0.03f
        0x3e8a3d71    # 0.27f
        0x3d978d50    # 0.074f
        0x3e83126f    # 0.256f
        0x3deb851f    # 0.115f
        0x3e26e979    # 0.163f
        0x3ded9168    # 0.116f
        0x3e27ef9e    # 0.164f
        0x3e1ba5e3    # 0.152f
        0x3e25e354    # 0.162f
        0x3e48b439
        0x3e5e353f    # 0.217f
        0x3eab020c    # 0.334f
        0x3e3a5e35    # 0.182f
        0x3ecac083    # 0.396f
        0x3dfdf3b6    # 0.124f
        0x3ed91687    # 0.424f
        0x3d89374c    # 0.067f
        0x3ef4bc6a    # 0.478f
        -0x447ced91    # -0.004f
        0x3ed9999a    # 0.425f
        -0x42666666    # -0.075f
        0x3ef4bc6a    # 0.478f
        -0x41f8d4fe    # -0.132f
        0x3ed91687    # 0.424f
        -0x41c8b439    # -0.179f
        0x3ec00000    # 0.375f
        -0x419cac08    # -0.222f
        0x3ea978d5    # 0.331f
        -0x41d4fdf4    # -0.167f
        0x3e45a1cb    # 0.193f
        -0x41d70a3d    # -0.165f
        0x3e178d50    # 0.148f
        -0x41d4fdf4    # -0.167f
        0x3de978d5    # 0.114f
        -0x417ae148    # -0.26f
        0x3de978d5    # 0.114f
        -0x4173b646    # -0.274f
        0x3d958106    # 0.073f
        -0x41722d0e    # -0.277f
        0x3cf5c28f    # 0.03f
        -0x4173b646    # -0.274f
        -0x43bb645a    # -0.012f
        -0x41733333    # -0.275f
        -0x42926e98    # -0.058f
        -0x41733333    # -0.275f
        -0x4222d0e5    # -0.108f
        -0x4172b021    # -0.276f
        -0x41d4fdf4    # -0.167f
        -0x4177ced9    # -0.266f
        -0x41926e98    # -0.232f
        -0x41800000    # -0.25f
        -0x41624dd3    # -0.308f
        -0x41a3d70a    # -0.215f
        -0x413b645a    # -0.384f
        -0x4220c49c    # -0.109f
        -0x4169fbe7    # -0.293f
        -0x426e978d    # -0.071f
        -0x413851ec    # -0.39f
    .end array-data

    .line 21
    :array_78e
    .array-data 4
        -0x44fced91    # -0.002f
        -0x410bc6a8    # -0.477f
        0x3d79db23    # 0.061f
        -0x413c6a7f    # -0.382f
        0x3dae147b    # 0.085f
        -0x417ef9db    # -0.252f
        0x3e1ba5e3    # 0.152f
        -0x416c8b44    # -0.288f
        0x3e1ba5e3    # 0.152f
        -0x41b645a2    # -0.197f
        0x3e86a7f0    # 0.263f
        -0x41800000    # -0.25f
        0x3e8bc6a8    # 0.273f
        -0x41c28f5c    # -0.185f
        0x3e8bc6a8    # 0.273f
        -0x42000000    # -0.125f
        0x3ee147ae    # 0.44f
        -0x41fbe76d    # -0.129f
        0x3ee04189    # 0.438f
        -0x429eb852    # -0.055f
        0x3ee0c49c    # 0.439f
        0x3c75c28f    # 0.015f
        0x3ee04189    # 0.438f
        0x3dae147b    # 0.085f
        0x3ee147ae    # 0.44f
        0x3e22d0e5    # 0.159f
        0x3ee147ae    # 0.44f
        0x3e75c28f    # 0.24f
        0x3ed47ae1    # 0.415f
        0x3ea2d0e5    # 0.318f
        0x3e21cac1    # 0.158f
        0x3e333333    # 0.175f
        0x3e1ba5e3    # 0.152f
        0x3e6872b0    # 0.227f
        0x3e1fbe77    # 0.156f
        0x3ea66666    # 0.325f
        0x3de147ae    # 0.11f
        0x3eb8d4fe    # 0.361f
        0x3d5d2f1b    # 0.054f
        0x3ebb645a    # 0.366f
        -0x44fced91    # -0.002f
        0x3ef5c28f    # 0.48f
        -0x42926e98    # -0.058f
        0x3ebd70a4    # 0.37f
        -0x42189375    # -0.113f
        0x3eb6c8b4    # 0.357f
        -0x41de353f    # -0.158f
        0x3ea45a1d    # 0.321f
        -0x41e353f8    # -0.153f
        0x3e656042    # 0.224f
        -0x41da1cac    # -0.162f
        0x3e333333    # 0.175f
        -0x412b020c    # -0.416f
        0x3ea1cac1    # 0.316f
        -0x411eb852    # -0.44f
        0x3e73b646    # 0.238f
        -0x411eb852    # -0.44f
        0x3e20c49c    # 0.157f
        -0x411fbe77    # -0.438f
        0x3dac0831    # 0.084f
        -0x411f3b64    # -0.439f
        0x3c75c28f    # 0.015f
        -0x411fbe77    # -0.438f
        -0x42a2d0e5    # -0.054f
        -0x411eb852    # -0.44f
        -0x41fdf3b6    # -0.127f
        -0x41743958    # -0.273f
        -0x42041893    # -0.123f
        -0x41753f7d    # -0.271f
        -0x41c7ae14    # -0.18f
        -0x4178d4fe    # -0.264f
        -0x4183126f    # -0.247f
        -0x419cac08    # -0.222f
        -0x416c8b44    # -0.288f
        -0x41e56042    # -0.151f
        -0x41722d0e    # -0.277f
        -0x423f7cee    # -0.094f
        -0x41774bc7    # -0.267f
        -0x427ae148    # -0.065f
        -0x413c6a7f    # -0.382f
    .end array-data

    .line 22
    :array_832
    .array-data 4
        -0x80000000
        -0x414ac083    # -0.354f
        0x3d656042    # 0.056f
        -0x41560419    # -0.332f
        0x3dcccccd    # 0.1f
        -0x416c8b44    # -0.288f
        0x3e0c49ba    # 0.137f
        -0x41820c4a    # -0.248f
        0x3dd91687    # 0.106f
        -0x42000000    # -0.125f
        0x3deb851f    # 0.115f
        -0x42418937    # -0.093f
        0x3e03126f    # 0.128f
        -0x426e978d    # -0.071f
        0x3e147ae1    # 0.145f
        -0x42ab020c    # -0.052f
        0x3e1fbe77    # 0.156f
        -0x431a9fbe    # -0.028f
        0x3e28f5c3    # 0.165f
        -0x447ced91    # -0.004f
        0x3e25e354    # 0.162f
        0x3cb43958    # 0.022f
        0x3e1cac08    # 0.153f
        0x3d408312    # 0.047f
        0x3e189375    # 0.149f
        0x3d916873    # 0.071f
        0x3e22d0e5    # 0.159f
        0x3dd4fdf4    # 0.104f
        0x3e3645a2    # 0.178f
        0x3e1ba5e3    # 0.152f
        0x3e2d0e56    # 0.169f
        0x3e449ba6    # 0.192f
        0x3e26e979    # 0.163f
        0x3e7ced91    # 0.247f
        0x3e083127    # 0.133f
        0x3e91eb85    # 0.285f
        0x3dc49ba6    # 0.096f
        0x3ea45a1d    # 0.321f
        0x3d54fdf4    # 0.052f
        0x3eb53f7d    # 0.354f
        -0x80000000
        0x3eb5c28f    # 0.355f
        -0x42a6e979    # -0.053f
        0x3eb53f7d    # 0.354f
        -0x42395810    # -0.097f
        0x3ea45a1d    # 0.321f
        -0x41f5c28f    # -0.135f
        0x3e926e98    # 0.286f
        -0x41d91687    # -0.163f
        0x3e7be76d    # 0.246f
        -0x41d1eb85    # -0.17f
        0x3e449ba6    # 0.192f
        -0x41cac083    # -0.177f
        0x3e1a9fbe    # 0.151f
        -0x41de353f    # -0.158f
        0x3dd2f1aa    # 0.103f
        -0x41e76c8b    # -0.149f
        0x3d916873    # 0.071f
        -0x41e353f8    # -0.153f
        0x3d408312    # 0.047f
        -0x41da1cac    # -0.162f
        0x3cb43958    # 0.022f
        -0x41d81062    # -0.164f
        -0x447ced91    # -0.004f
        -0x41e04189    # -0.156f
        -0x431a9fbe    # -0.028f
        -0x41eb851f    # -0.145f
        -0x42af1aa0    # -0.051f
        -0x41fced91    # -0.128f
        -0x426e978d    # -0.071f
        -0x4216872b    # -0.114f
        -0x4245a1cb    # -0.091f
        -0x4226e979    # -0.106f
        -0x42041893    # -0.123f
        -0x41f2b021    # -0.138f
        -0x41820c4a    # -0.248f
        -0x42333333    # -0.1f
        -0x416e147b    # -0.285f
        -0x429a9fbe    # -0.056f
        -0x4156872b    # -0.331f
    .end array-data

    .line 23
    :array_8d6
    .array-data 4
        -0x43fced91    # -0.008f
        -0x415eb852    # -0.315f
        0x3d408312    # 0.047f
        -0x4164dd2f    # -0.303f
        0x3dc49ba6    # 0.096f
        -0x4172b021    # -0.276f
        0x3e0624dd    # 0.131f
        -0x4196872b    # -0.228f
        0x3eae978d    # 0.341f
        -0x4120c49c    # -0.436f
        0x3ec20c4a    # 0.379f
        -0x4150624e    # -0.343f
        0x3ec7ae14    # 0.39f
        -0x41851eb8    # -0.245f
        0x3ed1eb85    # 0.41f
        -0x41d2f1aa    # -0.169f
        0x3ed0e560    # 0.408f
        -0x4245a1cb    # -0.091f
        0x3ed58106    # 0.417f
        -0x43439581    # -0.023f
        0x3ed3f7cf    # 0.414f
        0x3d343958    # 0.044f
        0x3ed16873    # 0.409f
        0x3de147ae    # 0.11f
        0x3ebdf3b6    # 0.371f
        0x3e2b020c    # 0.167f
        0x3ed91687    # 0.424f
        0x3e872b02    # 0.264f
        0x3ef22d0e    # 0.473f
        0x3ec9374c    # 0.393f
        0x3ecd4fdf    # 0.401f
        0x3ee7ef9e    # 0.453f
        0x3e5e353f    # 0.217f
        0x3eb53f7d    # 0.354f
        0x3e25e354    # 0.162f
        0x3ec18937    # 0.378f
        0x3dced917    # 0.101f
        0x3ec18937    # 0.378f
        0x3d343958    # 0.044f
        0x3ebc6a7f    # 0.368f
        -0x43fced91    # -0.008f
        0x3eaa7efa    # 0.333f
        -0x428a3d71    # -0.06f
        0x3ec08312    # 0.376f
        -0x42126e98    # -0.116f
        0x3ec18937    # 0.378f
        -0x41c9ba5e    # -0.178f
        0x3ec18937    # 0.378f
        -0x41916873    # -0.233f
        0x3eb53f7d    # 0.354f
        -0x412a7efa    # -0.417f
        0x3ee7ef9e    # 0.453f
        -0x4109374c    # -0.482f
        0x3ec6a7f0    # 0.388f
        -0x4122d0e5    # -0.432f
        0x3e851eb8    # 0.26f
        -0x413df3b6    # -0.379f
        0x3e28f5c3    # 0.165f
        -0x412a7efa    # -0.417f
        0x3ddf3b64    # 0.109f
        -0x4123d70a    # -0.43f
        0x3d343958    # 0.044f
        -0x4126e979    # -0.424f
        -0x434bc6a8    # -0.022f
        -0x412b020c    # -0.416f
        -0x4249ba5e    # -0.089f
        -0x412978d5    # -0.419f
        -0x41d70a3d    # -0.165f
        -0x4136c8b4    # -0.393f
        -0x418e5604    # -0.236f
        -0x4138d4fe    # -0.389f
        -0x415374bc    # -0.337f
        -0x414dd2f2    # -0.348f
        -0x4126e979    # -0.424f
        -0x41ed9168    # -0.143f
        -0x419db22d    # -0.221f
        -0x4220c49c    # -0.109f
        -0x4176c8b4    # -0.268f
        -0x427ef9db    # -0.063f
        -0x4164dd2f    # -0.303f
    .end array-data

    .line 24
    :array_97a
    .array-data 4
        -0x447ced91    # -0.004f
        -0x415cac08    # -0.319f
        0x3d75c28f    # 0.06f
        -0x41333333    # -0.4f
        0x3ddd2f1b    # 0.108f
        -0x414fdf3b    # -0.344f
        0x3deb851f    # 0.115f
        -0x41926e98    # -0.232f
        0x3e000000    # 0.125f
        -0x41cbc6a8    # -0.176f
        0x3e3f7cee    # 0.187f
        -0x41be76c9    # -0.189f
        0x3e656042    # 0.224f
        -0x41d81062    # -0.164f
        0x3e75c28f    # 0.24f
        -0x42041893    # -0.123f
        0x3e872b02    # 0.264f
        -0x424fdf3b    # -0.086f
        0x3e8a3d71    # 0.27f
        -0x42d3f7cf    # -0.042f
        0x3e91eb85    # 0.285f
        0x3a83126f    # 0.001f
        0x3e981062    # 0.297f
        0x3d48b439    # 0.049f
        0x3e9db22d    # 0.308f
        0x3dd2f1aa    # 0.103f
        0x3e91eb85    # 0.285f
        0x3e178d50    # 0.148f
        0x3e8624dd    # 0.262f
        0x3e46a7f0    # 0.194f
        0x3e4ccccd    # 0.2f
        0x3e52f1aa    # 0.206f
        0x3e126e98    # 0.143f
        0x3e4fdf3b    # 0.203f
        0x3e09374c    # 0.134f
        0x3e8bc6a8    # 0.273f
        0x3dced917    # 0.101f
        0x3ea5e354    # 0.324f
        0x3d8f5c29    # 0.07f
        0x3eef9db2    # 0.468f
        -0x447ced91    # -0.004f
        0x3eb0a3d7    # 0.345f
        -0x42604189    # -0.078f
        0x3eef9db2    # 0.468f
        -0x4220c49c    # -0.109f
        0x3ea5e354    # 0.324f
        -0x41ee978d    # -0.142f
        0x3e8bc6a8    # 0.273f
        -0x41ea7efa    # -0.146f
        0x3e49ba5e    # 0.197f
        -0x41ab020c    # -0.208f
        0x3e52f1aa    # 0.206f
        -0x41795810    # -0.263f
        0x3e418937    # 0.189f
        -0x416d9168    # -0.286f
        0x3e147ae1    # 0.145f
        -0x41604189    # -0.312f
        0x3dced917    # 0.101f
        -0x4165e354    # -0.301f
        0x3d449ba6    # 0.048f
        -0x4169fbe7    # -0.293f
        0x3a83126f    # 0.001f
        -0x4173b646    # -0.274f
        -0x42d3f7cf    # -0.042f
        -0x4176c8b4    # -0.268f
        -0x4253f7cf    # -0.084f
        -0x418624dd    # -0.244f
        -0x42083127    # -0.121f
        -0x4196872b    # -0.228f
        -0x41da1cac    # -0.162f
        -0x41b95810    # -0.194f
        -0x41be76c9    # -0.189f
        -0x41fced91    # -0.128f
        -0x41d2f1aa    # -0.169f
        -0x42083127    # -0.121f
        -0x4196872b    # -0.228f
        -0x42189375    # -0.113f
        -0x41558106    # -0.333f
        -0x4274bc6a    # -0.068f
        -0x413126e9    # -0.404f
    .end array-data

    .line 25
    :array_a1e
    .array-data 4
        -0x457ced91    # -0.001f
        -0x41472b02    # -0.361f
        0x3d6d9168    # 0.058f
        -0x414f5c29    # -0.345f
        0x3d99999a    # 0.075f
        -0x41ab020c    # -0.208f
        0x3dd4fdf4    # 0.104f
        -0x41c8b439    # -0.179f
        0x3df7ced9    # 0.121f
        -0x41ef9db2    # -0.141f
        0x3e072b02    # 0.132f
        -0x4224dd2f    # -0.107f
        0x3e10624e    # 0.141f
        -0x42624dd3    # -0.077f
        0x3e178d50    # 0.148f
        -0x42b74bc7    # -0.049f
        0x3e0d4fdf    # 0.138f
        -0x43645a1d    # -0.019f
        0x3e072b02    # 0.132f
        0x3ba3d70a    # 0.005f
        0x3e16872b    # 0.147f
        0x3cd4fdf4    # 0.026f
        0x3e16872b    # 0.147f
        0x3d4ccccd    # 0.05f
        0x3e1ba5e3    # 0.152f
        0x3d9ba5e3    # 0.076f
        0x3e16872b    # 0.147f
        0x3dd0e560    # 0.102f
        0x3e116873    # 0.142f
        0x3e051eb8    # 0.13f
        0x3e072b02    # 0.132f
        0x3e23d70a    # 0.16f
        0x3df3b646    # 0.119f
        0x3e449ba6    # 0.192f
        0x3ddd2f1b    # 0.108f
        0x3e75c28f    # 0.24f
        0x3dc49ba6    # 0.096f
        0x3ea6e979    # 0.326f
        0x3d6147ae    # 0.055f
        0x3ec39581    # 0.382f
        -0x457ced91    # -0.001f
        0x3ec49ba6    # 0.384f
        -0x4296872b    # -0.057f
        0x3ec39581    # 0.382f
        -0x42395810    # -0.097f
        0x3ea56042    # 0.323f
        -0x4220c49c    # -0.109f
        0x3e74bc6a    # 0.239f
        -0x420a3d71    # -0.12f
        0x3e428f5c    # 0.19f
        -0x41fbe76d    # -0.129f
        0x3e1db22d    # 0.154f
        -0x41ed9168    # -0.143f
        0x3e051eb8    # 0.13f
        -0x41e872b0    # -0.148f
        0x3dced917    # 0.101f
        -0x41e45a1d    # -0.152f
        0x3d9ba5e3    # 0.076f
        -0x41e978d5    # -0.147f
        0x3d48b439    # 0.049f
        -0x41e872b0    # -0.148f
        0x3cd4fdf4    # 0.026f
        -0x41f7ced9    # -0.133f
        0x3ba3d70a    # 0.005f
        -0x41f1a9fc    # -0.139f
        -0x43645a1d    # -0.019f
        -0x41e66666    # -0.15f
        -0x42b74bc7    # -0.049f
        -0x41ed9168    # -0.143f
        -0x42645a1d    # -0.076f
        -0x41f6c8b4    # -0.134f
        -0x4226e979    # -0.106f
        -0x420624dd    # -0.122f
        -0x41f0a3d7    # -0.14f
        -0x4228f5c3    # -0.105f
        -0x41c9ba5e    # -0.178f
        -0x42645a1d    # -0.076f
        -0x41af1aa0    # -0.204f
        -0x428a3d71    # -0.06f
        -0x414fdf3b    # -0.344f
    .end array-data

    .line 26
    :array_ac2
    .array-data 4
        -0x457ced91    # -0.001f
        -0x4143126f    # -0.369f
        0x3d8f5c29    # 0.07f
        -0x412b020c    # -0.416f
        0x3df3b646    # 0.119f
        -0x41526e98    # -0.339f
        0x3de978d5    # 0.114f
        -0x41b645a2    # -0.197f
        0x3e1db22d    # 0.154f
        -0x41c28f5c    # -0.185f
        0x3e2e147b    # 0.17f
        -0x41ed9168    # -0.143f
        0x3e3b645a    # 0.183f
        -0x4228f5c3    # -0.105f
        0x3e4dd2f2    # 0.201f
        -0x42666666    # -0.075f
        0x3e604189    # 0.219f
        -0x42cfdf3b    # -0.043f
        0x3e71a9fc    # 0.236f
        -0x43ec8b44    # -0.009f
        0x3e6353f8    # 0.222f
        0x3ce56042    # 0.028f
        0x3e48b439
        0x3d71a9fc    # 0.059f
        0x3e3a5e35    # 0.182f
        0x3db43958    # 0.088f
        0x3e374bc7    # 0.179f
        0x3df3b646    # 0.119f
        0x3e3020c5    # 0.172f
        0x3e1cac08    # 0.153f
        0x3e1ba5e3    # 0.152f
        0x3e395810    # 0.181f
        0x3e1db22d    # 0.154f
        0x3e76c8b4    # 0.241f
        0x3e147ae1    # 0.145f
        0x3ea0c49c    # 0.314f
        0x3deb851f    # 0.115f
        0x3ec49ba6    # 0.384f
        0x3d872b02    # 0.066f
        0x3ee66666    # 0.45f
        -0x457ced91    # -0.001f
        0x3ee66666    # 0.45f
        -0x4276c8b4    # -0.067f
        0x3ee66666    # 0.45f
        -0x4210624e    # -0.117f
        0x3ec5a1cb    # 0.386f
        -0x41eb851f    # -0.145f
        0x3e9fbe77    # 0.312f
        -0x41e147ae    # -0.155f
        0x3e76c8b4    # 0.241f
        -0x41e45a1d    # -0.152f
        0x3e374bc7    # 0.179f
        -0x41d0e560    # -0.171f
        0x3e1ba5e3    # 0.152f
        -0x41c8b439    # -0.179f
        0x3df3b646    # 0.119f
        -0x41c49ba6    # -0.183f
        0x3db22d0e    # 0.087f
        -0x41b74bc7
        0x3d71a9fc    # 0.059f
        -0x419cac08    # -0.222f
        0x3ce56042    # 0.028f
        -0x418e5604    # -0.236f
        -0x43ec8b44    # -0.009f
        -0x419fbe77    # -0.219f
        -0x42cfdf3b    # -0.043f
        -0x41b126e9    # -0.202f
        -0x426872b0    # -0.074f
        -0x41c5a1cb    # -0.182f
        -0x422b020c    # -0.104f
        -0x41d0e560    # -0.171f
        -0x41ee978d    # -0.142f
        -0x41e147ae    # -0.155f
        -0x41c39581    # -0.184f
        -0x421cac08    # -0.111f
        -0x41be76c9    # -0.189f
        -0x420a3d71    # -0.12f
        -0x4152f1aa    # -0.338f
        -0x426e978d    # -0.071f
        -0x412b851f    # -0.415f
    .end array-data

    .line 27
    :array_b66
    .array-data 4
        -0x447ced91    # -0.004f
        -0x4162d0e5    # -0.307f
        0x3d4ccccd    # 0.05f
        -0x41472b02    # -0.361f
        0x3df3b646    # 0.119f
        -0x4134bc6a    # -0.397f
        0x3e48b439
        -0x412d9168    # -0.411f
        0x3e83126f    # 0.256f
        -0x41400000    # -0.375f
        0x3e8ccccd    # 0.275f
        -0x4167ef9e    # -0.297f
        0x3e8c49ba    # 0.274f
        -0x419eb852    # -0.22f
        0x3e8ccccd    # 0.275f
        -0x41dc28f6    # -0.16f
        0x3e8ccccd    # 0.275f
        -0x4220c49c    # -0.109f
        0x3ea1cac1    # 0.316f
        -0x4272b021    # -0.069f
        0x3ea1cac1    # 0.316f
        -0x436c8b44    # -0.018f
        0x3ea3d70a    # 0.32f
        0x3d072b02    # 0.033f
        0x3e9fbe77    # 0.312f
        0x3dae147b    # 0.085f
        0x3e9a9fbe    # 0.302f
        0x3e0d4fdf    # 0.138f
        0x3e916873    # 0.284f
        0x3e439581    # 0.191f
        0x3e872b02    # 0.264f
        0x3e800000    # 0.25f
        0x3e6e978d    # 0.233f
        0x3e9d2f1b    # 0.307f
        0x3e0f5c29    # 0.14f
        0x3e872b02    # 0.264f
        0x3e0c49ba    # 0.137f
        0x3ed58106    # 0.417f
        0x3d851eb8    # 0.065f
        0x3ed60419    # 0.418f
        -0x447ced91    # -0.004f
        0x3ef4bc6a    # 0.478f
        -0x426a7efa    # -0.073f
        0x3ed60419    # 0.418f
        -0x41eb851f    # -0.145f
        0x3ed58106    # 0.417f
        -0x41ec8b44    # -0.144f
        0x3e839581    # 0.257f
        -0x418a3d71    # -0.24f
        0x3e9d2f1b    # 0.307f
        -0x4174bc6a    # -0.272f
        0x3e800000    # 0.25f
        -0x416b020c    # -0.291f
        0x3e439581    # 0.191f
        -0x4164dd2f    # -0.303f
        0x3e09374c    # 0.134f
        -0x415e353f    # -0.316f
        0x3da9fbe7    # 0.083f
        -0x415a1cac    # -0.324f
        0x3d072b02    # 0.033f
        -0x415a1cac    # -0.324f
        -0x436c8b44    # -0.018f
        -0x415c28f6    # -0.32f
        -0x4274bc6a    # -0.068f
        -0x417126e9    # -0.279f
        -0x4224dd2f    # -0.107f
        -0x417126e9    # -0.279f
        -0x41de353f    # -0.158f
        -0x417126e9    # -0.279f
        -0x41a0c49c    # -0.218f
        -0x4170a3d7    # -0.28f
        -0x416978d5    # -0.294f
        -0x417a5e35    # -0.261f
        -0x41418937    # -0.372f
        -0x41af1aa0    # -0.204f
        -0x412d9168    # -0.411f
        -0x41fdf3b6    # -0.127f
        -0x4134bc6a    # -0.397f
        -0x42926e98    # -0.058f
        -0x41472b02    # -0.361f
    .end array-data

    .line 28
    :array_c0a
    .array-data 4
        -0x4322d0e5    # -0.027f
        -0x416e978d    # -0.284f
        0x3cb43958    # 0.022f
        -0x4176c8b4    # -0.268f
        0x3e020c4a    # 0.127f
        -0x412353f8    # -0.431f
        0x3e126e98    # 0.143f
        -0x416b851f    # -0.29f
        0x3e27ef9e    # 0.164f
        -0x41a0c49c    # -0.218f
        0x3e333333    # 0.175f
        -0x41de353f    # -0.158f
        0x3e4ccccd    # 0.2f
        -0x42083127    # -0.121f
        0x3e6872b0    # 0.227f
        -0x4251eb85    # -0.085f
        0x3e810625    # 0.252f
        -0x42c39581    # -0.046f
        0x3e841893    # 0.258f
        -0x457ced91    # -0.001f
        0x3e3c6a7f    # 0.184f
        0x3d343958    # 0.044f
        0x3e54fdf4    # 0.208f
        0x3da5e354    # 0.081f
        0x3e75c28f    # 0.24f
        0x3e0624dd    # 0.131f
        0x3e841893    # 0.258f
        0x3e418937    # 0.189f
        0x3e5a1cac    # 0.213f
        0x3e604189    # 0.219f
        0x3e333333    # 0.175f
        0x3e7be76d    # 0.246f
        0x3e2e147b    # 0.17f
        0x3ea1cac1    # 0.316f
        0x3e10624e    # 0.141f
        0x3ec00000    # 0.375f
        0x3da7ef9e    # 0.082f
        0x3ec18937    # 0.378f
        0x3d23d70a    # 0.04f
        0x3eee147b    # 0.465f
        -0x4322d0e5    # -0.027f
        0x3eec8b44    # 0.462f
        -0x42439581    # -0.092f
        0x3ee9fbe7    # 0.457f
        -0x41d3f7cf    # -0.168f
        0x3ef53f7d    # 0.479f
        -0x41a5e354    # -0.213f
        0x3ed16873    # 0.409f
        -0x4190624e    # -0.234f
        0x3ea7ef9e    # 0.328f
        -0x41820c4a    # -0.248f
        0x3e87ae14    # 0.265f
        -0x417d70a4    # -0.255f
        0x3e560419    # 0.209f
        -0x417ae148    # -0.26f
        0x3e26e979    # 0.163f
        -0x417a5e35    # -0.261f
        0x3df5c28f    # 0.12f
        -0x417b645a    # -0.259f
        0x3da5e354    # 0.081f
        -0x417a5e35    # -0.261f
        0x3d343958    # 0.044f
        -0x417b645a    # -0.259f
        0x3be56042    # 0.007f
        -0x417a5e35    # -0.261f
        -0x42fced91    # -0.032f
        -0x417ae148    # -0.26f
        -0x42666666    # -0.075f
        -0x417a5e35    # -0.261f
        -0x41fef9db    # -0.126f
        -0x417ced91    # -0.256f
        -0x41c28f5c    # -0.185f
        -0x41800000    # -0.25f
        -0x4179db23    # -0.262f
        -0x41958106    # -0.229f
        -0x414b4396    # -0.353f
        -0x41bd70a4    # -0.19f
        -0x41160419    # -0.457f
        -0x426c8b44    # -0.072f
        -0x418c49ba    # -0.238f
    .end array-data

    .line 29
    :array_cae
    .array-data 4
        -0x457ced91    # -0.001f
        -0x413020c5    # -0.406f
        0x3d8f5c29    # 0.07f
        -0x4130a3d7    # -0.405f
        0x3def9db2    # 0.117f
        -0x415ba5e3    # -0.321f
        0x3e16872b    # 0.147f
        -0x41820c4a    # -0.248f
        0x3e333333    # 0.175f
        -0x41b33333    # -0.2f
        0x3e408312    # 0.188f
        -0x41e978d5    # -0.147f
        0x3e51eb85    # 0.205f
        -0x4222d0e5    # -0.108f
        0x3e4fdf3b    # 0.203f
        -0x428624dd    # -0.061f
        0x3e6872b0    # 0.227f
        -0x42fced91    # -0.032f
        0x3e75c28f    # 0.24f
        0x3b83126f    # 0.004f
        0x3e828f5c    # 0.255f
        0x3d2c0831    # 0.042f
        0x3e849ba6    # 0.259f
        0x3da9fbe7    # 0.083f
        0x3e7be76d    # 0.246f
        0x3dfbe76d    # 0.123f
        0x3e6b851f    # 0.23f
        0x3e23d70a    # 0.16f
        0x3e4ac083    # 0.198f
        0x3e3e76c9    # 0.186f
        0x3e4ed917    # 0.202f
        0x3e7ae148    # 0.245f
        0x3e3126e9    # 0.173f
        0x3e8fdf3b    # 0.281f
        0x3e27ef9e    # 0.164f
        0x3ebae148    # 0.365f
        0x3dfdf3b6    # 0.124f
        0x3eda1cac    # 0.426f
        0x3d79db23    # 0.061f
        0x3edcac08    # 0.431f
        -0x457ced91    # -0.001f
        0x3eda9fbe    # 0.427f
        -0x42820c4a    # -0.062f
        0x3edc28f6    # 0.43f
        -0x42000000    # -0.125f
        0x3ed91687    # 0.424f
        -0x41d70a3d    # -0.165f
        0x3eba5e35    # 0.364f
        -0x41d1eb85    # -0.17f
        0x3e8ccccd    # 0.275f
        -0x41b020c5    # -0.203f
        0x3e7ae148    # 0.245f
        -0x41b53f7d    # -0.198f
        0x3e3d70a4    # 0.185f
        -0x419374bc    # -0.231f
        0x3e23d70a    # 0.16f
        -0x4183126f    # -0.247f
        0x3df9db23    # 0.122f
        -0x417b645a    # -0.259f
        0x3da9fbe7    # 0.083f
        -0x417ced91    # -0.256f
        0x3d2c0831    # 0.042f
        -0x41883127    # -0.242f
        0x3b83126f    # 0.004f
        -0x41978d50    # -0.227f
        -0x43020c4a    # -0.031f
        -0x41af1aa0    # -0.204f
        -0x428624dd    # -0.061f
        -0x41ad0e56    # -0.206f
        -0x4224dd2f    # -0.107f
        -0x41be76c9    # -0.189f
        -0x41ea7efa    # -0.146f
        -0x41cbc6a8    # -0.176f
        -0x41b43958    # -0.199f
        -0x41e872b0    # -0.148f
        -0x4183126f    # -0.247f
        -0x420e5604    # -0.118f
        -0x415cac08    # -0.319f
        -0x426e978d    # -0.071f
        -0x4131a9fc    # -0.403f
    .end array-data

    .line 30
    :array_d52
    .array-data 4
        -0x44fced91    # -0.002f
        -0x4175c28f    # -0.27f
        0x3d27ef9e    # 0.041f
        -0x41a2d0e5    # -0.216f
        0x3e1a9fbe    # 0.151f
        -0x412a7efa    # -0.417f
        0x3e47ae14    # 0.195f
        -0x41560419    # -0.332f
        0x3e53f7cf    # 0.207f
        -0x41916873    # -0.233f
        0x3e9eb852    # 0.31f
        -0x417be76d    # -0.258f
        0x3ea76c8b    # 0.327f
        -0x41c39581    # -0.184f
        0x3ead9168    # 0.339f
        -0x420c49ba    # -0.119f
        0x3eb020c5    # 0.344f
        -0x42926e98    # -0.058f
        0x3eb0a3d7    # 0.345f
        -0x457ced91    # -0.001f
        0x3eb33333    # 0.35f
        0x3d5d2f1b    # 0.054f
        0x3eb2b021    # 0.349f
        0x3de147ae    # 0.11f
        0x3eb3b646    # 0.351f
        0x3e2d0e56    # 0.169f
        0x3eb126e9    # 0.346f
        0x3e6d9168    # 0.232f
        0x3eaf9db2    # 0.343f
        0x3e9c28f6    # 0.305f
        0x3eae978d    # 0.341f
        0x3ecb4396    # 0.397f
        0x3e26e979    # 0.163f
        0x3e90624e    # 0.282f
        0x3e0f5c29    # 0.14f
        0x3eaa7efa    # 0.333f
        0x3ded9168    # 0.116f
        0x3ed60419    # 0.418f
        0x3d851eb8    # 0.065f
        0x3ef53f7d    # 0.479f
        -0x44fced91    # -0.002f
        0x3eee147b    # 0.465f
        -0x4272b021    # -0.069f
        0x3ef53f7d    # 0.479f
        -0x420e5604    # -0.118f
        0x3ed26e98    # 0.411f
        -0x41f0a3d7    # -0.14f
        0x3ea6e979    # 0.326f
        -0x41d70a3d    # -0.165f
        0x3e8ed917    # 0.279f
        -0x4150e560    # -0.342f
        0x3ec9ba5e    # 0.394f
        -0x4150624e    # -0.343f
        0x3e9a9fbe    # 0.302f
        -0x414e5604    # -0.347f
        0x3e6b851f    # 0.23f
        -0x414c49ba    # -0.351f
        0x3e2c0831    # 0.168f
        -0x414d4fdf    # -0.349f
        0x3ddf3b64    # 0.109f
        -0x414ccccd    # -0.35f
        0x3d5d2f1b    # 0.054f
        -0x414f5c29    # -0.345f
        -0x80000000
        -0x414e5604    # -0.347f
        -0x42926e98    # -0.058f
        -0x4151eb85    # -0.34f
        -0x420e5604    # -0.118f
        -0x41589375    # -0.327f
        -0x41c5a1cb    # -0.182f
        -0x4160c49c    # -0.311f
        -0x417d70a4    # -0.255f
        -0x4170a3d7    # -0.28f
        -0x41581062    # -0.328f
        -0x41b43958    # -0.199f
        -0x41560419    # -0.332f
        -0x41e147ae    # -0.155f
        -0x412a7efa    # -0.417f
        -0x42c7ae14    # -0.045f
        -0x419eb852    # -0.22f
    .end array-data

    .line 31
    :array_df6
    .array-data 4
        -0x457ced91    # -0.001f
        -0x41374bc7    # -0.392f
        0x3d8d4fdf    # 0.069f
        -0x41395810    # -0.388f
        0x3deb851f    # 0.115f
        -0x41656042    # -0.302f
        0x3e10624e    # 0.141f
        -0x4199999a    # -0.225f
        0x3e2e147b    # 0.17f
        -0x41c6a7f0    # -0.181f
        0x3e3d70a4    # 0.185f
        -0x41f8d4fe    # -0.132f
        0x3e47ae14    # 0.195f
        -0x424bc6a8    # -0.088f
        0x3e48b439
        -0x42bf7cee    # -0.047f
        0x3e3c6a7f    # 0.184f
        -0x441a9fbe    # -0.007f
        0x3e570a3d    # 0.21f
        0x3ca3d70a    # 0.02f
        0x3e676c8b    # 0.226f
        0x3d5d2f1b    # 0.054f
        0x3e76c8b4    # 0.241f
        0x3dbc6a7f    # 0.092f
        0x3e71a9fc    # 0.236f
        0x3e051eb8    # 0.13f
        0x3e6872b0    # 0.227f
        0x3e2e147b    # 0.17f
        0x3e47ae14    # 0.195f
        0x3e47ae14    # 0.195f
        0x3e51eb85    # 0.205f
        0x3e849ba6    # 0.259f
        0x3e3b645a    # 0.183f
        0x3e9cac08    # 0.306f
        0x3e25e354    # 0.162f
        0x3ebe76c9    # 0.372f
        0x3e020c4a    # 0.127f
        0x3ee4dd2f    # 0.447f
        0x3d7df3b6    # 0.062f
        0x3ee4dd2f    # 0.447f
        -0x457ced91    # -0.001f
        0x3edd2f1b    # 0.432f
        -0x427ef9db    # -0.063f
        0x3ee4dd2f    # 0.447f
        -0x41fbe76d    # -0.129f
        0x3ee4dd2f    # 0.447f
        -0x41d91687    # -0.163f
        0x3ebe76c9    # 0.372f
        -0x41c39581    # -0.184f
        0x3e9cac08    # 0.306f
        -0x41ad0e56    # -0.206f
        0x3e849ba6    # 0.259f
        -0x41b851ec    # -0.195f
        0x3e47ae14    # 0.195f
        -0x4196872b    # -0.228f
        0x3e2d0e56    # 0.169f
        -0x418e5604    # -0.236f
        0x3e051eb8    # 0.13f
        -0x4189374c    # -0.241f
        0x3dbc6a7f    # 0.092f
        -0x41989375    # -0.226f
        0x3d5d2f1b    # 0.054f
        -0x41a7ef9e    # -0.211f
        0x3ca3d70a    # 0.02f
        -0x41c39581    # -0.184f
        -0x443b645a    # -0.006f
        -0x41b851ec    # -0.195f
        -0x42c39581    # -0.046f
        -0x41b851ec    # -0.195f
        -0x424bc6a8    # -0.088f
        -0x41c18937    # -0.186f
        -0x41f8d4fe    # -0.132f
        -0x41d1eb85    # -0.17f
        -0x41c7ae14    # -0.18f
        -0x41ee978d    # -0.142f
        -0x4199999a    # -0.225f
        -0x42147ae1    # -0.115f
        -0x41676c8b    # -0.298f
        -0x4270a3d7    # -0.07f
        -0x4139db23    # -0.387f
    .end array-data

    .line 32
    :array_e9a
    .array-data 4
        -0x457ced91    # -0.001f
        -0x41126e98    # -0.464f
        0x3d656042    # 0.056f
        -0x414bc6a8    # -0.352f
        0x3e041893    # 0.129f
        -0x41395810    # -0.388f
        0x3e21cac1    # 0.158f
        -0x4165e354    # -0.301f
        0x3e828f5c    # 0.255f
        -0x41516873    # -0.341f
        0x3e8fdf3b    # 0.281f
        -0x41753f7d    # -0.271f
        0x3e991687    # 0.299f
        -0x41ac0831    # -0.207f
        0x3ea0c49c    # 0.314f
        -0x41e66666    # -0.15f
        0x3ea5e354    # 0.324f
        -0x423d70a4    # -0.095f
        0x3ea76c8b    # 0.327f
        -0x42d81062    # -0.041f
        0x3ea76c8b    # 0.327f
        0x3c343958    # 0.011f
        0x3ea76c8b    # 0.327f
        0x3d810625    # 0.063f
        0x3ea7ef9e    # 0.328f
        0x3df1a9fc    # 0.118f
        0x3e6353f8    # 0.222f
        0x3dfdf3b6    # 0.124f
        0x3e6872b0    # 0.227f
        0x3e343958    # 0.176f
        0x3e676c8b    # 0.226f
        0x3e72b021    # 0.237f
        0x3e676c8b    # 0.226f
        0x3ea5e354    # 0.324f
        0x3e5e353f    # 0.217f
        0x3ee0c49c    # 0.439f
        0x3e072b02    # 0.132f
        0x3ed78d50    # 0.421f
        0x3d916873    # 0.071f
        0x3eef9db2    # 0.468f
        -0x457ced91    # -0.001f
        0x3ecbc6a8    # 0.398f
        -0x426872b0    # -0.074f
        0x3ef0a3d7    # 0.47f
        -0x41f6c8b4    # -0.134f
        0x3ed78d50    # 0.421f
        -0x41a0c49c    # -0.218f
        0x3edfbe77    # 0.437f
        -0x41989375    # -0.226f
        0x3ea45a1d    # 0.321f
        -0x41989375    # -0.226f
        0x3e71a9fc    # 0.236f
        -0x4199999a    # -0.225f
        0x3e322d0e    # 0.174f
        -0x419cac08    # -0.222f
        0x3dfdf3b6    # 0.124f
        -0x41581062    # -0.328f
        0x3def9db2    # 0.117f
        -0x41589375    # -0.327f
        0x3d810625    # 0.063f
        -0x41589375    # -0.327f
        0x3c343958    # 0.011f
        -0x41589375    # -0.327f
        -0x42d81062    # -0.041f
        -0x415a1cac    # -0.324f
        -0x423f7cee    # -0.094f
        -0x415f3b64    # -0.314f
        -0x41e76c8b    # -0.149f
        -0x41666666    # -0.3f
        -0x41ad0e56    # -0.206f
        -0x417020c5    # -0.281f
        -0x417645a2    # -0.269f
        -0x417c6a7f    # -0.257f
        -0x41516873    # -0.341f
        -0x41de353f    # -0.158f
        -0x4167ef9e    # -0.297f
        -0x41fae148    # -0.13f
        -0x4139db23    # -0.387f
        -0x42926e98    # -0.058f
        -0x414bc6a8    # -0.352f
    .end array-data

    .line 33
    :array_f3e
    .array-data 4
        0x3c03126f    # 0.008f
        -0x4109374c    # -0.482f
        0x3d8f5c29    # 0.07f
        -0x4133b646    # -0.399f
        0x3ded9168    # 0.116f
        -0x41526e98    # -0.339f
        0x3dcccccd    # 0.1f
        -0x41c18937    # -0.186f
        0x3de76c8b    # 0.113f
        -0x41e66666    # -0.15f
        0x3e158106    # 0.146f
        -0x41ed9168    # -0.143f
        0x3e3d70a4    # 0.185f
        -0x41f6c8b4    # -0.134f
        0x3e8b4396    # 0.272f
        -0x41f0a3d7    # -0.14f
        0x3ea3d70a    # 0.32f
        -0x4226e979    # -0.106f
        0x3ea1cac1    # 0.316f
        -0x42a2d0e5    # -0.054f
        0x3ea04189    # 0.313f
        -0x445c28f6    # -0.005f
        0x3ea1cac1    # 0.316f
        0x3d343958    # 0.044f
        0x3e9c28f6    # 0.305f
        0x3dbc6a7f    # 0.092f
        0x3e7ae148    # 0.245f
        0x3ded9168    # 0.116f
        0x3dc49ba6    # 0.096f
        0x3d71a9fc    # 0.059f
        0x3dfdf3b6    # 0.124f
        0x3de353f8    # 0.111f
        0x3e1eb852    # 0.155f
        0x3e49ba5e    # 0.197f
        0x3e3645a2    # 0.178f
        0x3ea872b0    # 0.329f
        0x3de56042    # 0.112f
        0x3ea0c49c    # 0.314f
        0x3d810625    # 0.063f
        0x3eaf1aa0    # 0.342f
        0x3c03126f    # 0.008f
        0x3ebd70a4    # 0.37f
        -0x42bf7cee    # -0.047f
        0x3eaf1aa0    # 0.342f
        -0x41e978d5    # -0.147f
        0x3ef0a3d7    # 0.47f
        -0x41e147ae    # -0.155f
        0x3ea147ae    # 0.315f
        -0x42083127    # -0.121f
        0x3e3020c5    # 0.172f
        -0x42439581    # -0.092f
        0x3dc08312    # 0.094f
        -0x426872b0    # -0.074f
        0x3d6147ae    # 0.055f
        -0x41958106    # -0.229f
        0x3ded9168    # 0.116f
        -0x416c0831    # -0.289f
        0x3dbc6a7f    # 0.092f
        -0x4169fbe7    # -0.293f
        0x3d3020c5    # 0.043f
        -0x4167ef9e    # -0.297f
        -0x445c28f6    # -0.005f
        -0x4169fbe7    # -0.293f
        -0x42a6e979    # -0.053f
        -0x4167ef9e    # -0.297f
        -0x422b020c    # -0.104f
        -0x417c6a7f    # -0.257f
        -0x41f0a3d7    # -0.14f
        -0x41d91687    # -0.163f
        -0x41fbe76d    # -0.129f
        -0x41fae148    # -0.13f
        -0x41ed9168    # -0.143f
        -0x42418937    # -0.093f
        -0x41ec8b44    # -0.144f
        -0x4253f7cf    # -0.084f
        -0x41c18937    # -0.186f
        -0x425a1cac    # -0.081f
        -0x4170a3d7    # -0.28f
        -0x42820c4a    # -0.062f
        -0x411c28f6    # -0.445f
    .end array-data

    .line 34
    :array_fe2
    .array-data 4
        0x3c54fdf4    # 0.013f
        -0x410bc6a8    # -0.477f
        0x3d9fbe77    # 0.078f
        -0x41624dd3    # -0.308f
        0x3e010625    # 0.126f
        -0x41820c4a    # -0.248f
        0x3e0c49ba    # 0.137f
        -0x41ed9168    # -0.143f
        0x3e7ced91    # 0.247f
        -0x419db22d    # -0.221f
        0x3e8bc6a8    # 0.273f
        -0x41dd2f1b    # -0.159f
        0x3e8e5604    # 0.278f
        -0x42439581    # -0.092f
        0x3e8dd2f2    # 0.277f
        -0x42f4bc6a    # -0.034f
        0x3e8f5c29    # 0.28f
        0x3c656042    # 0.014f
        0x3e8ccccd    # 0.275f
        0x3d71a9fc    # 0.059f
        0x3e8ed917    # 0.279f
        0x3dced917    # 0.101f
        0x3e94fdf4    # 0.291f
        0x3e147ae1    # 0.145f
        0x3e9b22d1    # 0.303f
        0x3e47ae14    # 0.195f
        0x3e989375    # 0.298f
        0x3e7be76d    # 0.246f
        0x3e9ba5e3    # 0.304f
        0x3e9fbe77    # 0.312f
        0x3e8e5604    # 0.278f
        0x3ebb645a    # 0.366f
        0x3e883127    # 0.266f
        0x3ee5e354    # 0.449f
        0x3e4dd2f2    # 0.201f
        0x3ef0a3d7    # 0.47f
        0x3ddb22d1    # 0.107f
        0x3ec83127    # 0.391f
        0x3d9374bc    # 0.072f
        0x3ef126e9    # 0.471f
        0x3c54fdf4    # 0.013f
        0x3ef3b646    # 0.476f
        -0x42c39581    # -0.046f
        0x3ef126e9    # 0.471f
        -0x42645a1d    # -0.076f
        0x3ec08312    # 0.376f
        -0x41cccccd    # -0.175f
        0x3ef0a3d7    # 0.47f
        -0x41989375    # -0.226f
        0x3edc28f6    # 0.43f
        -0x4183126f    # -0.247f
        0x3eb8d4fe    # 0.361f
        -0x41753f7d    # -0.271f
        0x3e9db22d    # 0.308f
        -0x4174bc6a    # -0.272f
        0x3e7be76d    # 0.246f
        -0x417645a2    # -0.269f
        0x3e45a1cb    # 0.193f
        -0x417851ec    # -0.265f
        0x3e147ae1    # 0.145f
        -0x41851eb8    # -0.245f
        0x3dced917    # 0.101f
        -0x41810625    # -0.249f
        0x3d71a9fc    # 0.059f
        -0x4183126f    # -0.247f
        0x3c83126f    # 0.016f
        -0x41851eb8    # -0.245f
        -0x430a3d71    # -0.03f
        -0x418a3d71    # -0.24f
        -0x42560419    # -0.083f
        -0x418e5604    # -0.236f
        -0x41e872b0    # -0.148f
        -0x41a6e979    # -0.212f
        -0x41a9fbe7    # -0.209f
        -0x422b020c    # -0.104f
        -0x41fbe76d    # -0.129f
        -0x42418937    # -0.093f
        -0x41989375    # -0.226f
        -0x42bf7cee    # -0.047f
        -0x41722d0e    # -0.277f
    .end array-data

    .line 35
    :array_1086
    .array-data 4
        -0x44fced91    # -0.002f
        -0x4123d70a    # -0.43f
        0x3d5d2f1b    # 0.054f
        -0x413df3b6    # -0.379f
        0x3e147ae1    # 0.145f
        -0x410bc6a8    # -0.477f
        0x3e3e76c9    # 0.186f
        -0x4136c8b4    # -0.393f
        0x3e4ac083    # 0.198f
        -0x4166e979    # -0.299f
        0x3e49ba5e    # 0.197f
        -0x419ba5e3    # -0.223f
        0x3e49ba5e    # 0.197f
        -0x41d2f1aa    # -0.169f
        0x3e4ccccd    # 0.2f
        -0x41fdf3b6    # -0.127f
        0x3e4bc6a8    # 0.199f
        -0x4249ba5e    # -0.089f
        0x3e4bc6a8    # 0.199f
        -0x429a9fbe    # -0.056f
        0x3e49ba5e    # 0.197f
        -0x433b645a    # -0.024f
        0x3e4bc6a8    # 0.199f
        0x3c03126f    # 0.008f
        0x3e439581    # 0.191f
        0x3d1fbe77    # 0.039f
        0x3e418937    # 0.189f
        0x3d978d50    # 0.074f
        0x3e3645a2    # 0.178f
        0x3ddb22d1    # 0.107f
        0x3e27ef9e    # 0.164f
        0x3e116873    # 0.142f
        0x3d978d50    # 0.074f
        0x3da3d70a    # 0.08f
        0x3dc6a7f0    # 0.097f
        0x3e2f1aa0    # 0.171f
        0x3d99999a    # 0.075f
        0x3e5b22d1    # 0.214f
        0x3d75c28f    # 0.06f
        0x3ebd70a4    # 0.37f
        -0x44fced91    # -0.002f
        0x3ee3d70a    # 0.445f
        -0x4276c8b4    # -0.067f
        0x3ec51eb8    # 0.385f
        -0x425c28f6    # -0.08f
        0x3e5f3b64    # 0.218f
        -0x423b645a    # -0.096f
        0x3e24dd2f    # 0.161f
        -0x42666666    # -0.075f
        0x3d9db22d    # 0.077f
        -0x41d70a3d    # -0.165f
        0x3e0e5604    # 0.139f
        -0x41c8b439    # -0.179f
        0x3dd70a3d    # 0.105f
        -0x41bd70a4    # -0.19f
        0x3d9374bc    # 0.072f
        -0x41b851ec    # -0.195f
        0x3d1fbe77    # 0.039f
        -0x41b43958    # -0.199f
        0x3be56042    # 0.007f
        -0x41b645a2    # -0.197f
        -0x433b645a    # -0.024f
        -0x41b43958    # -0.199f
        -0x429eb852    # -0.055f
        -0x41b43958    # -0.199f
        -0x424bc6a8    # -0.088f
        -0x41b33333    # -0.2f
        -0x42000000    # -0.125f
        -0x41b53f7d    # -0.198f
        -0x41d60419    # -0.166f
        -0x41b53f7d    # -0.198f
        -0x419eb852    # -0.22f
        -0x41b645a2    # -0.197f
        -0x4169fbe7    # -0.293f
        -0x41c18937    # -0.186f
        -0x413a5e35    # -0.386f
        -0x41e76c8b    # -0.149f
        -0x410bc6a8    # -0.477f
        -0x429eb852    # -0.055f
        -0x4149ba5e    # -0.356f
    .end array-data

    .line 36
    :array_112a
    .array-data 4
        -0x447ced91    # -0.004f
        -0x41266666    # -0.425f
        0x3d408312    # 0.047f
        -0x4150e560    # -0.342f
        0x3d9db22d    # 0.077f
        -0x41753f7d    # -0.271f
        0x3e47ae14    # 0.195f
        -0x412d0e56    # -0.412f
        0x3e570a3d    # 0.21f
        -0x415e353f    # -0.316f
        0x3e560419    # 0.209f
        -0x418f5c29    # -0.235f
        0x3e54fdf4    # 0.208f
        -0x41cbc6a8    # -0.176f
        0x3e591687    # 0.212f
        -0x41f8d4fe    # -0.132f
        0x3e54fdf4    # 0.208f
        -0x4245a1cb    # -0.091f
        0x3e54fdf4    # 0.208f
        -0x429a9fbe    # -0.056f
        0x3e581062    # 0.211f
        -0x434bc6a8    # -0.022f
        0x3e54fdf4    # 0.208f
        0x3c343958    # 0.011f
        0x3e50e560    # 0.204f
        0x3d3851ec    # 0.045f
        0x3e4ac083    # 0.198f
        0x3da5e354    # 0.081f
        0x3e3e76c9    # 0.186f
        0x3ded9168    # 0.116f
        0x3e2b020c    # 0.167f
        0x3e189375    # 0.149f
        0x3d978d50    # 0.074f
        0x3dae147b    # 0.085f
        0x3de76c8b    # 0.113f
        0x3e54fdf4    # 0.208f
        0x3d99999a    # 0.075f
        0x3e604189    # 0.219f
        0x3d71a9fc    # 0.059f
        0x3ec00000    # 0.375f
        -0x447ced91    # -0.004f
        0x3ee2d0e5    # 0.443f
        -0x4274bc6a    # -0.068f
        0x3ec41893    # 0.383f
        -0x42581062    # -0.082f
        0x3e604189    # 0.219f
        -0x42126e98    # -0.116f
        0x3e49ba5e    # 0.197f
        -0x42624dd3    # -0.077f
        0x3da1cac1    # 0.079f
        -0x41cfdf3b    # -0.172f
        0x3e158106    # 0.146f
        -0x41bd70a4    # -0.19f
        0x3de76c8b    # 0.113f
        -0x41b126e9    # -0.202f
        0x3da1cac1    # 0.079f
        -0x41ab020c    # -0.208f
        0x3d343958    # 0.044f
        -0x41a6e979    # -0.212f
        0x3c343958    # 0.011f
        -0x41a7ef9e    # -0.211f
        -0x434bc6a8    # -0.022f
        -0x41a6e979    # -0.212f
        -0x429eb852    # -0.055f
        -0x41a6e979    # -0.212f
        -0x4247ae14    # -0.09f
        -0x41a2d0e5    # -0.216f
        -0x41fae148    # -0.13f
        -0x41a6e979    # -0.212f
        -0x41cdd2f2    # -0.174f
        -0x41a4dd2f    # -0.214f
        -0x41926e98    # -0.232f
        -0x41a5e354    # -0.213f
        -0x416147ae    # -0.31f
        -0x41b43958    # -0.199f
        -0x4130a3d7    # -0.405f
        -0x425a1cac    # -0.081f
        -0x417ae148    # -0.26f
        -0x42a2d0e5    # -0.054f
        -0x41526e98    # -0.339f
    .end array-data

    .line 37
    :array_11ce
    .array-data 4
        -0x80000000
        -0x4119999a    # -0.45f
        0x3d83126f    # 0.064f
        -0x4143126f    # -0.369f
        0x3ddd2f1b    # 0.108f
        -0x416872b0    # -0.296f
        0x3e0a3d71    # 0.135f
        -0x41989375    # -0.226f
        0x3e2b020c    # 0.167f
        -0x41bb645a    # -0.192f
        0x3e3851ec    # 0.18f
        -0x41ee978d    # -0.142f
        0x3e48b439
        -0x4228f5c3    # -0.105f
        0x3e6147ae    # 0.22f
        -0x426872b0    # -0.074f
        0x3e666666    # 0.225f
        -0x42f0a3d7    # -0.035f
        0x3e5e353f    # 0.217f
        0x3b83126f    # 0.004f
        0x3e5c28f6    # 0.215f
        0x3d1ba5e3    # 0.038f
        0x3e4ed917    # 0.202f
        0x3d8f5c29    # 0.07f
        0x3e4ccccd    # 0.2f
        0x3dd4fdf4    # 0.104f
        0x3e4dd2f2    # 0.201f
        0x3e10624e    # 0.141f
        0x3e3645a2    # 0.178f
        0x3e2b020c    # 0.167f
        0x3e4dd2f2    # 0.201f
        0x3e74bc6a    # 0.239f
        0x3e46a7f0    # 0.194f
        0x3e9c28f6    # 0.305f
        0x3e2e147b    # 0.17f
        0x3ebe76c9    # 0.372f
        0x3df3b646    # 0.119f
        0x3eced917    # 0.404f
        0x3d83126f    # 0.064f
        0x3ee24dd3    # 0.442f
        -0x80000000
        0x3ee5e354    # 0.449f
        -0x427ced91    # -0.064f
        0x3ee24dd3    # 0.442f
        -0x420c49ba    # -0.119f
        0x3ecdd2f2    # 0.402f
        -0x41d1eb85    # -0.17f
        0x3ebdf3b6    # 0.371f
        -0x41b95810    # -0.194f
        0x3e9c28f6    # 0.305f
        -0x41b33333    # -0.2f
        0x3e73b646    # 0.238f
        -0x41c9ba5e    # -0.178f
        0x3e2b020c    # 0.167f
        -0x41b33333    # -0.2f
        0x3e0f5c29    # 0.14f
        -0x41b22d0e    # -0.201f
        0x3dd4fdf4    # 0.104f
        -0x41b126e9    # -0.202f
        0x3d8f5c29    # 0.07f
        -0x41a4dd2f    # -0.214f
        0x3d1ba5e3    # 0.038f
        -0x41a3d70a    # -0.215f
        0x3b83126f    # 0.004f
        -0x419a9fbe    # -0.224f
        -0x42f4bc6a    # -0.034f
        -0x419eb852    # -0.22f
        -0x426a7efa    # -0.073f
        -0x41b74bc7
        -0x422b020c    # -0.104f
        -0x41c7ae14    # -0.18f
        -0x41ef9db2    # -0.141f
        -0x41d4fdf4    # -0.167f
        -0x41bc6a7f    # -0.191f
        -0x41f5c28f    # -0.135f
        -0x4199999a    # -0.225f
        -0x4222d0e5    # -0.108f
        -0x416978d5    # -0.294f
        -0x427ae148    # -0.065f
        -0x41439581    # -0.368f
    .end array-data

    .line 38
    :array_1272
    .array-data 4
        -0x447ced91    # -0.004f
        -0x4134bc6a    # -0.397f
        0x3d6147ae    # 0.055f
        -0x413ae148    # -0.385f
        0x3d958106    # 0.073f
        -0x41820c4a    # -0.248f
        0x3e6b851f    # 0.23f
        -0x410f5c29    # -0.47f
        0x3e87ae14    # 0.265f
        -0x413d70a4    # -0.38f
        0x3e8fdf3b    # 0.281f
        -0x4168f5c3    # -0.295f
        0x3e92f1aa    # 0.287f
        -0x419cac08    # -0.222f
        0x3e958106    # 0.292f
        -0x41db22d1    # -0.161f
        0x3e960419    # 0.293f
        -0x4224dd2f    # -0.107f
        0x3e960419    # 0.293f
        -0x42926e98    # -0.058f
        0x3e960419    # 0.293f
        -0x43cbc6a8    # -0.011f
        0x3e960419    # 0.293f
        0x3d178d50    # 0.037f
        0x3e947ae1    # 0.29f
        0x3dae147b    # 0.085f
        0x3e9374bc    # 0.288f
        0x3e0d4fdf    # 0.138f
        0x3e92f1aa    # 0.287f
        0x3e4dd2f2    # 0.201f
        0x3df5c28f    # 0.12f
        0x3de978d5    # 0.114f
        0x3dd4fdf4    # 0.104f
        0x3e0d4fdf    # 0.138f
        0x3db43958    # 0.088f
        0x3e2e147b    # 0.17f
        0x3d79db23    # 0.061f
        0x3e428f5c    # 0.19f
        0x3d89374c    # 0.067f
        0x3edfbe77    # 0.437f
        -0x447ced91    # -0.004f
        0x3ee872b0    # 0.454f
        -0x42624dd3    # -0.077f
        0x3ee5e354    # 0.449f
        -0x4272b021    # -0.069f
        0x3e428f5c    # 0.19f
        -0x42418937    # -0.093f
        0x3e27ef9e    # 0.164f
        -0x4224dd2f    # -0.107f
        0x3e072b02    # 0.132f
        -0x41722d0e    # -0.277f
        0x3e86a7f0    # 0.263f
        -0x416b020c    # -0.291f
        0x3e4ac083    # 0.198f
        -0x4169fbe7    # -0.293f
        0x3e0c49ba    # 0.137f
        -0x416978d5    # -0.294f
        0x3dac0831    # 0.084f
        -0x4167ef9e    # -0.297f
        0x3d1374bc    # 0.036f
        -0x4165e354    # -0.301f
        -0x43cbc6a8    # -0.011f
        -0x4167ef9e    # -0.297f
        -0x4296872b    # -0.057f
        -0x4167ef9e    # -0.297f
        -0x4226e979    # -0.106f
        -0x416872b0    # -0.296f
        -0x41dd2f1b    # -0.159f
        -0x416b020c    # -0.291f
        -0x419fbe77    # -0.219f
        -0x416f1aa0    # -0.283f
        -0x416c0831    # -0.289f
        -0x4175c28f    # -0.27f
        -0x413ef9db    # -0.377f
        -0x418c49ba    # -0.238f
        -0x410f5c29    # -0.47f
        -0x425c28f6    # -0.08f
        -0x41851eb8    # -0.245f
        -0x42820c4a    # -0.062f
        -0x413ef9db    # -0.377f
    .end array-data

    .line 39
    :array_1316
    .array-data 4
        -0x447ced91    # -0.004f
        -0x41343958    # -0.398f
        0x3d5d2f1b    # 0.054f
        -0x41408312    # -0.374f
        0x3dae147b    # 0.085f
        -0x416f9db2    # -0.282f
        0x3e72b021    # 0.237f
        -0x410a3d71    # -0.48f
        0x3e8d4fdf    # 0.276f
        -0x4136c8b4    # -0.393f
        0x3e96872b    # 0.294f
        -0x4163d70a    # -0.305f
        0x3e991687    # 0.299f
        -0x41978d50    # -0.227f
        0x3e9a9fbe    # 0.302f
        -0x41d91687    # -0.163f
        0x3e9db22d    # 0.308f
        -0x4222d0e5    # -0.108f
        0x3e9c28f6    # 0.305f
        -0x429a9fbe    # -0.056f
        0x3e9c28f6    # 0.305f
        -0x441a9fbe    # -0.007f
        0x3e9c28f6    # 0.305f
        0x3d2c0831    # 0.042f
        0x3e9ba5e3    # 0.304f
        0x3dbe76c9    # 0.093f
        0x3e991687    # 0.299f
        0x3e16872b    # 0.147f
        0x3e991687    # 0.299f
        0x3e5a1cac    # 0.213f
        0x3e0624dd    # 0.131f
        0x3e03126f    # 0.128f
        0x3e000000    # 0.125f
        0x3e2e147b    # 0.17f
        0x3df5c28f    # 0.12f
        0x3e72b021    # 0.237f
        0x3de353f8    # 0.111f
        0x3eb126e9    # 0.346f
        0x3d8b4396    # 0.068f
        0x3ee353f8    # 0.444f
        -0x447ced91    # -0.004f
        0x3eea7efa    # 0.458f
        -0x42624dd3    # -0.077f
        0x3ee76c8b    # 0.452f
        -0x42418937    # -0.093f
        0x3e89374c    # 0.268f
        -0x42020c4a    # -0.124f
        0x3e6b851f    # 0.23f
        -0x41fae148    # -0.13f
        0x3e2b020c    # 0.167f
        -0x41f1a9fc    # -0.139f
        0x3e03126f    # 0.128f
        -0x41645a1d    # -0.304f
        0x3e581062    # 0.211f
        -0x4164dd2f    # -0.303f
        0x3e147ae1    # 0.145f
        -0x4161cac1    # -0.309f
        0x3dbc6a7f    # 0.092f
        -0x4161cac1    # -0.309f
        0x3d27ef9e    # 0.041f
        -0x41604189    # -0.312f
        -0x441a9fbe    # -0.007f
        -0x4161cac1    # -0.309f
        -0x429eb852    # -0.055f
        -0x41604189    # -0.312f
        -0x4224dd2f    # -0.107f
        -0x4162d0e5    # -0.307f
        -0x41db22d1    # -0.161f
        -0x41645a1d    # -0.304f
        -0x4199999a    # -0.225f
        -0x4166e979    # -0.299f
        -0x4164dd2f    # -0.303f
        -0x417126e9    # -0.279f
        -0x413a5e35    # -0.386f
        -0x41851eb8    # -0.245f
        -0x410a3d71    # -0.48f
        -0x42418937    # -0.093f
        -0x416f9db2    # -0.282f
        -0x428a3d71    # -0.06f
        -0x4146a7f0    # -0.362f
    .end array-data

    .line 40
    :array_13ba
    .array-data 4
        -0x44fced91    # -0.002f
        -0x4119999a    # -0.45f
        0x3d7df3b6    # 0.062f
        -0x414ac083    # -0.354f
        0x3dd2f1aa    # 0.103f
        -0x4174bc6a    # -0.272f
        0x3e0f5c29    # 0.14f
        -0x4196872b    # -0.228f
        0x3e3645a2    # 0.178f
        -0x41b645a2    # -0.197f
        0x3e47ae14    # 0.195f
        -0x41e978d5    # -0.147f
        0x3e6147ae    # 0.22f
        -0x421a9fbe    # -0.112f
        0x3e72b021    # 0.237f
        -0x426c8b44    # -0.072f
        0x3e7ced91    # 0.247f
        -0x42fced91    # -0.032f
        0x3e810625    # 0.252f
        0x3c1374bc    # 0.009f
        0x3e8624dd    # 0.262f
        0x3d48b439    # 0.049f
        0x3e851eb8    # 0.26f
        0x3dba5e35    # 0.091f
        0x3e7be76d    # 0.246f
        0x3e051eb8    # 0.13f
        0x3e7ced91    # 0.247f
        0x3e343958    # 0.176f
        0x3e76c8b4    # 0.241f
        0x3e666666    # 0.225f
        0x3e604189    # 0.219f
        0x3e8a3d71    # 0.27f
        0x3e439581    # 0.191f
        0x3ea0c49c    # 0.314f
        0x3e1cac08    # 0.153f
        0x3eb4bc6a    # 0.353f
        0x3de147ae    # 0.11f
        0x3ec8b439    # 0.392f
        0x3d6d9168    # 0.058f
        0x3ed91687    # 0.424f
        -0x44fced91    # -0.002f
        0x3ed374bc    # 0.413f
        -0x42820c4a    # -0.062f
        0x3edb22d1    # 0.428f
        -0x42189375    # -0.113f
        0x3ec8b439    # 0.392f
        -0x41e04189    # -0.156f
        0x3eb43958    # 0.352f
        -0x41ba5e35    # -0.193f
        0x3ea04189    # 0.313f
        -0x419db22d    # -0.221f
        0x3e89ba5e    # 0.269f
        -0x41872b02    # -0.243f
        0x3e656042    # 0.224f
        -0x41800000    # -0.25f
        0x3e343958    # 0.176f
        -0x41810625    # -0.249f
        0x3e051eb8    # 0.13f
        -0x4179db23    # -0.262f
        0x3dba5e35    # 0.091f
        -0x417851ec    # -0.265f
        0x3d48b439    # 0.049f
        -0x417d70a4    # -0.255f
        0x3c1374bc    # 0.009f
        -0x41800000    # -0.25f
        -0x43020c4a    # -0.031f
        -0x418b4396    # -0.239f
        -0x426c8b44    # -0.072f
        -0x419cac08    # -0.222f
        -0x421cac08    # -0.111f
        -0x41b645a2    # -0.197f
        -0x41ea7efa    # -0.146f
        -0x41c7ae14    # -0.18f
        -0x41b74bc7
        -0x41ed9168    # -0.143f
        -0x4196872b    # -0.228f
        -0x4228f5c3    # -0.105f
        -0x4175c28f    # -0.27f
        -0x427ae148    # -0.065f
        -0x414bc6a8    # -0.352f
    .end array-data

    .line 41
    :array_145e
    .array-data 4
        -0x44fced91    # -0.002f
        -0x412147ae    # -0.435f
        0x3d50e560    # 0.051f
        -0x415374bc    # -0.337f
        0x3dced917    # 0.101f
        -0x415ba5e3    # -0.321f
        0x3e6147ae    # 0.22f
        -0x411e353f    # -0.441f
        0x3e818937    # 0.253f
        -0x4149ba5e    # -0.356f
        0x3e89ba5e    # 0.269f
        -0x4172b021    # -0.276f
        0x3e8ed917    # 0.279f
        -0x41a8f5c3    # -0.21f
        0x3e92f1aa    # 0.287f
        -0x41e353f8    # -0.153f
        0x3e916873    # 0.284f
        -0x42374bc7
        0x3e916873    # 0.284f
        -0x42af1aa0    # -0.051f
        0x3e90e560    # 0.283f
        -0x445c28f6    # -0.005f
        0x3e916873    # 0.284f
        0x3d23d70a    # 0.04f
        0x3e916873    # 0.284f
        0x3db22d0e    # 0.087f
        0x3e28f5c3    # 0.165f
        0x3da3d70a    # 0.08f
        0x3e333333    # 0.175f
        0x3dfbe76d    # 0.123f
        0x3e333333    # 0.175f
        0x3e2f1aa0    # 0.171f
        0x3e333333    # 0.175f
        0x3e73b646    # 0.238f
        0x3e322d0e    # 0.174f
        0x3ead9168    # 0.339f
        0x3dd4fdf4    # 0.104f
        0x3ea45a1d    # 0.321f
        0x3d978d50    # 0.074f
        0x3ef43958    # 0.477f
        -0x44fced91    # -0.002f
        0x3ef53f7d    # 0.479f
        -0x42604189    # -0.078f
        0x3ef43958    # 0.477f
        -0x4222d0e5    # -0.108f
        0x3ea45a1d    # 0.321f
        -0x41cbc6a8    # -0.176f
        0x3eac0831    # 0.336f
        -0x41cdd2f2    # -0.174f
        0x3e6d9168    # 0.232f
        -0x41ced917    # -0.173f
        0x3e29fbe7    # 0.166f
        -0x41cbc6a8    # -0.176f
        0x3df7ced9    # 0.121f
        -0x41d60419    # -0.166f
        0x3d9fbe77    # 0.078f
        -0x416e978d    # -0.284f
        0x3db020c5    # 0.086f
        -0x416e978d    # -0.284f
        0x3d1fbe77    # 0.039f
        -0x416f1aa0    # -0.283f
        -0x445c28f6    # -0.005f
        -0x416e978d    # -0.284f
        -0x42b33333    # -0.05f
        -0x416e978d    # -0.284f
        -0x42395810    # -0.097f
        -0x416d0e56    # -0.287f
        -0x41e56042    # -0.151f
        -0x4170a3d7    # -0.28f
        -0x41ab020c    # -0.208f
        -0x4175c28f    # -0.27f
        -0x41743958    # -0.273f
        -0x417ef9db    # -0.252f
        -0x414ccccd    # -0.35f
        -0x419cac08    # -0.222f
        -0x41204189    # -0.437f
        -0x423126e9    # -0.101f
        -0x416147ae    # -0.31f
        -0x429eb852    # -0.055f
        -0x415374bc    # -0.337f
    .end array-data

    .line 42
    :array_1502
    .array-data 4
        -0x447ced91    # -0.004f
        -0x410ac083    # -0.479f
        0x3d851eb8    # 0.065f
        -0x412f9db2    # -0.407f
        0x3e000000    # 0.125f
        -0x4143126f    # -0.369f
        0x3e22d0e5    # 0.159f
        -0x416a7efa    # -0.292f
        0x3e981062    # 0.297f
        -0x413ae148    # -0.385f
        0x3ea7ef9e    # 0.328f
        -0x4164dd2f    # -0.303f
        0x3eac8b44    # 0.337f
        -0x419fbe77    # -0.219f
        0x3eae978d    # 0.341f
        -0x41e978d5    # -0.147f
        0x3eb0a3d7    # 0.345f
        -0x4251eb85    # -0.085f
        0x3eb1a9fc    # 0.347f
        -0x4322d0e5    # -0.027f
        0x3eb22d0e    # 0.348f
        0x3ced9168    # 0.029f
        0x3eb1a9fc    # 0.347f
        0x3dac0831    # 0.084f
        0x3eb0a3d7    # 0.345f
        0x3e116873    # 0.142f
        0x3eac8b44    # 0.337f
        0x3e4ed917    # 0.202f
        0x3ea66666    # 0.325f
        0x3e88b439    # 0.267f
        0x3e7ced91    # 0.247f
        0x3e8f5c29    # 0.28f
        0x3e8d4fdf    # 0.276f
        0x3ed3f7cf    # 0.414f
        0x3e126e98    # 0.143f
        0x3ea24dd3    # 0.317f
        0x3dfdf3b6    # 0.124f
        0x3ed81062    # 0.422f
        0x3d8b4396    # 0.068f
        0x3ef5c28f    # 0.48f
        -0x447ced91    # -0.004f
        0x3ef4bc6a    # 0.478f
        -0x42666666    # -0.075f
        0x3ef5c28f    # 0.48f
        -0x41f8d4fe    # -0.132f
        0x3ed81062    # 0.422f
        -0x41e872b0    # -0.148f
        0x3e9f3b64    # 0.311f
        -0x41722d0e    # -0.277f
        0x3ecf5c29    # 0.405f
        -0x41800000    # -0.25f
        0x3e8c49ba    # 0.274f
        -0x41578d50    # -0.329f
        0x3e87ae14    # 0.265f
        -0x414f5c29    # -0.345f
        0x3e4ed917    # 0.202f
        -0x414d4fdf    # -0.349f
        0x3e10624e    # 0.141f
        -0x414c49ba    # -0.351f
        0x3dac0831    # 0.084f
        -0x414dd2f2    # -0.348f
        0x3ced9168    # 0.029f
        -0x414c49ba    # -0.351f
        -0x432b020c    # -0.026f
        -0x414d4fdf    # -0.349f
        -0x4253f7cf    # -0.084f
        -0x414f5c29    # -0.345f
        -0x41eb851f    # -0.145f
        -0x4150e560    # -0.342f
        -0x41a1cac1    # -0.217f
        -0x41570a3d    # -0.33f
        -0x4167ef9e    # -0.297f
        -0x41656042    # -0.302f
        -0x413c6a7f    # -0.382f
        -0x41d4fdf4    # -0.167f
        -0x416a7efa    # -0.292f
        -0x41f7ced9    # -0.133f
        -0x4143126f    # -0.369f
        -0x426e978d    # -0.071f
        -0x41353f7d    # -0.396f
    .end array-data

    .line 43
    :array_15a6
    .array-data 4
        -0x457ced91    # -0.001f
        -0x410ac083    # -0.479f
        0x3d6d9168    # 0.058f
        -0x41604189    # -0.312f
        0x3db22d0e    # 0.087f
        -0x41a9fbe7    # -0.209f
        0x3e6b851f    # 0.23f
        -0x413645a2    # -0.394f
        0x3e8ac083    # 0.271f
        -0x415f3b64    # -0.314f
        0x3e978d50    # 0.296f
        -0x418e5604    # -0.236f
        0x3ea04189    # 0.313f
        -0x41d3f7cf    # -0.168f
        0x3ea45a1d    # 0.321f
        -0x422b020c    # -0.104f
        0x3e92f1aa    # 0.287f
        -0x42f8d4fe    # -0.033f
        0x3ea56042    # 0.323f
        0x3c1374bc    # 0.009f
        0x3ea56042    # 0.323f
        0x3d79db23    # 0.061f
        0x3ea56042    # 0.323f
        0x3de56042    # 0.112f
        0x3ea5e354    # 0.324f
        0x3e29fbe7    # 0.166f
        0x3ea24dd3    # 0.317f
        0x3e645a1d    # 0.223f
        0x3e9d2f1b    # 0.307f
        0x3e916873    # 0.284f
        0x3e93f7cf    # 0.289f
        0x3eb3b646    # 0.351f
        0x3e851eb8    # 0.26f
        0x3ed6872b    # 0.419f
        0x3e0d4fdf    # 0.138f
        0x3eab020c    # 0.334f
        0x3e000000    # 0.125f
        0x3ee4dd2f    # 0.447f
        0x3d851eb8    # 0.065f
        0x3ef53f7d    # 0.479f
        -0x457ced91    # -0.001f
        0x3ed4fdf4    # 0.416f
        -0x4276c8b4    # -0.067f
        0x3ef53f7d    # 0.479f
        -0x42000000    # -0.125f
        0x3ee1cac1    # 0.441f
        -0x41f2b021    # -0.138f
        0x3ea8f5c3    # 0.33f
        -0x417ae148    # -0.26f
        0x3ed60419    # 0.418f
        -0x416b851f    # -0.29f
        0x3eb2b021    # 0.349f
        -0x4161cac1    # -0.309f
        0x3e916873    # 0.284f
        -0x415d2f1b    # -0.318f
        0x3e6353f8    # 0.222f
        -0x415a1cac    # -0.324f
        0x3e29fbe7    # 0.166f
        -0x415a9fbe    # -0.323f
        0x3de56042    # 0.112f
        -0x415a9fbe    # -0.323f
        0x3d79db23    # 0.061f
        -0x415a9fbe    # -0.323f
        0x3c1374bc    # 0.009f
        -0x416c0831    # -0.289f
        -0x42f8d4fe    # -0.033f
        -0x415ba5e3    # -0.321f
        -0x422d0e56    # -0.103f
        -0x415f3b64    # -0.314f
        -0x41d4fdf4    # -0.167f
        -0x4167ef9e    # -0.297f
        -0x418f5c29    # -0.235f
        -0x41753f7d    # -0.271f
        -0x4160c49c    # -0.311f
        -0x41926e98    # -0.232f
        -0x413645a2    # -0.394f
        -0x424dd2f2    # -0.087f
        -0x41b020c5    # -0.203f
        -0x428e5604    # -0.059f
        -0x41624dd3    # -0.308f
    .end array-data

    .line 44
    :array_164a
    .array-data 4
        -0x457ced91    # -0.001f
        -0x417df3b6    # -0.254f
        0x3cf5c28f    # 0.03f
        -0x41b74bc7
        0x3d9db22d    # 0.077f
        -0x418a3d71    # -0.24f
        0x3db645a2    # 0.089f
        -0x41cbc6a8    # -0.176f
        0x3ddb22d1    # 0.107f
        -0x41e66666    # -0.15f
        0x3e158106    # 0.146f
        -0x41e872b0    # -0.148f
        0x3e4bc6a8    # 0.199f
        -0x41ea7efa    # -0.146f
        0x3e8fdf3b    # 0.281f
        -0x41eb851f    # -0.145f
        0x3e9f3b64    # 0.311f
        -0x422d0e56    # -0.103f
        0x3ea5e354    # 0.324f
        -0x42a6e979    # -0.053f
        0x3e8ed917    # 0.279f
        -0x44fced91    # -0.002f
        0x3e79db23    # 0.244f
        0x3d178d50    # 0.037f
        0x3e5f3b64    # 0.218f
        0x3d8d4fdf    # 0.069f
        0x3e45a1cb    # 0.193f
        0x3dc6a7f0    # 0.097f
        0x3e2f1aa0    # 0.171f
        0x3dfbe76d    # 0.123f
        0x3e19999a    # 0.15f
        0x3e189375    # 0.149f
        0x3e020c4a    # 0.127f
        0x3e333333    # 0.175f
        0x3dd4fdf4    # 0.104f
        0x3e50e560    # 0.204f
        0x3d978d50    # 0.074f
        0x3e6a7efa    # 0.229f
        0x3d343958    # 0.044f
        0x3e8dd2f2    # 0.277f
        -0x457ced91    # -0.001f
        0x3ea56042    # 0.323f
        -0x42c7ae14    # -0.045f
        0x3e8dd2f2    # 0.277f
        -0x42666666    # -0.075f
        0x3e6978d5    # 0.228f
        -0x4228f5c3    # -0.105f
        0x3e4fdf3b    # 0.203f
        -0x41fbe76d    # -0.129f
        0x3e333333    # 0.175f
        -0x41e66666    # -0.15f
        0x3e178d50    # 0.148f
        -0x41d0e560    # -0.171f
        0x3df9db23    # 0.122f
        -0x41ba5e35    # -0.193f
        0x3dc49ba6    # 0.096f
        -0x41a1cac1    # -0.217f
        0x3d8d4fdf    # 0.069f
        -0x41851eb8    # -0.245f
        0x3d178d50    # 0.037f
        -0x417126e9    # -0.279f
        -0x44fced91    # -0.002f
        -0x4159999a    # -0.325f
        -0x42a6e979    # -0.053f
        -0x4160c49c    # -0.311f
        -0x422f1aa0    # -0.102f
        -0x416f1aa0    # -0.283f
        -0x41eb851f    # -0.145f
        -0x41b33333    # -0.2f
        -0x41ea7efa    # -0.146f
        -0x41e978d5    # -0.147f
        -0x41e872b0    # -0.148f
        -0x4220c49c    # -0.109f
        -0x41e66666    # -0.15f
        -0x4249ba5e    # -0.089f
        -0x41cbc6a8    # -0.176f
        -0x42604189    # -0.078f
        -0x418c49ba    # -0.238f
        -0x43020c4a    # -0.031f
        -0x41b95810    # -0.194f
    .end array-data

    .line 45
    :array_16ee
    .array-data 4
        -0x44fced91    # -0.002f
        -0x411a1cac    # -0.449f
        0x3d71a9fc    # 0.059f
        -0x41733333    # -0.275f
        0x3db645a2    # 0.089f
        -0x41d4fdf4    # -0.167f
        0x3de978d5    # 0.114f
        -0x4210624e    # -0.117f
        0x3e0624dd    # 0.131f
        -0x426c8b44    # -0.072f
        0x3e1374bc    # 0.144f
        -0x42f0a3d7    # -0.035f
        0x3e21cac1    # 0.158f
        -0x445c28f6    # -0.005f
        0x3e28f5c3    # 0.165f
        0x3cd4fdf4    # 0.026f
        0x3e21cac1    # 0.158f
        0x3d71a9fc    # 0.059f
        0x3e374bc7    # 0.179f
        0x3da9fbe7    # 0.083f
        0x3e4dd2f2    # 0.201f
        0x3de353f8    # 0.111f
        0x3e70a3d7    # 0.235f
        0x3e189375    # 0.149f
        0x3e8f5c29    # 0.28f
        0x3e4fdf3b    # 0.203f
        0x3ea5e354    # 0.324f
        0x3e8dd2f2    # 0.277f
        0x3ead0e56    # 0.338f
        0x3eb74bc7    # 0.358f
        0x3e2c0831    # 0.168f
        0x3e8fdf3b    # 0.281f
        0x3e0c49ba    # 0.137f
        0x3e9a9fbe    # 0.302f
        0x3e1374bc    # 0.144f
        0x3ecbc6a8    # 0.398f
        0x3db22d0e    # 0.087f
        0x3ec5a1cb    # 0.386f
        0x3d54fdf4    # 0.052f
        0x3ee5e354    # 0.449f
        -0x44fced91    # -0.002f
        0x3ed2f1aa    # 0.412f
        -0x429eb852    # -0.055f
        0x3ee4dd2f    # 0.447f
        -0x4247ae14    # -0.09f
        0x3ec39581    # 0.382f
        -0x41eb851f    # -0.145f
        0x3ec83127    # 0.391f
        -0x41f0a3d7    # -0.14f
        0x3e9a1cac    # 0.301f
        -0x41ced917    # -0.173f
        0x3e90e560    # 0.283f
        -0x4151eb85    # -0.34f
        0x3eb6c8b4    # 0.357f
        -0x41591687    # -0.326f
        0x3e8d4fdf    # 0.276f
        -0x416f9db2    # -0.282f
        0x3e4ed917    # 0.202f
        -0x418d4fdf    # -0.237f
        0x3e189375    # 0.149f
        -0x41ae147b    # -0.205f
        0x3de353f8    # 0.111f
        -0x41c6a7f0    # -0.181f
        0x3da9fbe7    # 0.083f
        -0x41dc28f6    # -0.16f
        0x3d75c28f    # 0.06f
        -0x41d4fdf4    # -0.167f
        0x3cdd2f1b    # 0.027f
        -0x41dc28f6    # -0.16f
        -0x447ced91    # -0.004f
        -0x41e872b0    # -0.148f
        -0x42f0a3d7    # -0.035f
        -0x41f6c8b4    # -0.134f
        -0x4270a3d7    # -0.07f
        -0x4210624e    # -0.117f
        -0x42147ae1    # -0.115f
        -0x42439581    # -0.092f
        -0x41d60419    # -0.166f
        -0x42820c4a    # -0.062f
        -0x41753f7d    # -0.271f
    .end array-data

    .line 46
    :array_1792
    .array-data 4
        -0x44fced91    # -0.002f
        -0x41191687    # -0.451f
        0x3d6d9168    # 0.058f
        -0x415eb852    # -0.315f
        0x3dbc6a7f    # 0.092f
        -0x419ba5e3    # -0.223f
        0x3df7ced9    # 0.121f
        -0x41cac083    # -0.177f
        0x3e126e98    # 0.143f
        -0x41f6c8b4    # -0.134f
        0x3e23d70a    # 0.16f
        -0x42395810    # -0.097f
        0x3e322d0e    # 0.174f
        -0x427ef9db    # -0.063f
        0x3e09374c    # 0.134f
        -0x445c28f6    # -0.005f
        0x3e1db22d    # 0.154f
        0x3c656042    # 0.014f
        0x3e3645a2    # 0.178f
        0x3d1374bc    # 0.036f
        0x3e4fdf3b    # 0.203f
        0x3d851eb8    # 0.065f
        0x3e656042    # 0.224f
        0x3dcccccd    # 0.1f
        0x3e8dd2f2    # 0.277f
        0x3e1eb852    # 0.155f
        0x3e9a1cac    # 0.301f
        0x3e604189    # 0.219f
        0x3e9b22d1    # 0.303f
        0x3e926e98    # 0.286f
        0x3e2f1aa0    # 0.171f
        0x3e72b021    # 0.237f
        0x3e1ba5e3    # 0.152f
        0x3e8d4fdf    # 0.276f
        0x3ddb22d1    # 0.107f
        0x3e8ed917    # 0.279f
        0x3dd2f1aa    # 0.103f
        0x3ec5a1cb    # 0.386f
        0x3d6d9168    # 0.058f
        0x3ee3d70a    # 0.445f
        -0x44fced91    # -0.002f
        0x3eca3d71    # 0.395f
        -0x42820c4a    # -0.062f
        0x3ee3d70a    # 0.445f
        -0x4222d0e5    # -0.108f
        0x3ec8b439    # 0.392f
        -0x4220c49c    # -0.109f
        0x3e8ccccd    # 0.275f
        -0x41e353f8    # -0.153f
        0x3e8bc6a8    # 0.273f
        -0x41ced917    # -0.173f
        0x3e71a9fc    # 0.236f
        -0x4163d70a    # -0.305f
        0x3e91eb85    # 0.285f
        -0x4165e354    # -0.301f
        0x3e5e353f    # 0.217f
        -0x417126e9    # -0.279f
        0x3e1eb852    # 0.155f
        -0x41989375    # -0.226f
        0x3dcccccd    # 0.1f
        -0x41ac0831    # -0.207f
        0x3d851eb8    # 0.065f
        -0x41cac083    # -0.177f
        0x3d178d50    # 0.037f
        -0x41e04189    # -0.156f
        0x3c75c28f    # 0.015f
        -0x41f4bc6a    # -0.136f
        -0x447ced91    # -0.004f
        -0x41cbc6a8    # -0.176f
        -0x42820c4a    # -0.062f
        -0x41da1cac    # -0.162f
        -0x423b645a    # -0.096f
        -0x41ec8b44    # -0.144f
        -0x41f9db23    # -0.131f
        -0x42020c4a    # -0.124f
        -0x41cbc6a8    # -0.176f
        -0x423d70a4    # -0.095f
        -0x419ba5e3    # -0.223f
        -0x42820c4a    # -0.062f
        -0x415fbe77    # -0.313f
    .end array-data

    .line 47
    :array_1836
    .array-data 4
        -0x44fced91    # -0.002f
        -0x411a1cac    # -0.449f
        0x3d79db23    # 0.061f
        -0x416147ae    # -0.31f
        0x3db43958    # 0.088f
        -0x41be76c9    # -0.189f
        0x3ddb22d1    # 0.107f
        -0x41fef9db    # -0.126f
        0x3e10624e    # 0.141f
        -0x421eb852    # -0.11f
        0x3e21cac1    # 0.158f
        -0x426a7efa    # -0.073f
        0x3e3020c5    # 0.172f
        -0x42e04189    # -0.039f
        0x3e3c6a7f    # 0.184f
        -0x441a9fbe    # -0.007f
        0x3e54fdf4    # 0.208f
        0x3c9ba5e3    # 0.019f
        0x3e6872b0    # 0.227f
        0x3d50e560    # 0.051f
        0x3e810625    # 0.252f
        0x3db43958    # 0.088f
        0x3e8e5604    # 0.278f
        0x3e072b02    # 0.132f
        0x3e9eb852    # 0.31f
        0x3e418937    # 0.189f
        0x3ea66666    # 0.325f
        0x3e820c4a    # 0.254f
        0x3ea56042    # 0.323f
        0x3ea5e354    # 0.324f
        0x3e353f7d    # 0.177f
        0x3e88b439    # 0.267f
        0x3e178d50    # 0.148f
        0x3e970a3d    # 0.295f
        0x3e072b02    # 0.132f
        0x3eb33333    # 0.35f
        0x3dc6a7f0    # 0.097f
        0x3ec9ba5e    # 0.394f
        0x3d6147ae    # 0.055f
        0x3ee45a1d    # 0.446f
        -0x44fced91    # -0.002f
        0x3ecdd2f2    # 0.402f
        -0x428e5604    # -0.059f
        0x3ee45a1d    # 0.446f
        -0x422f1aa0    # -0.102f
        0x3ec9ba5e    # 0.394f
        -0x41f6c8b4    # -0.134f
        0x3eb1a9fc    # 0.347f
        -0x41e56042    # -0.151f
        0x3e960419    # 0.293f
        -0x41c8b439    # -0.179f
        0x3e872b02    # 0.264f
        -0x41581062    # -0.328f
        0x3ea5e354    # 0.324f
        -0x41581062    # -0.328f
        0x3e818937    # 0.253f
        -0x41604189    # -0.312f
        0x3e408312    # 0.188f
        -0x416f9db2    # -0.282f
        0x3e072b02    # 0.132f
        -0x417ef9db    # -0.252f
        0x3db43958    # 0.088f
        -0x41947ae1    # -0.23f
        0x3d54fdf4    # 0.052f
        -0x41a8f5c3    # -0.21f
        0x3ca3d70a    # 0.02f
        -0x41c08312    # -0.187f
        -0x443b645a    # -0.006f
        -0x41cdd2f2    # -0.174f
        -0x42e872b0    # -0.037f
        -0x41dc28f6    # -0.16f
        -0x4270a3d7    # -0.07f
        -0x41ec8b44    # -0.144f
        -0x4222d0e5    # -0.108f
        -0x4220c49c    # -0.109f
        -0x42083127    # -0.121f
        -0x4245a1cb    # -0.091f
        -0x41c08312    # -0.187f
        -0x427ced91    # -0.064f
        -0x41645a1d    # -0.304f
    .end array-data

    .line 48
    :array_18da
    .array-data 4
        -0x457ced91    # -0.001f
        -0x4119999a    # -0.45f
        0x3d7df3b6    # 0.062f
        -0x416b851f    # -0.29f
        0x3dc08312    # 0.094f
        -0x41c08312    # -0.187f
        0x3de978d5    # 0.114f
        -0x42083127    # -0.121f
        0x3e10624e    # 0.141f
        -0x4245a1cb    # -0.091f
        0x3e1db22d    # 0.154f
        -0x42ab020c    # -0.052f
        0x3e28f5c3    # 0.165f
        -0x4374bc6a    # -0.017f
        0x3e3126e9    # 0.173f
        0x3c656042    # 0.014f
        0x3e3f7cee    # 0.187f
        0x3d2c0831    # 0.042f
        0x3e604189    # 0.219f
        0x3d8b4396    # 0.068f
        0x3e839581    # 0.257f
        0x3dd2f1aa    # 0.103f
        0x3eb33333    # 0.35f
        0x3e22d0e5    # 0.159f
        0x3ed0e560    # 0.408f
        0x3e71a9fc    # 0.236f
        0x3ed3f7cf    # 0.414f
        0x3ea0c49c    # 0.314f
        0x3e666666    # 0.225f
        0x3e88b439    # 0.267f
        0x3e4ed917    # 0.202f
        0x3e9cac08    # 0.306f
        0x3e116873    # 0.142f
        0x3e991687    # 0.299f
        0x3e0624dd    # 0.131f
        0x3eb95810    # 0.362f
        0x3dced917    # 0.101f
        0x3ed47ae1    # 0.415f
        0x3d5d2f1b    # 0.054f
        0x3ee56042    # 0.448f
        -0x457ced91    # -0.001f
        0x3ec8b439    # 0.392f
        -0x429eb852    # -0.055f
        0x3ee4dd2f    # 0.447f
        -0x423126e9    # -0.101f
        0x3ed374bc    # 0.413f
        -0x41f8d4fe    # -0.132f
        0x3eb8d4fe    # 0.361f
        -0x41ee978d    # -0.142f
        0x3e981062    # 0.297f
        -0x41b126e9    # -0.202f
        0x3e9c28f6    # 0.305f
        -0x4199999a    # -0.225f
        0x3e883127    # 0.266f
        -0x412c8b44    # -0.413f
        0x3ea04189    # 0.313f
        -0x413020c5    # -0.406f
        0x3e70a3d7    # 0.235f
        -0x414dd2f2    # -0.348f
        0x3e21cac1    # 0.158f
        -0x417d70a4    # -0.255f
        0x3dd2f1aa    # 0.103f
        -0x419db22d    # -0.221f
        0x3d8b4396    # 0.068f
        -0x41c18937    # -0.186f
        0x3d3020c5    # 0.043f
        -0x41ced917    # -0.173f
        0x3c75c28f    # 0.015f
        -0x41d91687    # -0.163f
        -0x438a3d71    # -0.015f
        -0x41e24dd3    # -0.154f
        -0x42b33333    # -0.05f
        -0x41f0a3d7    # -0.14f
        -0x424bc6a8    # -0.088f
        -0x42147ae1    # -0.115f
        -0x42083127    # -0.121f
        -0x423f7cee    # -0.094f
        -0x41c49ba6    # -0.183f
        -0x42820c4a    # -0.062f
        -0x416d0e56    # -0.287f
    .end array-data

    .line 49
    :array_197e
    .array-data 4
        -0x80000000
        -0x411a1cac    # -0.449f
        0x3d6d9168    # 0.058f
        -0x41604189    # -0.312f
        0x3ddd2f1b    # 0.108f
        -0x4172b021    # -0.276f
        0x3e0e5604    # 0.139f
        -0x41a1cac1    # -0.217f
        0x3e26e979    # 0.163f
        -0x41d4fdf4    # -0.167f
        0x3e2b020c    # 0.167f
        -0x421eb852    # -0.11f
        0x3e48b439
        -0x4251eb85    # -0.085f
        0x3e645a1d    # 0.223f
        -0x429a9fbe    # -0.056f
        0x3e800000    # 0.25f
        -0x433b645a    # -0.024f
        0x3e88b439    # 0.267f
        0x3c75c28f    # 0.015f
        0x3e8dd2f2    # 0.277f
        0x3d6d9168    # 0.058f
        0x3e8e5604    # 0.278f
        0x3dd0e560    # 0.102f
        0x3e8ac083    # 0.271f
        0x3e158106    # 0.146f
        0x3e818937    # 0.253f
        0x3e3f7cee    # 0.187f
        0x3e676c8b    # 0.226f
        0x3e6353f8    # 0.222f
        0x3e4ac083    # 0.198f
        0x3e83126f    # 0.256f
        0x3e2d0e56    # 0.169f
        0x3e94fdf4    # 0.291f
        0x3e1cac08    # 0.153f
        0x3eb7ced9    # 0.359f
        0x3dbe76c9    # 0.093f
        0x3eb020c5    # 0.344f
        0x3d79db23    # 0.061f
        0x3ee353f8    # 0.444f
        -0x80000000
        0x3ee66666    # 0.45f
        -0x42820c4a    # -0.062f
        0x3ee3d70a    # 0.445f
        -0x423f7cee    # -0.094f
        0x3eb126e9    # 0.346f
        -0x41e45a1d    # -0.152f
        0x3eb5c28f    # 0.355f
        -0x41d2f1aa    # -0.169f
        0x3e947ae1    # 0.29f
        -0x41b53f7d    # -0.198f
        0x3e828f5c    # 0.255f
        -0x41978d50    # -0.227f
        0x3e6353f8    # 0.222f
        -0x417e76c9    # -0.253f
        0x3e3e76c9    # 0.186f
        -0x41753f7d    # -0.271f
        0x3e147ae1    # 0.145f
        -0x417126e9    # -0.279f
        0x3dd0e560    # 0.102f
        -0x41722d0e    # -0.277f
        0x3d6d9168    # 0.058f
        -0x41774bc7    # -0.267f
        0x3c75c28f    # 0.015f
        -0x41800000    # -0.25f
        -0x433b645a    # -0.024f
        -0x419a9fbe    # -0.224f
        -0x429a9fbe    # -0.056f
        -0x41b74bc7
        -0x4253f7cf    # -0.084f
        -0x41d3f7cf    # -0.168f
        -0x421eb852    # -0.11f
        -0x41da1cac    # -0.162f
        -0x41d70a3d    # -0.165f
        -0x41f0a3d7    # -0.14f
        -0x41a2d0e5    # -0.216f
        -0x4222d0e5    # -0.108f
        -0x4173b646    # -0.274f
        -0x42926e98    # -0.058f
        -0x4161cac1    # -0.309f
    .end array-data

    .line 50
    :array_1a22
    .array-data 4
        -0x457ced91    # -0.001f
        -0x41191687    # -0.451f
        0x3d656042    # 0.056f
        -0x4170a3d7    # -0.28f
        0x3dac0831    # 0.084f
        -0x41c7ae14    # -0.18f
        0x3db22d0e    # 0.087f
        -0x42439581    # -0.092f
        0x3ddd2f1b    # 0.108f
        -0x4270a3d7    # -0.07f
        0x3df1a9fc    # 0.118f
        -0x42e45a1d    # -0.038f
        0x3e041893    # 0.129f
        -0x439a9fbe    # -0.014f
        0x3e0c49ba    # 0.137f
        0x3c23d70a    # 0.01f
        0x3e116873    # 0.142f
        0x3d0b4396    # 0.034f
        0x3e19999a    # 0.15f
        0x3d6978d5    # 0.057f
        0x3e1eb852    # 0.155f
        0x3da3d70a    # 0.08f
        0x3e22d0e5    # 0.159f
        0x3dd91687    # 0.106f
        0x3e29fbe7    # 0.166f
        0x3e0a3d71    # 0.135f
        0x3e3a5e35    # 0.182f
        0x3e322d0e    # 0.174f
        0x3e418937    # 0.189f
        0x3e5f3b64    # 0.218f
        0x3e45a1cb    # 0.193f
        0x3e8c49ba    # 0.274f
        0x3e072b02    # 0.132f
        0x3e872b02    # 0.264f
        0x3def9db2    # 0.117f
        0x3e9fbe77    # 0.312f
        0x3dc49ba6    # 0.096f
        0x3ec18937    # 0.378f
        0x3d656042    # 0.056f
        0x3ee1cac1    # 0.441f
        -0x457ced91    # -0.001f
        0x3ed70a3d    # 0.42f
        -0x42926e98    # -0.058f
        0x3ee0c49c    # 0.439f
        -0x42395810    # -0.097f
        0x3ec18937    # 0.378f
        -0x4210624e    # -0.117f
        0x3e9db22d    # 0.308f
        -0x41f7ced9    # -0.133f
        0x3e8624dd    # 0.262f
        -0x41ba5e35    # -0.193f
        0x3e8b4396    # 0.272f
        -0x41be76c9    # -0.189f
        0x3e5e353f    # 0.217f
        -0x41c49ba6    # -0.183f
        0x3e322d0e    # 0.174f
        -0x41d3f7cf    # -0.168f
        0x3e0a3d71    # 0.135f
        -0x41dd2f1b    # -0.159f
        0x3dd91687    # 0.106f
        -0x41e147ae    # -0.155f
        0x3da3d70a    # 0.08f
        -0x41e76c8b    # -0.149f
        0x3d6978d5    # 0.057f
        -0x41ee978d    # -0.142f
        0x3d0f5c29    # 0.035f
        -0x41f5c28f    # -0.135f
        0x3c449ba6    # 0.012f
        -0x41fdf3b6    # -0.127f
        -0x43cbc6a8    # -0.011f
        -0x420e5604    # -0.118f
        -0x42e872b0    # -0.037f
        -0x4220c49c    # -0.109f
        -0x4274bc6a    # -0.068f
        -0x424bc6a8    # -0.088f
        -0x4247ae14    # -0.09f
        -0x42560419    # -0.083f
        -0x41cdd2f2    # -0.174f
        -0x4296872b    # -0.057f
        -0x41743958    # -0.273f
    .end array-data

    .line 51
    :array_1ac6
    .array-data 4
        -0x80000000
        -0x415ba5e3    # -0.321f
        0x3d408312    # 0.047f
        -0x419cac08    # -0.222f
        0x3d99999a    # 0.075f
        -0x41e147ae    # -0.155f
        0x3dbc6a7f    # 0.092f
        -0x4228f5c3    # -0.105f
        0x3dd2f1aa    # 0.103f
        -0x427ae148    # -0.065f
        0x3e000000    # 0.125f
        -0x42b74bc7    # -0.049f
        0x3e0f5c29    # 0.14f
        -0x43333333    # -0.025f
        0x3e21cac1    # 0.158f
        -0x447ced91    # -0.004f
        0x3e374bc7    # 0.179f
        0x3c9ba5e3    # 0.019f
        0x3e4fdf3b    # 0.203f
        0x3d3851ec    # 0.045f
        0x3e6f9db2    # 0.234f
        0x3d9db22d    # 0.077f
        0x3e8d4fdf    # 0.276f
        0x3df7ced9    # 0.121f
        0x3e958106    # 0.292f
        0x3e3020c5    # 0.172f
        0x3e9db22d    # 0.308f
        0x3e6f9db2    # 0.234f
        0x3e0f5c29    # 0.14f
        0x3e374bc7    # 0.179f
        0x3df1a9fc    # 0.118f
        0x3e48b439
        0x3de76c8b    # 0.113f
        0x3e6e978d    # 0.233f
        0x3dd4fdf4    # 0.104f
        0x3e90624e    # 0.282f
        0x3d9ba5e3    # 0.076f
        0x3e9fbe77    # 0.312f
        0x3d1ba5e3    # 0.038f
        0x3ea45a1d    # 0.321f
        -0x80000000
        0x3e9d2f1b    # 0.307f
        -0x42e04189    # -0.039f
        0x3ea45a1d    # 0.321f
        -0x42624dd3    # -0.077f
        0x3e9fbe77    # 0.312f
        -0x4228f5c3    # -0.105f
        0x3e90624e    # 0.282f
        -0x42189375    # -0.113f
        0x3e6d9168    # 0.232f
        -0x420c49ba    # -0.119f
        0x3e48b439
        -0x41f1a9fc    # -0.139f
        0x3e3645a2    # 0.178f
        -0x41624dd3    # -0.308f
        0x3e6f9db2    # 0.234f
        -0x4169fbe7    # -0.293f
        0x3e3020c5    # 0.172f
        -0x41733333    # -0.275f
        0x3df7ced9    # 0.121f
        -0x4190624e    # -0.234f
        0x3d9db22d    # 0.077f
        -0x41af1aa0    # -0.204f
        0x3d3851ec    # 0.045f
        -0x41c7ae14    # -0.18f
        0x3c9ba5e3    # 0.019f
        -0x41dd2f1b    # -0.159f
        -0x447ced91    # -0.004f
        -0x41f0a3d7    # -0.14f
        -0x43333333    # -0.025f
        -0x42000000    # -0.125f
        -0x42bf7cee    # -0.047f
        -0x422d0e56    # -0.103f
        -0x427ced91    # -0.064f
        -0x4245a1cb    # -0.091f
        -0x423126e9    # -0.101f
        -0x42666666    # -0.075f
        -0x41e353f8    # -0.153f
        -0x42bb645a    # -0.048f
        -0x419db22d    # -0.221f
    .end array-data

    .line 52
    :array_1b6a
    .array-data 4
        -0x457ced91    # -0.001f
        -0x414a3d71    # -0.355f
        0x3d48b439    # 0.049f
        -0x418d4fdf    # -0.237f
        0x3d9ba5e3    # 0.076f
        -0x41dc28f6    # -0.16f
        0x3db645a2    # 0.089f
        -0x42353f7d    # -0.099f
        0x3dd91687    # 0.106f
        -0x426e978d    # -0.071f
        0x3e010625    # 0.126f
        -0x42b33333    # -0.05f
        0x3e126e98    # 0.143f
        -0x431a9fbe    # -0.028f
        0x3e21cac1    # 0.158f
        -0x445c28f6    # -0.005f
        0x3e353f7d    # 0.177f
        0x3c9ba5e3    # 0.019f
        0x3e49ba5e    # 0.197f
        0x3d3851ec    # 0.045f
        0x3e645a1d    # 0.223f
        0x3d9ba5e3    # 0.076f
        0x3e83126f    # 0.256f
        0x3def9db2    # 0.117f
        0x3e9a1cac    # 0.301f
        0x3e322d0e    # 0.174f
        0x3ebced91    # 0.369f
        0x3e87ae14    # 0.265f
        0x3df1a9fc    # 0.118f
        0x3e25e354    # 0.162f
        0x3ddf3b64    # 0.109f
        0x3e3e76c9    # 0.186f
        0x3dcac083    # 0.099f
        0x3e5b22d1    # 0.214f
        0x3dba5e35    # 0.091f
        0x3e839581    # 0.257f
        0x3d99999a    # 0.075f
        0x3e9eb852    # 0.31f
        0x3d3020c5    # 0.043f
        0x3eb4bc6a    # 0.353f
        -0x457ced91    # -0.001f
        0x3eae978d    # 0.341f
        -0x42c7ae14    # -0.045f
        0x3eb4bc6a    # 0.353f
        -0x42645a1d    # -0.076f
        0x3e9db22d    # 0.308f
        -0x42439581    # -0.092f
        0x3e83126f    # 0.256f
        -0x42333333    # -0.1f
        0x3e591687    # 0.212f
        -0x421eb852    # -0.11f
        0x3e3d70a4    # 0.185f
        -0x420c49ba    # -0.119f
        0x3e25e354    # 0.162f
        -0x4143126f    # -0.369f
        0x3e872b02    # 0.264f
        -0x4164dd2f    # -0.303f
        0x3e322d0e    # 0.174f
        -0x417ced91    # -0.256f
        0x3def9db2    # 0.117f
        -0x419a9fbe    # -0.224f
        0x3d9ba5e3    # 0.076f
        -0x41b43958    # -0.199f
        0x3d3851ec    # 0.045f
        -0x41c9ba5e    # -0.178f
        0x3c9ba5e3    # 0.019f
        -0x41dc28f6    # -0.16f
        -0x445c28f6    # -0.005f
        -0x41ec8b44    # -0.144f
        -0x431a9fbe    # -0.028f
        -0x41fdf3b6    # -0.127f
        -0x42b74bc7    # -0.049f
        -0x4222d0e5    # -0.108f
        -0x426e978d    # -0.071f
        -0x4247ae14    # -0.09f
        -0x42374bc7
        -0x42624dd3    # -0.077f
        -0x41dd2f1b    # -0.159f
        -0x42b33333    # -0.05f
        -0x418f5c29    # -0.235f
    .end array-data

    .line 53
    :array_1c0e
    .array-data 4
        -0x457ced91    # -0.001f
        -0x4149ba5e    # -0.356f
        0x3d408312    # 0.047f
        -0x417a5e35    # -0.261f
        0x3d978d50    # 0.074f
        -0x41bd70a4    # -0.19f
        0x3e0e5604    # 0.139f
        -0x4190624e    # -0.234f
        0x3e27ef9e    # 0.164f
        -0x41c28f5c    # -0.185f
        0x3e3851ec    # 0.18f
        -0x41f0a3d7    # -0.14f
        0x3e449ba6    # 0.192f
        -0x42353f7d    # -0.099f
        0x3e4bc6a8    # 0.199f
        -0x428a3d71    # -0.06f
        0x3e49ba5e    # 0.197f
        -0x43439581    # -0.023f
        0x3e4dd2f2    # 0.201f
        0x3c1374bc    # 0.009f
        0x3e4ed917    # 0.202f
        0x3d2c0831    # 0.042f
        0x3e4ccccd    # 0.2f
        0x3d958106    # 0.073f
        0x3e4ac083    # 0.198f
        0x3dd91687    # 0.106f
        0x3e3b645a    # 0.183f
        0x3e0a3d71    # 0.135f
        0x3e353f7d    # 0.177f
        0x3e2f1aa0    # 0.171f
        0x3e45a1cb    # 0.193f
        0x3e71a9fc    # 0.236f
        0x3e374bc7    # 0.179f
        0x3e93f7cf    # 0.289f
        0x3dfdf3b6    # 0.124f
        0x3e92f1aa    # 0.287f
        0x3dc49ba6    # 0.096f
        0x3eae147b    # 0.34f
        0x3d408312    # 0.047f
        0x3eb22d0e    # 0.348f
        -0x457ced91    # -0.001f
        0x3eb645a2    # 0.356f
        -0x42b33333    # -0.05f
        0x3eb22d0e    # 0.348f
        -0x42374bc7
        0x3ead9168    # 0.339f
        -0x42000000    # -0.125f
        0x3e916873    # 0.284f
        -0x41c7ae14    # -0.18f
        0x3e9374bc    # 0.288f
        -0x41b95810    # -0.194f
        0x3e6f9db2    # 0.234f
        -0x41cac083    # -0.177f
        0x3e2e147b    # 0.17f
        -0x41c28f5c    # -0.185f
        0x3e0a3d71    # 0.135f
        -0x41b33333    # -0.2f
        0x3dd91687    # 0.106f
        -0x41b020c5    # -0.203f
        0x3d958106    # 0.073f
        -0x41b020c5    # -0.203f
        0x3d2c0831    # 0.042f
        -0x41b020c5    # -0.203f
        0x3c23d70a    # 0.01f
        -0x41b53f7d    # -0.198f
        -0x434bc6a8    # -0.022f
        -0x41b33333    # -0.2f
        -0x428a3d71    # -0.06f
        -0x41b95810    # -0.194f
        -0x42353f7d    # -0.099f
        -0x41c49ba6    # -0.183f
        -0x41f0a3d7    # -0.14f
        -0x41d70a3d    # -0.165f
        -0x41c39581    # -0.184f
        -0x41ef9db2    # -0.141f
        -0x41916873    # -0.233f
        -0x42645a1d    # -0.076f
        -0x41be76c9    # -0.189f
        -0x42b74bc7    # -0.049f
        -0x417ae148    # -0.26f
    .end array-data

    .line 54
    :array_1cb2
    .array-data 4
        -0x80000000
        -0x412872b0    # -0.421f
        0x3d8d4fdf    # 0.069f
        -0x413df3b6    # -0.379f
        0x3dc08312    # 0.094f
        -0x41916873    # -0.233f
        0x3def9db2    # 0.117f
        -0x41cdd2f2    # -0.174f
        0x3e0a3d71    # 0.135f
        -0x41fae148    # -0.13f
        0x3e126e98    # 0.143f
        -0x424bc6a8    # -0.088f
        0x3e189375    # 0.149f
        -0x42a6e979    # -0.053f
        0x3e22d0e5    # 0.159f
        -0x432b020c    # -0.026f
        0x3e29fbe7    # 0.166f
        0x3b03126f    # 0.002f
        0x3e2e147b    # 0.17f
        0x3ced9168    # 0.029f
        0x3e2e147b    # 0.17f
        0x3d656042    # 0.056f
        0x3e29fbe7    # 0.166f
        0x3da7ef9e    # 0.082f
        0x3e25e354    # 0.162f
        0x3ddd2f1b    # 0.108f
        0x3e1cac08    # 0.153f
        0x3e09374c    # 0.134f
        0x3e22d0e5    # 0.159f
        0x3e2f1aa0    # 0.171f
        0x3e333333    # 0.175f
        0x3e6b851f    # 0.23f
        0x3e20c49c    # 0.157f
        0x3e8b4396    # 0.272f
        0x3e126e98    # 0.143f
        0x3eac8b44    # 0.337f
        0x3de147ae    # 0.11f
        0x3eca3d71    # 0.395f
        0x3d7df3b6    # 0.062f
        0x3ee56042    # 0.448f
        -0x80000000
        0x3ee5e354    # 0.449f
        -0x42820c4a    # -0.062f
        0x3ee56042    # 0.448f
        -0x421eb852    # -0.11f
        0x3eca3d71    # 0.395f
        -0x41ed9168    # -0.143f
        0x3eac8b44    # 0.337f
        -0x41df3b64    # -0.157f
        0x3e8ac083    # 0.271f
        -0x41ced917    # -0.173f
        0x3e6a7efa    # 0.229f
        -0x41dd2f1b    # -0.159f
        0x3e2f1aa0    # 0.171f
        -0x41e45a1d    # -0.152f
        0x3e083127    # 0.133f
        -0x41da1cac    # -0.162f
        0x3ddd2f1b    # 0.108f
        -0x41d81062    # -0.164f
        0x3da5e354    # 0.081f
        -0x41d3f7cf    # -0.168f
        0x3d656042    # 0.056f
        -0x41d2f1aa    # -0.169f
        0x3ced9168    # 0.029f
        -0x41d60419    # -0.166f
        0x3b03126f    # 0.002f
        -0x41dd2f1b    # -0.159f
        -0x43333333    # -0.025f
        -0x41e76c8b    # -0.149f
        -0x42ab020c    # -0.052f
        -0x41ee978d    # -0.142f
        -0x424dd2f2    # -0.087f
        -0x41f6c8b4    # -0.134f
        -0x41fbe76d    # -0.129f
        -0x4210624e    # -0.117f
        -0x41ced917    # -0.173f
        -0x423f7cee    # -0.094f
        -0x41916873    # -0.233f
        -0x4272b021    # -0.069f
        -0x413ef9db    # -0.377f
    .end array-data

    .line 55
    :array_1d56
    .array-data 4
        -0x80000000
        -0x414f5c29    # -0.345f
        0x3d99999a    # 0.075f
        -0x41276c8b    # -0.423f
        0x3de978d5    # 0.114f
        -0x4165e354    # -0.301f
        0x3e22d0e5    # 0.159f
        -0x4179db23    # -0.262f
        0x3e3e76c9    # 0.186f
        -0x41ad0e56    # -0.206f
        0x3e45a1cb    # 0.193f
        -0x41ed9168    # -0.143f
        0x3e4ed917    # 0.202f
        -0x42395810    # -0.097f
        0x3e5a1cac    # 0.213f
        -0x42926e98    # -0.058f
        0x3e666666    # 0.225f
        -0x43439581    # -0.023f
        0x3e645a1d    # 0.223f
        0x3c75c28f    # 0.015f
        0x3e6e978d    # 0.233f
        0x3d4ccccd    # 0.05f
        0x3e666666    # 0.225f
        0x3db020c5    # 0.086f
        0x3e6353f8    # 0.222f
        0x3dfbe76d    # 0.123f
        0x3e676c8b    # 0.226f
        0x3e28f5c3    # 0.165f
        0x3e560419    # 0.209f
        0x3e4ed917    # 0.202f
        0x3e51eb85    # 0.205f
        0x3e828f5c    # 0.255f
        0x3e3b645a    # 0.183f
        0x3e9b22d1    # 0.303f
        0x3e2b020c    # 0.167f
        0x3ec18937    # 0.378f
        0x3dfdf3b6    # 0.124f
        0x3edd2f1b    # 0.432f
        0x3d8b4396    # 0.068f
        0x3ef645a2    # 0.481f
        -0x80000000
        0x3ef851ec    # 0.485f
        -0x4272b021    # -0.069f
        0x3ef645a2    # 0.481f
        -0x42020c4a    # -0.124f
        0x3edc28f6    # 0.43f
        -0x41d4fdf4    # -0.167f
        0x3ec08312    # 0.376f
        -0x41c39581    # -0.184f
        0x3e9a9fbe    # 0.302f
        -0x41ae147b    # -0.205f
        0x3e828f5c    # 0.255f
        -0x41ab020c    # -0.208f
        0x3e4dd2f2    # 0.201f
        -0x41989375    # -0.226f
        0x3e28f5c3    # 0.165f
        -0x419cac08    # -0.222f
        0x3df9db23    # 0.122f
        -0x4199999a    # -0.225f
        0x3db020c5    # 0.086f
        -0x41926e98    # -0.232f
        0x3d4ccccd    # 0.05f
        -0x419cac08    # -0.222f
        0x3c75c28f    # 0.015f
        -0x419a9fbe    # -0.224f
        -0x43439581    # -0.023f
        -0x41a6e979    # -0.212f
        -0x42926e98    # -0.058f
        -0x41b22d0e    # -0.201f
        -0x423b645a    # -0.096f
        -0x41ba5e35    # -0.193f
        -0x41ee978d    # -0.142f
        -0x41c28f5c    # -0.185f
        -0x41af1aa0    # -0.204f
        -0x41dd2f1b    # -0.159f
        -0x417ae148    # -0.26f
        -0x4216872b    # -0.114f
        -0x41666666    # -0.3f
        -0x42666666    # -0.075f
        -0x412872b0    # -0.421f
    .end array-data

    .line 56
    :array_1dfa
    .array-data 4
        -0x457ced91    # -0.001f
        -0x410a3d71    # -0.48f
        0x3d9ba5e3    # 0.076f
        -0x41178d50    # -0.454f
        0x3db645a2    # 0.089f
        -0x41851eb8    # -0.245f
        0x3e041893    # 0.129f
        -0x419a9fbe    # -0.224f
        0x3e1374bc    # 0.144f
        -0x41d2f1aa    # -0.169f
        0x3e1fbe77    # 0.156f
        -0x41fef9db    # -0.126f
        0x3e23d70a    # 0.16f
        -0x424fdf3b    # -0.086f
        0x3e29fbe7    # 0.166f
        -0x42a2d0e5    # -0.054f
        0x3e23d70a    # 0.16f
        -0x434bc6a8    # -0.022f
        0x3e21cac1    # 0.158f
        0x3ba3d70a    # 0.005f
        0x3e1fbe77    # 0.156f
        0x3cf5c28f    # 0.03f
        0x3e0a3d71    # 0.135f
        0x3d54fdf4    # 0.052f
        0x3dd70a3d    # 0.105f
        0x3d851eb8    # 0.065f
        0x3ded9168    # 0.116f
        0x3db851ec    # 0.09f
        0x3deb851f    # 0.115f
        0x3de978d5    # 0.114f
        0x3e21cac1    # 0.158f
        0x3e418937    # 0.189f
        0x3e21cac1    # 0.158f
        0x3e7df3b6    # 0.248f
        0x3e0e5604    # 0.139f
        0x3e9b22d1    # 0.303f
        0x3dd0e560    # 0.102f
        0x3eb1a9fc    # 0.347f
        0x3d916873    # 0.071f
        0x3ef8d4fe    # 0.486f
        -0x457ced91    # -0.001f
        0x3ef33333    # 0.475f
        -0x426a7efa    # -0.073f
        0x3ef8d4fe    # 0.486f
        -0x422d0e56    # -0.103f
        0x3eb126e9    # 0.346f
        -0x41f1a9fc    # -0.139f
        0x3e9a9fbe    # 0.302f
        -0x41de353f    # -0.158f
        0x3e7ced91    # 0.247f
        -0x41de353f    # -0.158f
        0x3e408312    # 0.188f
        -0x4216872b    # -0.114f
        0x3de56042    # 0.112f
        -0x42147ae1    # -0.115f
        0x3db43958    # 0.088f
        -0x422b020c    # -0.104f
        0x3d83126f    # 0.064f
        -0x41f4bc6a    # -0.136f
        0x3d54fdf4    # 0.052f
        -0x41e04189    # -0.156f
        0x3cf5c28f    # 0.03f
        -0x41de353f    # -0.158f
        0x3ba3d70a    # 0.005f
        -0x41dd2f1b    # -0.159f
        -0x4353f7cf    # -0.021f
        -0x41d60419    # -0.166f
        -0x42a2d0e5    # -0.054f
        -0x41db22d1    # -0.161f
        -0x424fdf3b    # -0.086f
        -0x41df3b64    # -0.157f
        -0x41fef9db    # -0.126f
        -0x41eb851f    # -0.145f
        -0x41d2f1aa    # -0.169f
        -0x41fae148    # -0.13f
        -0x419ba5e3    # -0.223f
        -0x4247ae14    # -0.09f
        -0x418624dd    # -0.244f
        -0x42624dd3    # -0.077f
        -0x41178d50    # -0.454f
    .end array-data

    .line 57
    :array_1e9e
    .array-data 4
        -0x457ced91    # -0.001f
        -0x4119999a    # -0.45f
        0x3d7df3b6    # 0.062f
        -0x415fbe77    # -0.313f
        0x3dd91687    # 0.106f
        -0x41872b02    # -0.243f
        0x3e072b02    # 0.132f
        -0x41cdd2f2    # -0.174f
        0x3e22d0e5    # 0.159f
        -0x41f6c8b4    # -0.134f
        0x3e2b020c    # 0.167f
        -0x42581062    # -0.082f
        0x3e3b645a    # 0.183f
        -0x42bb645a    # -0.048f
        0x3e418937    # 0.189f
        -0x43cbc6a8    # -0.011f
        0x3e3d70a4    # 0.185f
        0x3ccccccd    # 0.025f
        0x3e47ae14    # 0.195f
        0x3d5d2f1b    # 0.054f
        0x3e4ed917    # 0.202f
        0x3dae147b    # 0.085f
        0x3e560419    # 0.209f
        0x3df3b646    # 0.119f
        0x3e4dd2f2    # 0.201f
        0x3e1a9fbe    # 0.151f
        0x3e48b439
        0x3e3e76c9    # 0.186f
        0x3e624dd3    # 0.221f
        0x3e7be76d    # 0.246f
        0x3e6d9168    # 0.232f
        0x3ea2d0e5    # 0.318f
        0x3e591687    # 0.212f
        0x3ec18937    # 0.378f
        0x3e29fbe7    # 0.166f
        0x3ed2f1aa    # 0.412f
        0x3de353f8    # 0.111f
        0x3edc28f6    # 0.43f
        0x3d5d2f1b    # 0.054f
        0x3eddb22d    # 0.433f
        -0x457ced91    # -0.001f
        0x3ee4dd2f    # 0.447f
        -0x429a9fbe    # -0.056f
        0x3eddb22d    # 0.433f
        -0x42189375    # -0.113f
        0x3edc28f6    # 0.43f
        -0x41d4fdf4    # -0.167f
        0x3ed2f1aa    # 0.412f
        -0x41a6e979    # -0.212f
        0x3ec10625    # 0.377f
        -0x41926e98    # -0.232f
        0x3ea24dd3    # 0.317f
        -0x419eb852    # -0.22f
        0x3e7ae148    # 0.245f
        -0x41b95810    # -0.194f
        0x3e3c6a7f    # 0.184f
        -0x41b33333    # -0.2f
        0x3e19999a    # 0.15f
        -0x41a9fbe7    # -0.209f
        0x3df1a9fc    # 0.118f
        -0x41b126e9    # -0.202f
        0x3dae147b    # 0.085f
        -0x41b95810    # -0.194f
        0x3d6147ae    # 0.055f
        -0x41c28f5c    # -0.185f
        0x3ccccccd    # 0.025f
        -0x41be76c9    # -0.189f
        -0x43cbc6a8    # -0.011f
        -0x41c39581    # -0.184f
        -0x42bb645a    # -0.048f
        -0x41d3f7cf    # -0.168f
        -0x42581062    # -0.082f
        -0x41dc28f6    # -0.16f
        -0x41f7ced9    # -0.133f
        -0x41f7ced9    # -0.133f
        -0x41cdd2f2    # -0.174f
        -0x4224dd2f    # -0.107f
        -0x4189374c    # -0.241f
        -0x427ef9db    # -0.063f
        -0x416147ae    # -0.31f
    .end array-data

    .line 58
    :array_1f42
    .array-data 4
        -0x457ced91    # -0.001f
        -0x4119999a    # -0.45f
        0x3d9374bc    # 0.072f
        -0x41353f7d    # -0.396f
        0x3df5c28f    # 0.12f
        -0x41624dd3    # -0.308f
        0x3e20c49c    # 0.157f
        -0x4183126f    # -0.247f
        0x3e3d70a4    # 0.185f
        -0x41bb645a    # -0.192f
        0x3e4dd2f2    # 0.201f
        -0x41f2b021    # -0.138f
        0x3e5d2f1b    # 0.216f
        -0x423f7cee    # -0.094f
        0x3e6147ae    # 0.22f
        -0x42b74bc7    # -0.049f
        0x3e54fdf4    # 0.208f
        -0x447ced91    # -0.004f
        0x3e624dd3    # 0.221f
        0x3ced9168    # 0.029f
        0x3e839581    # 0.257f
        0x3d83126f    # 0.064f
        0x3e88b439    # 0.267f
        0x3dd91687    # 0.106f
        0x3e8b4396    # 0.272f
        0x3e1ba5e3    # 0.152f
        0x3e8bc6a8    # 0.273f
        0x3e4fdf3b    # 0.203f
        0x3e79db23    # 0.244f
        0x3e77ced9    # 0.242f
        0x3e79db23    # 0.244f
        0x3e9db22d    # 0.308f
        0x3e560419    # 0.209f
        0x3eb43958    # 0.352f
        0x3e3126e9    # 0.173f
        0x3ecfdf3b    # 0.406f
        0x3df1a9fc    # 0.118f
        0x3edc28f6    # 0.43f
        0x3d71a9fc    # 0.059f
        0x3ee353f8    # 0.444f
        -0x457ced91    # -0.001f
        0x3ed1eb85    # 0.41f
        -0x428624dd    # -0.061f
        0x3ee1cac1    # 0.441f
        -0x420c49ba    # -0.119f
        0x3edb22d1    # 0.428f
        -0x41cccccd    # -0.175f
        0x3ecf5c29    # 0.405f
        -0x41a8f5c3    # -0.21f
        0x3eb43958    # 0.352f
        -0x41851eb8    # -0.245f
        0x3e9db22d    # 0.308f
        -0x41851eb8    # -0.245f
        0x3e76c8b4    # 0.241f
        -0x41743958    # -0.273f
        0x3e4fdf3b    # 0.203f
        -0x41743958    # -0.273f
        0x3e1ba5e3    # 0.152f
        -0x41774bc7    # -0.267f
        0x3dd91687    # 0.106f
        -0x417b645a    # -0.259f
        0x3d83126f    # 0.064f
        -0x419cac08    # -0.222f
        0x3ced9168    # 0.029f
        -0x41a7ef9e    # -0.211f
        -0x447ced91    # -0.004f
        -0x419eb852    # -0.22f
        -0x42bb645a    # -0.048f
        -0x41a1cac1    # -0.217f
        -0x423f7cee    # -0.094f
        -0x41b126e9    # -0.202f
        -0x41f3b646    # -0.137f
        -0x41c28f5c    # -0.185f
        -0x41bd70a4    # -0.19f
        -0x41dd2f1b    # -0.159f
        -0x4183126f    # -0.247f
        -0x420624dd    # -0.122f
        -0x41624dd3    # -0.308f
        -0x426872b0    # -0.074f
        -0x41353f7d    # -0.396f
    .end array-data

    .line 59
    :array_1fe6
    .array-data 4
        -0x457ced91    # -0.001f
        -0x411a1cac    # -0.449f
        0x3d83126f    # 0.064f
        -0x41449ba6    # -0.366f
        0x3dc28f5c    # 0.095f
        -0x417ef9db    # -0.252f
        0x3e1a9fbe    # 0.151f
        -0x417d70a4    # -0.255f
        0x3e2d0e56    # 0.169f
        -0x41bc6a7f    # -0.191f
        0x3e4ed917    # 0.202f
        -0x41dd2f1b    # -0.159f
        0x3e5e353f    # 0.217f
        -0x42147ae1    # -0.115f
        0x3e676c8b    # 0.226f
        -0x426c8b44    # -0.072f
        0x3e6d9168    # 0.232f
        -0x42fced91    # -0.032f
        0x3e71a9fc    # 0.236f
        0x3bc49ba6    # 0.006f
        0x3e6e978d    # 0.233f
        0x3d343958    # 0.044f
        0x3e52f1aa    # 0.206f
        0x3d9db22d    # 0.077f
        0x3e624dd3    # 0.221f
        0x3ded9168    # 0.116f
        0x3e645a1d    # 0.223f
        0x3e21cac1    # 0.158f
        0x3e5f3b64    # 0.218f
        0x3e4fdf3b    # 0.203f
        0x3e79db23    # 0.244f
        0x3e93f7cf    # 0.289f
        0x3e4ac083    # 0.198f
        0x3ea2d0e5    # 0.318f
        0x3e3645a2    # 0.178f
        0x3ec9ba5e    # 0.394f
        0x3def9db2    # 0.117f
        0x3ecfdf3b    # 0.406f
        0x3d7df3b6    # 0.062f
        0x3ee1cac1    # 0.441f
        -0x457ced91    # -0.001f
        0x3edcac08    # 0.431f
        -0x427ced91    # -0.064f
        0x3ee1cac1    # 0.441f
        -0x4210624e    # -0.117f
        0x3ecccccd    # 0.4f
        -0x41c9ba5e    # -0.178f
        0x3ec8b439    # 0.392f
        -0x41b43958    # -0.199f
        0x3ea1cac1    # 0.316f
        -0x41851eb8    # -0.245f
        0x3e92f1aa    # 0.287f
        -0x41a0c49c    # -0.218f
        0x3e4ed917    # 0.202f
        -0x419a9fbe    # -0.224f
        0x3e20c49c    # 0.157f
        -0x419cac08    # -0.222f
        0x3ded9168    # 0.116f
        -0x41ad0e56    # -0.206f
        0x3d9ba5e3    # 0.076f
        -0x41926e98    # -0.232f
        0x3d343958    # 0.044f
        -0x418e5604    # -0.236f
        0x3bc49ba6    # 0.006f
        -0x41916873    # -0.233f
        -0x42fced91    # -0.032f
        -0x41978d50    # -0.227f
        -0x426c8b44    # -0.072f
        -0x41a0c49c    # -0.218f
        -0x4216872b    # -0.114f
        -0x41af1aa0    # -0.204f
        -0x41dd2f1b    # -0.159f
        -0x41cfdf3b    # -0.172f
        -0x41bc6a7f    # -0.191f
        -0x41e24dd3    # -0.154f
        -0x417ced91    # -0.256f
        -0x42395810    # -0.097f
        -0x417e76c9    # -0.253f
        -0x4278d4fe    # -0.066f
        -0x4145a1cb    # -0.364f
    .end array-data

    .line 60
    :array_208a
    .array-data 4
        -0x457ced91    # -0.001f
        -0x411a1cac    # -0.449f
        0x3d916873    # 0.071f
        -0x41428f5c    # -0.37f
        0x3ddd2f1b    # 0.108f
        -0x417f7cee    # -0.251f
        0x3e0d4fdf    # 0.138f
        -0x41be76c9    # -0.189f
        0x3e26e979    # 0.163f
        -0x41ef9db2    # -0.141f
        0x3e408312    # 0.188f
        -0x4228f5c3    # -0.105f
        0x3e73b646    # 0.238f
        -0x4247ae14    # -0.09f
        0x3e8dd2f2    # 0.277f
        -0x42926e98    # -0.058f
        0x3e926e98    # 0.286f
        -0x43dc28f6    # -0.01f
        0x3e8ed917    # 0.279f
        0x3d1fbe77    # 0.039f
        0x3e92f1aa    # 0.287f
        0x3dac0831    # 0.084f
        0x3e8f5c29    # 0.28f
        0x3e03126f    # 0.128f
        0x3e93f7cf    # 0.289f
        0x3e3645a2    # 0.178f
        0x3e8fdf3b    # 0.281f
        0x3e6872b0    # 0.227f
        0x3e9fbe77    # 0.312f
        0x3e9f3b64    # 0.311f
        0x3e89ba5e    # 0.269f
        0x3eb4bc6a    # 0.353f
        0x3e79db23    # 0.244f
        0x3ed70a3d    # 0.42f
        0x3e3020c5    # 0.172f
        0x3ed89375    # 0.423f
        0x3ddf3b64    # 0.109f
        0x3ed81062    # 0.422f
        0x3d48b439    # 0.049f
        0x3eca3d71    # 0.395f
        -0x457ced91    # -0.001f
        0x3ee66666    # 0.45f
        -0x42b33333    # -0.05f
        0x3ec9374c    # 0.393f
        -0x421eb852    # -0.11f
        0x3ed78d50    # 0.421f
        -0x41ced917    # -0.173f
        0x3ed81062    # 0.422f
        -0x418624dd    # -0.244f
        0x3ed70a3d    # 0.42f
        -0x4175c28f    # -0.27f
        0x3eb4bc6a    # 0.353f
        -0x41604189    # -0.312f
        0x3e9eb852    # 0.31f
        -0x416f9db2    # -0.282f
        0x3e6872b0    # 0.227f
        -0x416b851f    # -0.29f
        0x3e3645a2    # 0.178f
        -0x4170a3d7    # -0.28f
        0x3e03126f    # 0.128f
        -0x416d0e56    # -0.287f
        0x3dac0831    # 0.084f
        -0x4170a3d7    # -0.28f
        0x3d1fbe77    # 0.039f
        -0x416d9168    # -0.286f
        -0x43ec8b44    # -0.009f
        -0x41722d0e    # -0.277f
        -0x4296872b    # -0.057f
        -0x418b4396    # -0.239f
        -0x4247ae14    # -0.09f
        -0x41bf7cee    # -0.188f
        -0x422b020c    # -0.104f
        -0x41d81062    # -0.164f
        -0x41ef9db2    # -0.141f
        -0x41f2b021    # -0.138f
        -0x41c08312    # -0.187f
        -0x4220c49c    # -0.109f
        -0x417f7cee    # -0.251f
        -0x426c8b44    # -0.072f
        -0x4143126f    # -0.369f
    .end array-data

    .line 61
    :array_212e
    .array-data 4
        -0x457ced91    # -0.001f
        -0x411a9fbe    # -0.448f
        0x3d851eb8    # 0.065f
        -0x413e76c9    # -0.378f
        0x3de978d5    # 0.114f
        -0x415eb852    # -0.315f
        0x3e333333    # 0.175f
        -0x416353f8    # -0.306f
        0x3e9374bc    # 0.288f
        -0x4148b439    # -0.358f
        0x3ebb645a    # 0.366f
        -0x41581062    # -0.328f
        0x3ec624dd    # 0.387f
        -0x41872b02    # -0.243f
        0x3eb4bc6a    # 0.353f
        -0x41ef9db2    # -0.141f
        0x3eca3d71    # 0.395f
        -0x4249ba5e    # -0.089f
        0x3ecdd2f2    # 0.402f
        -0x43333333    # -0.025f
        0x3ecf5c29    # 0.405f
        0x3d1fbe77    # 0.039f
        0x3ecd4fdf    # 0.401f
        0x3dd2f1aa    # 0.103f
        0x3ebb645a    # 0.366f
        0x3e21cac1    # 0.158f
        0x3ecf5c29    # 0.405f
        0x3e7be76d    # 0.246f
        0x3ecdd2f2    # 0.402f
        0x3ea9fbe7    # 0.332f
        0x3eb2b021    # 0.349f
        0x3ec72b02    # 0.389f
        0x3e818937    # 0.253f
        0x3ec6a7f0    # 0.388f
        0x3e54fdf4    # 0.208f
        0x3ee5e354    # 0.449f
        0x3e072b02    # 0.132f
        0x3ee56042    # 0.448f
        0x3d810625    # 0.063f
        0x3ee353f8    # 0.444f
        -0x457ced91    # -0.001f
        0x3ed70a3d    # 0.42f
        -0x427ae148    # -0.065f
        0x3ee2d0e5    # 0.443f
        -0x41f6c8b4    # -0.134f
        0x3ee56042    # 0.448f
        -0x41a8f5c3    # -0.21f
        0x3ee5e354    # 0.449f
        -0x417df3b6    # -0.254f
        0x3ec6a7f0    # 0.388f
        -0x414ccccd    # -0.35f
        0x3ec72b02    # 0.389f
        -0x41322d0e    # -0.402f
        0x3ea978d5    # 0.331f
        -0x412f9db2    # -0.407f
        0x3e7be76d    # 0.246f
        -0x41449ba6    # -0.366f
        0x3e21cac1    # 0.158f
        -0x41322d0e    # -0.402f
        0x3dd2f1aa    # 0.103f
        -0x412f9db2    # -0.407f
        0x3d1fbe77    # 0.039f
        -0x4131a9fc    # -0.403f
        -0x43333333    # -0.025f
        -0x4135c28f    # -0.395f
        -0x4249ba5e    # -0.089f
        -0x414b4396    # -0.353f
        -0x41f0a3d7    # -0.14f
        -0x41395810    # -0.388f
        -0x41883127    # -0.242f
        -0x41441893    # -0.367f
        -0x41589375    # -0.327f
        -0x416c0831    # -0.289f
        -0x4148b439    # -0.358f
        -0x41cbc6a8    # -0.176f
        -0x4163d70a    # -0.305f
        -0x42147ae1    # -0.115f
        -0x415fbe77    # -0.313f
        -0x4274bc6a    # -0.068f
        -0x413c6a7f    # -0.382f
    .end array-data

    .line 62
    :array_21d2
    .array-data 4
        -0x457ced91    # -0.001f
        -0x411a9fbe    # -0.448f
        0x3d6147ae    # 0.055f
        -0x417020c5    # -0.281f
        0x3dced917    # 0.101f
        -0x418624dd    # -0.244f
        0x3e03126f    # 0.128f
        -0x41c39581    # -0.184f
        0x3e16872b    # 0.147f
        -0x41f6c8b4    # -0.134f
        0x3dac0831    # 0.084f
        -0x438a3d71    # -0.015f
        0x3e7ef9db    # 0.249f
        -0x421a9fbe    # -0.112f
        0x3eab020c    # 0.334f
        -0x423126e9    # -0.101f
        0x3eca3d71    # 0.395f
        -0x42926e98    # -0.058f
        0x3edcac08    # 0.431f
        0x3b03126f    # 0.002f
        0x3edeb852    # 0.435f
        0x3d8f5c29    # 0.07f
        0x3ece5604    # 0.403f
        0x3e09374c    # 0.134f
        0x3eae147b    # 0.34f
        0x3e395810    # 0.181f
        0x3e73b646    # 0.238f
        0x3e449ba6    # 0.192f
        0x3ddf3b64    # 0.109f
        0x3e19999a    # 0.15f
        0x3e47ae14    # 0.195f
        0x3e883127    # 0.266f
        0x3e4ac083    # 0.198f
        0x3eaf9db2    # 0.343f
        0x3e0b4396    # 0.136f
        0x3ead0e56    # 0.338f
        0x3ddf3b64    # 0.109f
        0x3ed16873    # 0.409f
        0x3d71a9fc    # 0.059f
        0x3ee45a1d    # 0.446f
        -0x457ced91    # -0.001f
        0x3ee2d0e5    # 0.443f
        -0x428a3d71    # -0.06f
        0x3ee3d70a    # 0.445f
        -0x421cac08    # -0.111f
        0x3ed16873    # 0.409f
        -0x41f3b646    # -0.137f
        0x3eac8b44    # 0.337f
        -0x41b33333    # -0.2f
        0x3eb020c5    # 0.344f
        -0x41bd70a4    # -0.19f
        0x3e849ba6    # 0.259f
        -0x421eb852    # -0.11f
        0x3e189375    # 0.149f
        -0x418a3d71    # -0.24f
        0x3e449ba6    # 0.192f
        -0x41516873    # -0.341f
        0x3e395810    # 0.181f
        -0x413126e9    # -0.404f
        0x3e09374c    # 0.134f
        -0x4120c49c    # -0.436f
        0x3d8f5c29    # 0.07f
        -0x4122d0e5    # -0.432f
        0x3b03126f    # 0.002f
        -0x41353f7d    # -0.396f
        -0x42926e98    # -0.058f
        -0x4153f7cf    # -0.336f
        -0x423126e9    # -0.101f
        -0x417f7cee    # -0.251f
        -0x421a9fbe    # -0.112f
        -0x4253f7cf    # -0.084f
        -0x43ab020c    # -0.013f
        -0x41e872b0    # -0.148f
        -0x41f8d4fe    # -0.132f
        -0x41fae148    # -0.13f
        -0x41c49ba6    # -0.183f
        -0x422f1aa0    # -0.102f
        -0x41883127    # -0.242f
        -0x429a9fbe    # -0.056f
        -0x417126e9    # -0.279f
    .end array-data

    .line 63
    :array_2276
    .array-data 4
        -0x457ced91    # -0.001f
        -0x4119999a    # -0.45f
        0x3d83126f    # 0.064f
        -0x415d2f1b    # -0.318f
        0x3dd2f1aa    # 0.103f
        -0x41978d50    # -0.227f
        0x3e000000    # 0.125f
        -0x41e24dd3    # -0.154f
        0x3e010625    # 0.126f
        -0x42581062    # -0.082f
        0x3e116873    # 0.142f
        -0x42af1aa0    # -0.051f
        0x3e0d4fdf    # 0.138f
        -0x43ec8b44    # -0.009f
        0x3e10624e    # 0.141f
        0x3ca3d70a    # 0.02f
        0x3e147ae1    # 0.145f
        0x3d3851ec    # 0.045f
        0x3e189375    # 0.149f
        0x3d8d4fdf    # 0.069f
        0x3e158106    # 0.146f
        0x3dbc6a7f    # 0.092f
        0x3e189375    # 0.149f
        0x3ded9168    # 0.116f
        0x3e158106    # 0.146f
        0x3e0f5c29    # 0.14f
        0x3e22d0e5    # 0.159f
        0x3e3126e9    # 0.173f
        0x3e45a1cb    # 0.193f
        0x3e6e978d    # 0.233f
        0x3e50e560    # 0.204f
        0x3e981062    # 0.297f
        0x3e46a7f0    # 0.194f
        0x3eb851ec    # 0.36f
        0x3e2b020c    # 0.167f
        0x3ed78d50    # 0.421f
        0x3de147ae    # 0.11f
        0x3eddb22d    # 0.433f
        0x3d656042    # 0.056f
        0x3ee4dd2f    # 0.447f
        -0x457ced91    # -0.001f
        0x3ee5e354    # 0.449f
        -0x4296872b    # -0.057f
        0x3ee45a1d    # 0.446f
        -0x421eb852    # -0.11f
        0x3edc28f6    # 0.43f
        -0x41d3f7cf    # -0.168f
        0x3ed70a3d    # 0.42f
        -0x41b851ec    # -0.195f
        0x3eb7ced9    # 0.359f
        -0x41ae147b    # -0.205f
        0x3e981062    # 0.297f
        -0x41ba5e35    # -0.193f
        0x3e6d9168    # 0.232f
        -0x41dd2f1b    # -0.159f
        0x3e3126e9    # 0.173f
        -0x41ea7efa    # -0.146f
        0x3e0f5c29    # 0.14f
        -0x41e66666    # -0.15f
        0x3ded9168    # 0.116f
        -0x41ea7efa    # -0.146f
        0x3dbc6a7f    # 0.092f
        -0x41e76c8b    # -0.149f
        0x3d8d4fdf    # 0.069f
        -0x41ea7efa    # -0.146f
        0x3d3851ec    # 0.045f
        -0x41ee978d    # -0.142f
        0x3ca3d70a    # 0.02f
        -0x41f2b021    # -0.138f
        -0x43fced91    # -0.008f
        -0x41ee978d    # -0.142f
        -0x42b74bc7    # -0.049f
        -0x41fef9db    # -0.126f
        -0x425c28f6    # -0.08f
        -0x42000000    # -0.125f
        -0x41e56042    # -0.151f
        -0x422b020c    # -0.104f
        -0x41989375    # -0.226f
        -0x427ae148    # -0.065f
        -0x415db22d    # -0.317f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/lang/String;)[F
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceEdges;->E:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method
