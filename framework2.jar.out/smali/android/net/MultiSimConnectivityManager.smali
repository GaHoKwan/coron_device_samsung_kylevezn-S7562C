.class public Landroid/net/MultiSimConnectivityManager;
.super Landroid/net/ConnectivityManager;
.source "MultiSimConnectivityManager.java"


# static fields
.field public static final ACTION_DATA_CONNECTION_CHANGE_FAIL:Ljava/lang/String; = "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

.field public static final ACTION_DATA_CONNECTION_CHANGE_SUCCESS:Ljava/lang/String; = "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

.field public static final ACTION_DATA_RECONNECTION_FAIL:Ljava/lang/String; = "android.net.conn.DATA_RECONNECTION_FAIL"

.field public static final EXTRA_DATA_CONNECTION_SIMSLOT:Ljava/lang/String; = "simSlot"

#the value of this static final field might be set in the static constructor
.field public static final MAX_NETWORK_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_RADIO_TYPE:I = 0x0

.field public static final MAX_TYPE_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "MultiSimConnectivityManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/MultiSimConnectivityManager;->MAX_RADIO_TYPE:I

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/MultiSimConnectivityManager;->MAX_NETWORK_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 195
    return-void
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 94
    rem-int/lit8 v0, p0, 0x32

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "MOBILE"

    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 104
    :pswitch_4
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 106
    :pswitch_5
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 108
    :pswitch_6
    const-string v0, "WIMAX"

    goto :goto_0

    .line 110
    :pswitch_7
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 112
    :pswitch_8
    const-string v0, "DUMMY"

    goto :goto_0

    .line 114
    :pswitch_9
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 116
    :pswitch_a
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    .line 118
    :pswitch_b
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    .line 120
    :pswitch_c
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    .line 122
    :pswitch_d
    const-string v0, "WIFI_P2P"

    goto :goto_0

    .line 124
    :pswitch_e
    const-string v0, "MOBILE_BIP"

    goto :goto_0

    .line 127
    :pswitch_f
    const-string v0, "MOBILE_CMDM"

    goto :goto_0

    .line 129
    :pswitch_10
    const-string v0, "MOBILE_CMMAIL"

    goto :goto_0

    .line 131
    :pswitch_11
    const-string v0, "MOBILE_WAP"

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static getSimSlotFromTypeMobile(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 183
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    if-ge p0, v0, :cond_0

    .line 184
    div-int/lit8 v0, p0, 0x32

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTypeMobileFromSimSlot(II)I
    .locals 1
    .parameter "networkType"
    .parameter "simSlot"

    .prologue
    .line 163
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 164
    packed-switch p0, :pswitch_data_0

    .line 179
    .end local p0
    :cond_0
    :goto_0
    :pswitch_0
    return p0

    .line 173
    .restart local p0
    :pswitch_1
    mul-int/lit8 v0, p1, 0x32

    add-int/2addr p0, v0

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 141
    rem-int/lit8 v0, p0, 0x32

    packed-switch v0, :pswitch_data_0

    .line 158
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 156
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onSwitchToSim1DataNetworkCallback(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->onSwitchToSim1DataNetworkCallback(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSwitchToSim2DataNetworkCallback(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->onSwitchToSim2DataNetworkCallback(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchToSim1DataNetwork()V
    .locals 1

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->switchToSim1DataNetwork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchToSim2DataNetwork()V
    .locals 1

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->switchToSim2DataNetwork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method
