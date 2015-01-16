.class final Lcom/sec/android/allshare/ViewControllerImpl;
.super Lcom/sec/android/allshare/media/ViewController;
.source "ViewControllerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;
    }
.end annotation


# static fields
.field private static final EVENT_CONTROL_MULTI_TOUCH_BEGIN:I = 0x25

.field private static final EVENT_CONTROL_MULTI_TOUCH_END:I = 0x26

.field private static final EVENT_CONTROL_MULTI_TOUCH_MOVE:I = 0x27

.field private static final EVENT_CONTROL_TOUCH_GESTURE_MOVE:I = 0xd

.field private static final EVENT_CONTROL_TOUCH_GESTURE_UP:I = 0xc

.field private static final MODE_TOUCH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ViewControllerImpl"


# instance fields
.field private mAbsZoomRate:F

.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mControlEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

.field private mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

.field private mDeviceName:Ljava/lang/String;

.field private mEventHandler:Landroid/os/Handler;

.field private mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;

.field private mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

.field private mIPAddress:Ljava/lang/String;

.field private mImageHeight:F

.field private mImageRatio:F

.field private mImageWidth:F

.field private mIsConnected:Z

.field private mIsSubscribed:Z

.field private mMACAddress:Ljava/lang/String;

.field private mMarginX:I

.field private mMarginY:I

.field private mMobileHeight:F

.field private mMobilePhoneRatio:F

.field private mMobileWidth:F

.field private mOrgCenterX:I

.field private mOrgCenterY:I

.field private mOrgX:I

.field private mOrgY:I

.field private mPrevAbsZoomRate:F

.field private mPrevAngle:I

.field private mRelativeZoomRate:F

.field private mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

.field private mTvHeight:F

.field private mTvOrgX:F

.field private mTvOrgX0:F

.field private mTvOrgY:F

.field private mTvOrgY0:F

.field private mTvRatio:F

.field private mTvWidth:F

.field private mZoomedImageHeight:F

.field private mZoomedImageWidth:F


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;II)V
    .locals 13
    .parameter "connector"
    .parameter "deviceImpl"
    .parameter "tvWidth"
    .parameter "tvHeight"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sec/android/allshare/media/ViewController;-><init>()V

    .line 56
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    .line 58
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 60
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;

    .line 62
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    .line 64
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 66
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 68
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIPAddress:Ljava/lang/String;

    .line 70
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceName:Ljava/lang/String;

    .line 72
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    .line 74
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    .line 76
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    .line 78
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    .line 80
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    .line 82
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    .line 84
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 86
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    .line 88
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    .line 90
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 92
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    .line 94
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 96
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 98
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 100
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 102
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX:F

    .line 104
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY:F

    .line 106
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 108
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    .line 110
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvRatio:F

    .line 112
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 114
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    .line 116
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    .line 118
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    .line 120
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 122
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 124
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAngle:I

    .line 660
    new-instance v8, Lcom/sec/android/allshare/ViewControllerImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/sec/android/allshare/ViewControllerImpl$1;-><init>(Lcom/sec/android/allshare/ViewControllerImpl;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 684
    new-instance v8, Lcom/sec/android/allshare/ViewControllerImpl$2;

    invoke-direct {v8, p0}, Lcom/sec/android/allshare/ViewControllerImpl$2;-><init>(Lcom/sec/android/allshare/ViewControllerImpl;)V

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mControlEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    .line 702
    new-instance v8, Lcom/sec/android/allshare/ViewControllerImpl$3;

    invoke-direct {v8, p0}, Lcom/sec/android/allshare/ViewControllerImpl$3;-><init>(Lcom/sec/android/allshare/ViewControllerImpl;)V

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventHandler:Landroid/os/Handler;

    .line 128
    if-nez p1, :cond_0

    .line 130
    const-string v8, "ViewControllerImpl"

    const-string v9, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 136
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_2

    .line 138
    const-string v8, "connectivity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 140
    .local v1, conManager:Landroid/net/ConnectivityManager;
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 146
    .local v5, networkInfo:Landroid/net/NetworkInfo;
    const-string v8, "wifi"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 147
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 149
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 150
    iget-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 151
    iget-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, strMACPart:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x6

    if-lt v8, v9, :cond_1

    .line 160
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 161
    .local v3, nTempMAC1:I
    const/4 v8, 0x4

    aget-object v8, v6, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 163
    .local v4, nTempMAC2:I
    or-int/lit8 v3, v3, 0x2

    .line 164
    xor-int/lit16 v4, v4, 0x80

    .line 166
    const/4 v8, 0x0

    const-string v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 167
    const/4 v8, 0x4

    const-string v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 171
    .end local v3           #nTempMAC1:I
    .end local v4           #nTempMAC2:I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 184
    .end local v1           #conManager:Landroid/net/ConnectivityManager;
    .end local v5           #networkInfo:Landroid/net/NetworkInfo;
    .end local v6           #strMACPart:[Ljava/lang/String;
    .end local v7           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 186
    new-instance v8, Lcom/sec/android/allshare/IAppControlAPI;

    invoke-direct {v8}, Lcom/sec/android/allshare/IAppControlAPI;-><init>()V

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    .line 188
    iput-object p2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 189
    iget-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v8}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIPAddress:Ljava/lang/String;

    .line 190
    iget-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v8}, Lcom/sec/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceName:Ljava/lang/String;

    .line 192
    move/from16 v0, p3

    int-to-float v8, v0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    .line 193
    move/from16 v0, p4

    int-to-float v8, v0

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    .line 194
    iget v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v9, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    div-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvRatio:F

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/ViewControllerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/allshare/ViewControllerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/IAppControlAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    return-object v0
.end method

.method private calcMargin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 456
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 457
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 458
    iput v4, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    .line 463
    :goto_0
    return-void

    .line 460
    :cond_0
    iput v4, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 461
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    goto :goto_0
.end method

.method private calcMobileResolution()V
    .locals 5

    .prologue
    .line 397
    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 398
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 408
    .local v1, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 409
    .local v2, outSize:Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 410
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    .line 411
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    .line 413
    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v4, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    goto :goto_0
.end method

.method private calcOrgImageResolution(II)V
    .locals 2
    .parameter "sourceWidth"
    .parameter "sourceHeight"

    .prologue
    .line 417
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    .line 418
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    .line 419
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    .line 420
    return-void
.end method

.method private clacZoomedImageSize()V
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 393
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    .line 394
    return-void
.end method

.method private getMagicRate()F
    .locals 5

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, tempWidth:F
    const/4 v0, 0x0

    .line 427
    .local v0, magicRate:F
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 428
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 429
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    iget v4, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    div-float/2addr v3, v4

    div-float v0, v2, v3

    .line 450
    :goto_0
    const-string v2, "ViewControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[zoom] magicRate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return v0

    .line 431
    :cond_0
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    div-float v0, v2, v3

    goto :goto_0

    .line 432
    :cond_1
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvRatio:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 433
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 434
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    div-float v0, v2, v3

    goto :goto_0

    .line 436
    :cond_2
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    div-float v1, v2, v3

    .line 437
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    div-float v0, v1, v2

    goto :goto_0

    .line 441
    :cond_3
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 442
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    div-float v0, v2, v3

    goto :goto_0

    .line 444
    :cond_4
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    div-float v1, v2, v3

    .line 445
    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private initZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 350
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    .line 351
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    .line 352
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 353
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    .line 354
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    .line 355
    iput v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 356
    iput v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    .line 357
    iput v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 358
    iput v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 359
    iput v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 360
    iput v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 361
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX:F

    .line 362
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY:F

    .line 363
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 364
    iput v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    .line 365
    return-void
.end method

.method private initZoomedImageSize(FF)V
    .locals 2
    .parameter "mobileWidth"
    .parameter "mobileHeight"

    .prologue
    .line 381
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 382
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 383
    iput p2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iput p1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 387
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    goto :goto_0
.end method

.method private innerDisconnect()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseDestroy()V

    .line 240
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->stopControl()Z

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    .line 245
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;

    if-eqz v0, :cond_1

    .line 246
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    .line 253
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    .line 254
    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 5

    .prologue
    .line 209
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->innerDisconnect()V

    .line 212
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v1}, Lcom/sec/android/allshare/IAppControlAPI;->stopControl()Z

    move-result v0

    .line 222
    .local v0, bRet:Z
    if-nez v0, :cond_3

    .line 223
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mControlEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/IAppControlAPI;->setOnEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIPAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/allshare/IAppControlAPI;->startControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 230
    if-nez v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onDisconnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->innerDisconnect()V

    .line 284
    :cond_2
    :goto_0
    return-void

    .line 269
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    if-eqz v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onDisconnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    .line 275
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->innerDisconnect()V

    goto :goto_0

    .line 279
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->innerDisconnect()V

    .line 281
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    sget-object v1, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onDisconnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, -0x1

    .line 304
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    const/4 v0, -0x1

    .line 296
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    goto :goto_0
.end method

.method public move(IIZ)V
    .locals 13
    .parameter "cx"
    .parameter "cy"
    .parameter "isReleased"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 615
    const/4 v10, 0x0

    .line 616
    .local v10, mobileWidth:I
    const/4 v9, 0x0

    .line 617
    .local v9, mobileHeight:I
    const/4 v12, 0x0

    .line 618
    .local v12, widthRatio:F
    const/4 v8, 0x0

    .line 620
    .local v8, heightRatio:F
    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 621
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 624
    const-string v0, "window"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 632
    .local v7, display:Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 633
    .local v11, outSize:Landroid/graphics/Point;
    invoke-virtual {v7, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 635
    iget v10, v11, Landroid/graphics/Point;->x:I

    .line 636
    iget v9, v11, Landroid/graphics/Point;->y:I

    .line 638
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    int-to-float v1, v10

    div-float v12, v0, v1

    .line 639
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    int-to-float v1, v9

    div-float v8, v0, v1

    .line 641
    int-to-float v0, p1

    mul-float/2addr v0, v12

    float-to-int v2, v0

    .line 642
    .local v2, tvX:I
    int-to-float v0, p2

    mul-float/2addr v0, v8

    float-to-int v3, v0

    .line 645
    .local v3, tvY:I
    if-eqz p3, :cond_2

    .line 646
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/IAppControlAPI;->setTouchGestureTouchMode(I)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    goto :goto_0
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 860
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    .line 863
    return-void
.end method

.method public setEventListener(Lcom/sec/android/allshare/media/ViewController$IEventListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    :cond_0
    const-string v0, "ViewControllerImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;

    .line 324
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 325
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 328
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    goto :goto_0
.end method

.method public setResponseListener(Lcom/sec/android/allshare/media/ViewController$IResponseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 867
    iput-object p1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    .line 868
    return-void
.end method

.method public setViewAngle(I)V
    .locals 12
    .parameter "angle"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x25

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 344
    iget-object v5, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v6, 0x27

    const-wide/high16 v7, 0x4059

    move v9, p1

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x26

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    goto :goto_0
.end method

.method public zoom(IIII)V
    .locals 7
    .parameter "cx"
    .parameter "cy"
    .parameter "zoomPercent"
    .parameter "angle"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x25

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x27

    int-to-double v2, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x26

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    goto :goto_0
.end method

.method public zoom(IIIIII)V
    .locals 9
    .parameter "cx"
    .parameter "cy"
    .parameter "zoomPercent"
    .parameter "angle"
    .parameter "sourceWidth"
    .parameter "sourceHeight"

    .prologue
    .line 467
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] cx : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " zoomPercent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " angle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    int-to-float v1, p5

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    int-to-float v1, p6

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 474
    :cond_2
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] mImageWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mImageHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sourceWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sourceHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->initZoom()V

    .line 478
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->calcMobileResolution()V

    .line 479
    invoke-direct {p0, p5, p6}, Lcom/sec/android/allshare/ViewControllerImpl;->calcOrgImageResolution(II)V

    .line 480
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/ViewControllerImpl;->initZoomedImageSize(FF)V

    .line 482
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] mTvWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mImageWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mImageHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    .line 486
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 487
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    .line 496
    :goto_1
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] mTvOrgX0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvOrgY0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvOrgX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvOrgY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX:F

    .line 500
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY:F

    .line 502
    iput p4, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAngle:I

    .line 504
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 505
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 506
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 509
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->calcMobileResolution()V

    .line 512
    const/4 v7, 0x0

    .line 513
    .local v7, isDoubleTapPinch:Z
    if-eqz p3, :cond_4

    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAngle:I

    if-eq v0, p4, :cond_d

    .line 514
    :cond_4
    const/16 v0, 0x64

    if-ge p3, v0, :cond_5

    .line 515
    const/4 p3, 0x0

    .line 517
    :cond_5
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 518
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 519
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 520
    const/4 v7, 0x1

    .line 521
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/ViewControllerImpl;->initZoomedImageSize(FF)V

    .line 523
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 524
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 525
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 546
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->clacZoomedImageSize()V

    .line 548
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] mMobileWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMobileHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMobilePhoneRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRelativeZoomRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->getMagicRate()F

    move-result v8

    .line 554
    .local v8, magicRate:F
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 556
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 557
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 559
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    if-gez v0, :cond_7

    .line 560
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 562
    :cond_7
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    if-gez v0, :cond_8

    .line 563
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 565
    :cond_8
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] mMarginX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMarginY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrgX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrgY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrgCenterX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrgCenterY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v5, 0x0

    .line 570
    .local v5, tvZoomCenterX:I
    const/4 v6, 0x0

    .line 572
    .local v6, tvZoomCenterY:I
    if-eqz v7, :cond_f

    .line 573
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v5, v0

    .line 574
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v6, v0

    .line 580
    :goto_3
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    .line 581
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v5, v0

    .line 584
    :cond_9
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    .line 585
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v6, v0

    .line 587
    :cond_a
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] tvCenterX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tvCenterY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvOrgX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvOrgY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrgCenterX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrgCenterY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 592
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 594
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x25

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x27

    int-to-double v2, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;

    const/16 v1, 0x26

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 601
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 603
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] mOrgX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrgY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvOrgX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTvOrgY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] mPrevAbsZoomRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    .end local v5           #tvZoomCenterX:I
    .end local v6           #tvZoomCenterY:I
    .end local v7           #isDoubleTapPinch:Z
    .end local v8           #magicRate:F
    :cond_b
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvRatio:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    .line 489
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    goto/16 :goto_1

    .line 492
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 493
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageHeight:F

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mImageWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvWidth:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    goto/16 :goto_1

    .line 527
    .restart local v7       #isDoubleTapPinch:Z
    :cond_d
    int-to-float v0, p3

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 528
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 530
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 531
    const/16 v0, 0x64

    if-ge p3, v0, :cond_e

    .line 532
    const/4 p3, 0x0

    .line 534
    :cond_e
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 535
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 536
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 537
    const/4 v7, 0x1

    .line 538
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/ViewControllerImpl;->initZoomedImageSize(FF)V

    .line 540
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 541
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginX:I

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 542
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mMarginY:I

    iput v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgY:I

    goto/16 :goto_2

    .line 576
    .restart local v5       #tvZoomCenterX:I
    .restart local v6       #tvZoomCenterY:I
    .restart local v8       #magicRate:F
    :cond_f
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgX:F

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 577
    iget v0, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/sec/android/allshare/ViewControllerImpl;->mTvOrgY:F

    add-float/2addr v0, v1

    float-to-int v6, v0

    goto/16 :goto_3
.end method
