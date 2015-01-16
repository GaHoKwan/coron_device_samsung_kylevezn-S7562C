.class final Lcom/sec/android/allshare/DeviceFinderImpl;
.super Lcom/sec/android/allshare/DeviceFinder;
.source "DeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/DeviceFinderImpl$2;,
        Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "DeviceFinderImpl"

.field private static mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeviceTypeToEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAVPlayerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mDiscoveryListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mFileReceiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/FileReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/ImageViewer;",
            ">;"
        }
    .end annotation
.end field

.field private mKiesDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/KiesDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private mTVControllerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/control/TVController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    sput-object v3, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/sec/android/allshare/Device$DeviceType;

    const-string v2, "com.sec.android.allshare.event.EVENT_PROVIDER_DISCOVERY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/sec/android/allshare/Device$DeviceType;

    const-string v2, "com.sec.android.allshare.event.EVENT_AV_PLAYER_DISCOVERY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/sec/android/allshare/Device$DeviceType;

    const-string v2, "com.sec.android.allshare.event.EVENT_IMAGE_VIEWER_DISCOVERY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_TV_CONTROLLER:Lcom/sec/android/allshare/Device$DeviceType;

    const-string v2, "com.sec.android.allshare.event.EVENT_SMARTCONTROL_DISCOVERY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

    const-string v2, "com.sec.android.allshare.event.EVENT_FILERECEIVER_DISCOVERY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_KIES:Lcom/sec/android/allshare/Device$DeviceType;

    const-string v2, "com.sec.android.allshare.event.EVENT_KIES_SYNC_SERVER_DISCOVERY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sput-object v3, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 78
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_PROVIDER_DISCOVERY"

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_AV_PLAYER_DISCOVERY"

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_IMAGE_VIEWER_DISCOVERY"

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_SMARTCONTROL_DISCOVERY"

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_TV_CONTROLLER:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_FILERECEIVER_DISCOVERY"

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_KIES_SYNC_SERVER_DISCOVERY"

    sget-object v2, Lcom/sec/android/allshare/Device$DeviceType;->DEVICE_KIES:Lcom/sec/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;)V
    .locals 2
    .parameter "connector"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/sec/android/allshare/DeviceFinder;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mTVControllerMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mKiesDeviceMap:Ljava/util/HashMap;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 131
    new-instance v0, Lcom/sec/android/allshare/DeviceFinderImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/DeviceFinderImpl$1;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 122
    if-nez p1, :cond_0

    .line 124
    const-string v0, "DeviceFinderImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/DeviceFinderImpl;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/DeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/DeviceFinderImpl;->removeDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/allshare/DeviceFinderImpl;)Lcom/sec/android/allshare/IAllShareConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    return-object v0
.end method

.method private getDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;
    .locals 12
    .parameter "bundle"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    .line 348
    if-nez p1, :cond_0

    move-object v9, v10

    .line 418
    :goto_0
    return-object v9

    .line 351
    :cond_0
    const-string v9, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, id:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 355
    :cond_1
    const-string v9, "TC"

    const-string v11, "id is null!!"

    invoke-static {v9, v11}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .line 356
    goto :goto_0

    .line 361
    :cond_2
    :try_start_0
    new-instance v1, Lcom/sec/android/allshare/DeviceImpl;

    invoke-direct {v1, p1}, Lcom/sec/android/allshare/DeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 363
    .local v1, deviceImpl:Lcom/sec/android/allshare/DeviceImpl;
    sget-object v9, Lcom/sec/android/allshare/DeviceFinderImpl$2;->$SwitchMap$com$sec$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_0

    .end local v1           #deviceImpl:Lcom/sec/android/allshare/DeviceImpl;
    :goto_1
    move-object v9, v10

    .line 418
    goto :goto_0

    .line 365
    .restart local v1       #deviceImpl:Lcom/sec/android/allshare/DeviceImpl;
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 366
    new-instance v0, Lcom/sec/android/allshare/AVPlayerImpl;

    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-direct {v0, v9, v1}, Lcom/sec/android/allshare/AVPlayerImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    .line 367
    .local v0, avPlayer:Lcom/sec/android/allshare/media/AVPlayer;
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .end local v0           #avPlayer:Lcom/sec/android/allshare/media/AVPlayer;
    :cond_3
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/allshare/Device;

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 372
    new-instance v5, Lcom/sec/android/allshare/ImageViewerImpl;

    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-direct {v5, v9, v1}, Lcom/sec/android/allshare/ImageViewerImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    .line 374
    .local v5, imageViewer:Lcom/sec/android/allshare/media/ImageViewer;
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v5           #imageViewer:Lcom/sec/android/allshare/media/ImageViewer;
    :cond_4
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/allshare/Device;

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 380
    new-instance v6, Lcom/sec/android/allshare/ProviderImpl;

    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-direct {v6, v9, v1}, Lcom/sec/android/allshare/ProviderImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    .line 381
    .local v6, provider:Lcom/sec/android/allshare/media/Provider;
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v6           #provider:Lcom/sec/android/allshare/media/Provider;
    :cond_5
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/allshare/Device;

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mTVControllerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 387
    new-instance v7, Lcom/sec/android/allshare/TVControllerImpl;

    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-direct {v7, v9, v1}, Lcom/sec/android/allshare/TVControllerImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    .line 390
    .local v7, smartcontroller:Lcom/sec/android/allshare/control/TVController;
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mTVControllerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v7           #smartcontroller:Lcom/sec/android/allshare/control/TVController;
    :cond_6
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mTVControllerMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/allshare/Device;

    goto/16 :goto_0

    .line 396
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 397
    new-instance v3, Lcom/sec/android/allshare/FileReceiverImpl;

    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-direct {v3, v9, v1}, Lcom/sec/android/allshare/FileReceiverImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    .line 400
    .local v3, fileReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v3           #fileReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    :cond_7
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/allshare/Device;

    goto/16 :goto_0

    .line 405
    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mKiesDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 406
    new-instance v8, Lcom/sec/android/allshare/KiesDeviceImpl;

    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-direct {v8, v9, v1}, Lcom/sec/android/allshare/KiesDeviceImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    .line 408
    .local v8, upnpDevice:Lcom/sec/android/allshare/KiesDevice;
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mKiesDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .end local v8           #upnpDevice:Lcom/sec/android/allshare/KiesDevice;
    :cond_8
    iget-object v9, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mKiesDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/allshare/Device;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 414
    .end local v1           #deviceImpl:Lcom/sec/android/allshare/DeviceImpl;
    :catch_0
    move-exception v2

    .line 415
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 363
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

.method private privateGetDevices(Ljava/lang/String;Lcom/sec/android/allshare/Device$DeviceDomain;Lcom/sec/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "action"
    .parameter "domain"
    .parameter "deviceType"
    .parameter "deviceIface"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/Device$DeviceDomain;",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    if-nez p3, :cond_1

    .line 465
    :cond_0
    return-object v6

    .line 428
    :cond_1
    const/4 v1, 0x0

    .line 429
    .local v1, builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    new-instance v1, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    .end local v1           #builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const/4 v7, 0x0

    invoke-direct {v1, p0, p1, v7}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/sec/android/allshare/DeviceFinderImpl$1;)V

    .line 431
    .restart local v1       #builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v7, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p2, :cond_3

    .line 433
    const-string v7, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v7, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v5

    .line 448
    .local v5, resBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 451
    const-string v7, "BUNDLE_PARCELABLE_ARRAYLIST_DEVICE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 454
    .local v3, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 458
    .local v0, b:Landroid/os/Bundle;
    invoke-direct {p0, v0, p3}, Lcom/sec/android/allshare/DeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;

    move-result-object v2

    .line 459
    .local v2, d:Lcom/sec/android/allshare/Device;
    if-eqz v2, :cond_2

    .line 460
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v7, "DeviceFinderImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "devices : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 435
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #d:Lcom/sec/android/allshare/Device;
    .end local v3           #devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #resBundle:Landroid/os/Bundle;
    :cond_3
    const-string v7, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 438
    const-string v7, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {v1, v7, p4}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v7, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_4
    const-string v7, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 441
    const-string v7, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)V
    .locals 10
    .parameter "bundle"
    .parameter "type"

    .prologue
    .line 300
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v8, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 308
    :try_start_0
    sget-object v8, Lcom/sec/android/allshare/DeviceFinderImpl$2;->$SwitchMap$com$sec$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/AVPlayerImpl;

    .line 311
    .local v0, av:Lcom/sec/android/allshare/AVPlayerImpl;
    invoke-virtual {v0}, Lcom/sec/android/allshare/AVPlayerImpl;->removeEventHandler()V

    .line 312
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v0           #av:Lcom/sec/android/allshare/AVPlayerImpl;
    :catch_0
    move-exception v1

    .line 342
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/allshare/ImageViewerImpl;

    .line 316
    .local v4, iv:Lcom/sec/android/allshare/ImageViewerImpl;
    invoke-virtual {v4}, Lcom/sec/android/allshare/ImageViewerImpl;->removeEventHandler()V

    .line 317
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    .end local v4           #iv:Lcom/sec/android/allshare/ImageViewerImpl;
    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/allshare/ProviderImpl;

    .line 321
    .local v6, p:Lcom/sec/android/allshare/ProviderImpl;
    invoke-virtual {v6}, Lcom/sec/android/allshare/ProviderImpl;->removeEventHandler()V

    .line 322
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 325
    .end local v6           #p:Lcom/sec/android/allshare/ProviderImpl;
    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mTVControllerMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/allshare/TVControllerImpl;

    .line 326
    .local v7, tv:Lcom/sec/android/allshare/TVControllerImpl;
    invoke-virtual {v7}, Lcom/sec/android/allshare/TVControllerImpl;->removeEventHandler()V

    .line 327
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mTVControllerMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    .end local v7           #tv:Lcom/sec/android/allshare/TVControllerImpl;
    :pswitch_4
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/allshare/FileReceiverImpl;

    .line 331
    .local v2, fr:Lcom/sec/android/allshare/FileReceiverImpl;
    invoke-virtual {v2}, Lcom/sec/android/allshare/FileReceiverImpl;->removeEventHandler()V

    .line 332
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    .end local v2           #fr:Lcom/sec/android/allshare/FileReceiverImpl;
    :pswitch_5
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mKiesDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/allshare/KiesDeviceImpl;

    .line 336
    .local v5, kd:Lcom/sec/android/allshare/KiesDeviceImpl;
    invoke-virtual {v5}, Lcom/sec/android/allshare/KiesDeviceImpl;->removeEventHandler()V

    .line 337
    iget-object v8, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mKiesDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 308
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


# virtual methods
.method public final getDevice(Ljava/lang/String;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;
    .locals 6
    .parameter "id"
    .parameter "deviceType"

    .prologue
    const/4 v3, 0x0

    .line 280
    iget-object v4, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v4}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v3

    .line 283
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    .line 286
    new-instance v0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const-string v4, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICE_BY_ID_SYNC"

    invoke-direct {v0, p0, v4, v3}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/sec/android/allshare/DeviceFinderImpl$1;)V

    .line 288
    .local v0, builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v4, p1}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v1

    .line 293
    .local v1, device_bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 295
    const-string v3, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 296
    .local v2, req_bundle:Landroid/os/Bundle;
    invoke-direct {p0, v2, p2}, Lcom/sec/android/allshare/DeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;

    move-result-object v3

    goto :goto_0
.end method

.method public final getDevices(Lcom/sec/android/allshare/Device$DeviceDomain;Lcom/sec/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .locals 4
    .parameter "domain"
    .parameter "deviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/Device$DeviceDomain;",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    :goto_0
    return-object v1

    .line 263
    :cond_1
    const-string v1, "DeviceFinderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevices - type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", domain : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    .line 265
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/allshare/DeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/sec/android/allshare/Device$DeviceDomain;Lcom/sec/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public final getDevices(Lcom/sec/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .locals 5
    .parameter "deviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    :goto_0
    return-object v1

    .line 273
    :cond_1
    const-string v1, "DeviceFinderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevices - type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    .line 275
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, v0, v4, p1, v4}, Lcom/sec/android/allshare/DeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/sec/android/allshare/Device$DeviceDomain;Lcom/sec/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public final getDevices(Lcom/sec/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "deviceType"
    .parameter "NIC"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    :goto_0
    return-object v1

    .line 253
    :cond_1
    const-string v1, "DeviceFinderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevices - type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NIC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    .line 255
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/android/allshare/DeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/sec/android/allshare/Device$DeviceDomain;Lcom/sec/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public final refresh()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v1, "DeviceFinderImpl"

    const-string v2, "refresh"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const-string v1, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/sec/android/allshare/DeviceFinderImpl$1;)V

    .line 203
    .local v0, builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    goto :goto_0
.end method

.method public refresh(Lcom/sec/android/allshare/Device$DeviceType;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v1, "DeviceFinderImpl"

    const-string v2, "refresh(DeviceType type)"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const-string v1, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH_TARGET"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/sec/android/allshare/DeviceFinderImpl$1;)V

    .line 214
    .local v0, builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v1, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    goto :goto_0
.end method

.method public registerSearchTarget(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, deviceTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device$DeviceType;>;"
    iget-object v5, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v5}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    if-eqz p1, :cond_0

    .line 511
    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, applicationID:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v3, devTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/allshare/Device$DeviceType;

    .line 515
    .local v2, devType:Lcom/sec/android/allshare/Device$DeviceType;
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    .end local v2           #devType:Lcom/sec/android/allshare/Device$DeviceType;
    :cond_2
    new-instance v1, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const-string v5, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REGISTER_SEARCH_TARGET_SYNC"

    const/4 v6, 0x0

    invoke-direct {v1, p0, v5, v6}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/sec/android/allshare/DeviceFinderImpl$1;)V

    .line 519
    .local v1, builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v5, v0}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v5, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v1, v5, v3}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 522
    invoke-virtual {v1}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDeviceFinderEventListener(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V
    .locals 5
    .parameter "deviceType"
    .parameter "l"

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    :cond_0
    const-string v2, "DeviceFinderImpl"

    const-string v3, "setEventListener error! AllShareService is not connected"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    if-nez p1, :cond_3

    .line 226
    const-string v2, "DeviceFinderImpl"

    const-string v3, "setEventListener error! device type is invalid!"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_3
    sget-object v2, Lcom/sec/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, deviceTypeEvent:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 232
    const-string v2, "DeviceFinderImpl"

    const-string v3, "setEventListener error! device type is invalid!"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 237
    .local v1, oldListener:Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    .line 240
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v2, v0, v4, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    goto :goto_0

    .line 241
    :cond_5
    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v2, v0, v4, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    goto :goto_0
.end method

.method public unregisterSearchTarget(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, deviceTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device$DeviceType;>;"
    iget-object v5, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v5}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    if-eqz p1, :cond_0

    .line 534
    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, applicationID:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v3, devTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/allshare/Device$DeviceType;

    .line 538
    .local v2, devType:Lcom/sec/android/allshare/Device$DeviceType;
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 540
    .end local v2           #devType:Lcom/sec/android/allshare/Device$DeviceType;
    :cond_2
    new-instance v1, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const-string v5, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_UNREGISTER_SEARCH_TARGET_SYNC"

    const/4 v6, 0x0

    invoke-direct {v1, p0, v5, v6}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/sec/android/allshare/DeviceFinderImpl$1;)V

    .line 542
    .local v1, builder:Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v5, v0}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v5, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v1, v5, v3}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 545
    invoke-virtual {v1}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    goto :goto_0
.end method
