.class Lcom/sec/android/allshare/TVControllerImpl;
.super Lcom/sec/android/allshare/control/TVController;
.source "TVControllerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/TVControllerImpl$4;,
        Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;,
        Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;,
        Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;,
        Lcom/sec/android/allshare/TVControllerImpl$MouseButton;
    }
.end annotation


# static fields
.field public static final REMOTE_CONTROL_MOUSEWHEEL:I = 0x1b

.field public static final REMOTE_CONTROL_TOUCHDOWN:I = 0xb

.field public static final REMOTE_CONTROL_TOUCHMOVE:I = 0xd

.field public static final REMOTE_CONTROL_TOUCHUP:I = 0xc

.field private static final TAG:Ljava/lang/String; = "TVControllerImpl"


# instance fields
.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

.field private mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

.field private mEventHandler:Landroid/os/Handler;

.field private mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;

.field private mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

.field private mIsConnected:Z

.field private mIsSubscribed:Z

.field private mMACAddress:Ljava/lang/String;

.field private mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

.field private mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;

.field private mTouchDX:I

.field private mTouchDY:I


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 13
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/16 v9, 0x10

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 81
    invoke-direct {p0}, Lcom/sec/android/allshare/control/TVController;-><init>()V

    .line 55
    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 57
    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 59
    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;

    .line 61
    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    .line 63
    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    .line 73
    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 75
    iput-boolean v10, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    .line 77
    iput-boolean v10, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsSubscribed:Z

    .line 79
    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;

    .line 143
    new-instance v7, Lcom/sec/android/allshare/TVControllerImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/sec/android/allshare/TVControllerImpl$1;-><init>(Lcom/sec/android/allshare/TVControllerImpl;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventHandler:Landroid/os/Handler;

    .line 248
    new-instance v7, Lcom/sec/android/allshare/TVControllerImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/sec/android/allshare/TVControllerImpl$2;-><init>(Lcom/sec/android/allshare/TVControllerImpl;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 269
    new-instance v7, Lcom/sec/android/allshare/TVControllerImpl$3;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/sec/android/allshare/TVControllerImpl$3;-><init>(Lcom/sec/android/allshare/TVControllerImpl;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 821
    iput v10, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDX:I

    .line 823
    iput v10, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDY:I

    .line 82
    if-nez p1, :cond_0

    .line 84
    const-string v7, "TVControllerImpl"

    const-string v8, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 90
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 92
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    .local v0, conManager:Landroid/net/ConnectivityManager;
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 100
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    const-string v7, "wifi"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 101
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 103
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-ne v7, v11, :cond_3

    .line 104
    iget-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mMACAddress:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 105
    iget-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mMACAddress:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, strMACPart:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x6

    if-lt v7, v8, :cond_1

    .line 108
    aget-object v7, v5, v10

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 109
    .local v2, nTempMAC1:I
    aget-object v7, v5, v12

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 111
    .local v3, nTempMAC2:I
    or-int/lit8 v2, v2, 0x2

    .line 112
    xor-int/lit16 v3, v3, 0x80

    .line 114
    const-string v7, "%02x"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v10

    .line 115
    const-string v7, "%02x"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v12

    .line 119
    .end local v2           #nTempMAC1:I
    .end local v3           #nTempMAC2:I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 127
    .end local v0           #conManager:Landroid/net/ConnectivityManager;
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #strMACPart:[Ljava/lang/String;
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 128
    iput-object p2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 130
    new-instance v7, Lcom/sec/android/allshare/IAppControlAPI;

    invoke-direct {v7}, Lcom/sec/android/allshare/IAppControlAPI;-><init>()V

    iput-object v7, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    goto/16 :goto_0

    .line 123
    .restart local v0       #conManager:Landroid/net/ConnectivityManager;
    .restart local v4       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v6       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v7, "TVControllerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "networkInfo.isConnected() is false, MAC : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/allshare/TVControllerImpl;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/sec/android/allshare/TVControllerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/TVControllerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->requestTVInformation()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/allshare/TVControllerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$TVInformation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/allshare/TVControllerImpl;Lcom/sec/android/allshare/control/TVController$TVInformation;)Lcom/sec/android/allshare/control/TVController$TVInformation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/IAppControlAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    return-object v0
.end method

.method private getMouseButtonType(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)I
    .locals 3
    .parameter "button"

    .prologue
    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, buttonType:I
    sget-object v1, Lcom/sec/android/allshare/TVControllerImpl$4;->$SwitchMap$com$sec$android$allshare$TVControllerImpl$MouseButton:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1069
    :goto_0
    return v0

    .line 1045
    :pswitch_0
    const/4 v0, 0x0

    .line 1046
    goto :goto_0

    .line 1049
    :pswitch_1
    const/4 v0, 0x1

    .line 1050
    goto :goto_0

    .line 1053
    :pswitch_2
    const/4 v0, 0x2

    .line 1054
    goto :goto_0

    .line 1057
    :pswitch_3
    const/4 v0, 0x3

    .line 1058
    goto :goto_0

    .line 1061
    :pswitch_4
    const/4 v0, 0x4

    .line 1062
    goto :goto_0

    .line 1065
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private innerDisconnect()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0, p0}, Lcom/sec/android/allshare/IAppControlAPI;->removeControlEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)Z

    .line 685
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseDestroy()V

    .line 686
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->stopControl()Z

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 690
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/control/TVController$IEventListener;->onDisconnected(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 693
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    .line 694
    return-void
.end method

.method private isNewerVersionThan2011()Z
    .locals 3

    .prologue
    .line 1944
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;

    if-eqz v2, :cond_0

    .line 1945
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTVInformation:Lcom/sec/android/allshare/control/TVController$TVInformation;

    invoke-virtual {v2}, Lcom/sec/android/allshare/control/TVController$TVInformation;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 1947
    .local v1, version:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1948
    const-string v2, "2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1949
    .local v0, nCompare:I
    if-ltz v0, :cond_0

    .line 1950
    const/4 v2, 0x1

    .line 1955
    .end local v0           #nCompare:I
    .end local v1           #version:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestTVInformation()V
    .locals 4

    .prologue
    .line 739
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 740
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 753
    :goto_0
    return-void

    .line 745
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 746
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GET_DTV_INIT_INFO"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 752
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method


# virtual methods
.method public browserScrollDown()V
    .locals 4

    .prologue
    .line 1778
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1779
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1781
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1782
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollDownResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1815
    :cond_1
    :goto_0
    return-void

    .line 1789
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1790
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1791
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollDownResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1798
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1799
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1800
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollDownResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1807
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1808
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1810
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_BROWSER_SCROLLDOWN"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1814
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public browserScrollUp()V
    .locals 4

    .prologue
    .line 1819
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1820
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1822
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1823
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollUpResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1856
    :cond_1
    :goto_0
    return-void

    .line 1830
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1831
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1832
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollUpResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1839
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1840
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1841
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserScrollUpResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1848
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1849
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1851
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_BROWSER_SCROLLUP"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1855
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public browserZoomDefault()V
    .locals 4

    .prologue
    .line 1552
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1553
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1555
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1556
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomDefaultResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1589
    :cond_1
    :goto_0
    return-void

    .line 1563
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1564
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1565
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomDefaultResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1572
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1573
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1574
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomDefaultResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1581
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1582
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1584
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_ZOOMDEFAULT"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1588
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public browserZoomIn()V
    .locals 4

    .prologue
    .line 1469
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1470
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1472
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1473
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomInResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1506
    :cond_1
    :goto_0
    return-void

    .line 1480
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1481
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1482
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomInResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1489
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1490
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1491
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomInResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1498
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1499
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1501
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_ZOOMIN"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1505
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public browserZoomOut()V
    .locals 4

    .prologue
    .line 1510
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1511
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1513
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1514
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomOutResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1548
    :cond_1
    :goto_0
    return-void

    .line 1521
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1522
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1523
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomOutResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1531
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1532
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1533
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onBrowserZoomOutResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1540
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1541
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1543
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_ZOOMOUT"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1547
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public closeWebPage()V
    .locals 4

    .prologue
    .line 1141
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1142
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1144
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1145
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onCloseWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1178
    :cond_1
    :goto_0
    return-void

    .line 1152
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1153
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onCloseWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1161
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1162
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1163
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onCloseWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1170
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1171
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1173
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_STOP_BROWSER"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1177
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public declared-synchronized connect()V
    .locals 5

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 658
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 666
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v1}, Lcom/sec/android/allshare/IAppControlAPI;->stopControl()Z

    move-result v0

    .line 668
    .local v0, bRet:Z
    if-nez v0, :cond_3

    .line 669
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 655
    .end local v0           #bRet:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 674
    .restart local v0       #bRet:Z
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v1, p0}, Lcom/sec/android/allshare/IAppControlAPI;->setOnEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 675
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mMACAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/allshare/IAppControlAPI;->startControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 676
    if-nez v0, :cond_1

    .line 677
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public controlEvent(Lcom/sec/android/allshare/EventSync;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1077
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 1078
    iget v1, p1, Lcom/sec/android/allshare/EventSync;->mWhat:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1079
    iget v1, p1, Lcom/sec/android/allshare/EventSync;->mArg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1080
    iget v1, p1, Lcom/sec/android/allshare/EventSync;->mArg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1081
    iget-object v1, p1, Lcom/sec/android/allshare/EventSync;->mStr:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1083
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1086
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    .prologue
    .line 698
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onDisconnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 704
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 709
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_5

    .line 710
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v0, :cond_4

    .line 711
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onDisconnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 715
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 720
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v0, :cond_2

    .line 721
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 723
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onDisconnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getBrowserMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1182
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1183
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1185
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1186
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    .line 1219
    :cond_1
    :goto_0
    return-void

    .line 1193
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1194
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1195
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1202
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1203
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1204
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1211
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1212
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1214
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GETBROWSERMODE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1218
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public getBrowserURL()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1223
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1224
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1226
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1227
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserURLResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 1260
    :cond_1
    :goto_0
    return-void

    .line 1234
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1235
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1236
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserURLResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1243
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1244
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1245
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetBrowserURLResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1252
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1253
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1255
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTCURRENTURL"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1259
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 588
    const-string v0, ""

    .line 590
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTVInformation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1731
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1732
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1734
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1735
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetTVInformationResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$TVInformation;Lcom/sec/android/allshare/ERROR;)V

    .line 1774
    :cond_1
    :goto_0
    return-void

    .line 1742
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1743
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1744
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGetTVInformationResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$TVInformation;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1752
    :cond_3
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1753
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1755
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GET_DTV_INFORMATION"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1759
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public goHomePage()V
    .locals 4

    .prologue
    .line 1264
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1265
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1267
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1268
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoHomePageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1301
    :cond_1
    :goto_0
    return-void

    .line 1275
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1276
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1277
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoHomePageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1284
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1285
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1286
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoHomePageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1293
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1294
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1296
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_GOHOME_BROWSER"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1300
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public goNextWebPage()V
    .locals 4

    .prologue
    .line 1387
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1388
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1390
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1391
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoNextPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1424
    :cond_1
    :goto_0
    return-void

    .line 1398
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1399
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1400
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoNextPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1407
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1408
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1409
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoNextPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1416
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1417
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1419
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_NEXTPAGE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1423
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public goPreviousWebPage()V
    .locals 4

    .prologue
    .line 1428
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1429
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1431
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1432
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoPreviousPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1465
    :cond_1
    :goto_0
    return-void

    .line 1439
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1440
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1441
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoPreviousPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1448
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1449
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1450
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onGoPreviousPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1457
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1458
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1460
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_PREVIOUSPAGE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1464
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 732
    const/4 v0, 0x0

    .line 735
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    goto :goto_0
.end method

.method public openWebPage(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 1090
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1091
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1093
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1094
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onOpenWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 1137
    :cond_1
    :goto_0
    return-void

    .line 1101
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1102
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1103
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onOpenWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1110
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1111
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1112
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onOpenWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1119
    :cond_4
    if-nez p1, :cond_5

    .line 1120
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1121
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onOpenWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1128
    :cond_5
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1129
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1131
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v2, "BUNDLE_STRING_BROWSER_URL"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_RUN_BROWSER"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1136
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public refreshWebPage()V
    .locals 4

    .prologue
    .line 1305
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1306
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1308
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1309
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onRefreshWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1342
    :cond_1
    :goto_0
    return-void

    .line 1316
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1317
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1318
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onRefreshWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1325
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1326
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1327
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onRefreshWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1334
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1335
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1337
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_REFRESH"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1341
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 1962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsSubscribed:Z

    .line 1963
    return-void
.end method

.method public sendKeyboardEnd()Lcom/sec/android/allshare/ERROR;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 809
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 818
    :goto_0
    return-object v0

    .line 812
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 813
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendKeyboardEnd()V

    .line 818
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendKeyboardString(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;
    .locals 2
    .parameter "text"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 788
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 801
    :goto_0
    return-object v0

    .line 791
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 792
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 795
    :cond_2
    if-nez p1, :cond_3

    .line 796
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/allshare/IAppControlAPI;->sendKeyboardStringCommand(Ljava/lang/String;I)V

    .line 801
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendMouseClick(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)Lcom/sec/android/allshare/ERROR;
    .locals 7
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 997
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 1012
    :goto_0
    return-object v0

    .line 1000
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 1001
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 1004
    :cond_2
    if-nez p1, :cond_3

    .line 1005
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 1008
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/TVControllerImpl;->getMouseButtonType(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)I

    move-result v6

    .line 1009
    .local v6, buttonType:I
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xb

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseProcess(IIIIII)V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xc

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseProcess(IIIIII)V

    .line 1012
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendMouseDown(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)Lcom/sec/android/allshare/ERROR;
    .locals 7
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 931
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 934
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 948
    :goto_0
    return-object v0

    .line 937
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 938
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 941
    :cond_2
    if-nez p1, :cond_3

    .line 942
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 945
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/TVControllerImpl;->getMouseButtonType(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)I

    move-result v6

    .line 946
    .local v6, buttonType:I
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xb

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseProcess(IIIIII)V

    .line 948
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendMouseMove(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;II)Lcom/sec/android/allshare/ERROR;
    .locals 7
    .parameter "button"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 953
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 955
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 969
    :goto_0
    return-object v0

    .line 958
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 959
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 962
    :cond_2
    if-nez p1, :cond_3

    .line 963
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 966
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/TVControllerImpl;->getMouseButtonType(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)I

    move-result v6

    .line 967
    .local v6, buttonType:I
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xd

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseProcess(IIIIII)V

    .line 969
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendMouseUp(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)Lcom/sec/android/allshare/ERROR;
    .locals 7
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 973
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 974
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 976
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 990
    :goto_0
    return-object v0

    .line 979
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 980
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 983
    :cond_2
    if-nez p1, :cond_3

    .line 984
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 987
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/TVControllerImpl;->getMouseButtonType(Lcom/sec/android/allshare/TVControllerImpl$MouseButton;)I

    move-result v6

    .line 988
    .local v6, buttonType:I
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xc

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseProcess(IIIIII)V

    .line 990
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendMouseWheel(Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;)Lcom/sec/android/allshare/ERROR;
    .locals 7
    .parameter "wheel"

    .prologue
    const/16 v1, 0x1b

    const/4 v6, 0x7

    const/4 v2, 0x0

    .line 1016
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1019
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 1038
    :goto_0
    return-object v0

    .line 1022
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 1023
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 1026
    :cond_2
    if-nez p1, :cond_3

    .line 1027
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 1030
    :cond_3
    sget-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->UP:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1031
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v5, 0x64

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseProcess(IIIIII)V

    .line 1038
    :cond_4
    :goto_1
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 1033
    :cond_5
    sget-object v0, Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;->DOWN:Lcom/sec/android/allshare/TVControllerImpl$MouseWheelAction;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1034
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v5, -0x64

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseProcess(IIIIII)V

    goto :goto_1
.end method

.method public sendRemoteKey(Lcom/sec/android/allshare/control/TVController$RemoteKey;)Lcom/sec/android/allshare/ERROR;
    .locals 3
    .parameter "key"

    .prologue
    .line 757
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 760
    sget-object v1, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 780
    :goto_0
    return-object v1

    .line 763
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v1, :cond_2

    .line 764
    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 767
    :cond_2
    if-nez p1, :cond_3

    .line 768
    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 771
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, strKeyValue:Ljava/lang/String;
    const-string v1, "KEY_BLUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 773
    const-string v0, "KEY_CYAN"

    .line 778
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/allshare/IAppControlAPI;->sendRemoteControlKey(Ljava/lang/String;I)V

    .line 780
    sget-object v1, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 774
    :cond_5
    const-string v1, "KEY_DASH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 775
    const-string v0, "KEY_PLUS100"

    goto :goto_1
.end method

.method public sendTouchClick()Lcom/sec/android/allshare/ERROR;
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 884
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 886
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 895
    :goto_0
    return-object v0

    .line 889
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 890
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    sget-object v1, Lcom/sec/android/allshare/control/TVController$RemoteKey;->KEY_ENTER:Lcom/sec/android/allshare/control/TVController$RemoteKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/allshare/IAppControlAPI;->sendRemoteControlKey(Ljava/lang/String;I)V

    .line 895
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendTouchDown()Lcom/sec/android/allshare/ERROR;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 827
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 830
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 842
    :goto_0
    return-object v0

    .line 833
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 834
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 837
    :cond_2
    iput v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDX:I

    .line 838
    iput v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDY:I

    .line 840
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xb

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    .line 842
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendTouchMove(II)Lcom/sec/android/allshare/ERROR;
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 850
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 862
    :goto_0
    return-object v0

    .line 853
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 854
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 857
    :cond_2
    iget v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDX:I

    .line 858
    iget v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDY:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDY:I

    .line 860
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xd

    iget v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDX:I

    iget v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDY:I

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    .line 862
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public sendTouchUp()Lcom/sec/android/allshare/ERROR;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 867
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 870
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 879
    :goto_0
    return-object v0

    .line 873
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 874
    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xc

    iget v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDX:I

    iget v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mTouchDY:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    .line 879
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0
.end method

.method public setBrowserMode(Lcom/sec/android/allshare/control/TVController$BrowserMode;)V
    .locals 4
    .parameter "browserMode"

    .prologue
    .line 1593
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1594
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1596
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1597
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onSetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    .line 1646
    :cond_1
    :goto_0
    return-void

    .line 1604
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1605
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1606
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onSetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1613
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1614
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1615
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onSetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1622
    :cond_4
    if-nez p1, :cond_5

    .line 1623
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1624
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, p1, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onSetBrowserModeResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/control/TVController$BrowserMode;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1631
    :cond_5
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1632
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1634
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_MODE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1637
    sget-object v2, Lcom/sec/android/allshare/control/TVController$BrowserMode;->LINK_BROWSING:Lcom/sec/android/allshare/control/TVController$BrowserMode;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1638
    const-string v2, "BUNDLE_STRING_BROWSER_INPUT_MODE"

    const-string v3, "SetTabMode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1645
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0

    .line 1640
    :cond_6
    const-string v2, "BUNDLE_STRING_BROWSER_INPUT_MODE"

    const-string v3, "SetPointerMode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setEventListener(Lcom/sec/android/allshare/control/TVController$IEventListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 629
    :cond_0
    const-string v0, "TVControllerImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 633
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;

    .line 635
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 636
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 639
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 640
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsSubscribed:Z

    goto :goto_0
.end method

.method public setResponseListener(Lcom/sec/android/allshare/control/TVController$IResponseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    .line 651
    return-void
.end method

.method public stopWebPageLoading()V
    .locals 4

    .prologue
    .line 1346
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1347
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->innerDisconnect()V

    .line 1349
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onStopWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    .line 1383
    :cond_1
    :goto_0
    return-void

    .line 1357
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z

    if-nez v2, :cond_3

    .line 1358
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1359
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onStopWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1366
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl;->isNewerVersionThan2011()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1367
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    if-eqz v2, :cond_1

    .line 1368
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p0, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onStopWebPageResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 1375
    :cond_4
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1376
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1378
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/TVControllerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v2, "com.sec.android.allshare.action.ACTION_CONTROL_TV_REQUESTBROWSER_STOPPAGE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1382
    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/TVControllerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method
