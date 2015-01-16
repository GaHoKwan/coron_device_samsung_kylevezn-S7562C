.class final Lcom/sec/android/allshare/ProviderImpl;
.super Lcom/sec/android/allshare/media/Provider;
.source "ProviderImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ProviderImpl$3;,
        Lcom/sec/android/allshare/ProviderImpl$RootFolderItem;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "ProviderImpl"

.field private static mRootFolderItem:Lcom/sec/android/allshare/Item;


# instance fields
.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

.field private mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

.field private mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

.field private mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mIsSubscribed:Z

.field private mProviderEventListener:Lcom/sec/android/allshare/media/Provider$IProviderEventListener;

.field private mReceiver:Lcom/sec/android/allshare/media/Receiver;

.field private mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 65
    sput-object v3, Lcom/sec/android/allshare/ProviderImpl;->mRootFolderItem:Lcom/sec/android/allshare/Item;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, mFolderBunle:Landroid/os/Bundle;
    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    const-string v1, "BUNDLE_LONG_ITEM_DATE"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    const-string v1, "BUNDLE_STRING_OBJECT_ID"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/sec/android/allshare/ProviderImpl$RootFolderItem;

    invoke-direct {v1, v0}, Lcom/sec/android/allshare/ProviderImpl$RootFolderItem;-><init>(Landroid/os/Bundle;)V

    sput-object v1, Lcom/sec/android/allshare/ProviderImpl;->mRootFolderItem:Lcom/sec/android/allshare/Item;

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 5
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Lcom/sec/android/allshare/media/Provider;-><init>()V

    .line 55
    iput-object v4, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 57
    iput-object v4, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 59
    iput-object v4, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    .line 61
    iput-object v4, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    .line 63
    iput-object v4, p0, Lcom/sec/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/sec/android/allshare/media/Provider$IProviderEventListener;

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/allshare/ProviderImpl;->mIsSubscribed:Z

    .line 126
    new-instance v2, Lcom/sec/android/allshare/ProviderImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/allshare/ProviderImpl$1;-><init>(Lcom/sec/android/allshare/ProviderImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/allshare/ProviderImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 155
    new-instance v2, Lcom/sec/android/allshare/ProviderImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/allshare/ProviderImpl$2;-><init>(Lcom/sec/android/allshare/ProviderImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 108
    if-nez p1, :cond_0

    .line 110
    const-string v2, "ProviderImpl"

    const-string v3, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p2, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 115
    iput-object p1, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 118
    invoke-virtual {p2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_BOOLEAN_RECEIVERABLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 120
    .local v1, isReceiverable:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v2, Lcom/sec/android/allshare/ReceiverImpl;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/allshare/ReceiverImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    iput-object v2, p0, Lcom/sec/android/allshare/ProviderImpl;->mReceiver:Lcom/sec/android/allshare/media/Receiver;

    goto :goto_0

    .line 123
    :cond_1
    iput-object v4, p0, Lcom/sec/android/allshare/ProviderImpl;->mReceiver:Lcom/sec/android/allshare/media/Receiver;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/sec/android/allshare/media/Provider$IProviderEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/ProviderImpl;)Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    return-object v0
.end method


# virtual methods
.method public browse(Lcom/sec/android/allshare/Item;II)V
    .locals 10
    .parameter "parentFolderItem"
    .parameter "startIndex"
    .parameter "requestCount"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 298
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    :cond_0
    const-string v0, "ProviderImpl"

    const-string v1, "browse fail : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    sget-object v6, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    move v3, v2

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/Item;ZLcom/sec/android/allshare/ERROR;)V

    .line 340
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 306
    .restart local p1
    :cond_2
    if-eqz p1, :cond_3

    if-eq p2, v2, :cond_3

    if-gtz p3, :cond_4

    .line 307
    :cond_3
    const-string v0, "ProviderImpl"

    const-string v1, "browse fail : INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/Item;ZLcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 314
    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 315
    const-string v0, "ProviderImpl"

    const-string v1, "browse fail : INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/Item;ZLcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 322
    :cond_5
    new-instance v9, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v9}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 323
    .local v9, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v0, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_ITEMS"

    invoke-virtual {v9, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 324
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v8, req_bundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 326
    .local v7, folderBundle:Landroid/os/Bundle;
    instance-of v0, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v0, :cond_6

    .line 327
    check-cast p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    .end local p1
    invoke-interface {p1}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 329
    :cond_6
    const-string v0, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ProviderImpl;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "BUNDLE_PARCELABLE_FOLDERITEM"

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    const-string v0, "BUNDLE_INT_STARTINDEX"

    invoke-virtual {v8, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    const-string v0, "BUNDLE_INT_REQUESTCOUNT"

    invoke-virtual {v8, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    const-string v0, "ProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/allshare/ProviderImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9, v8}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v0, v9, v1}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto/16 :goto_0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 390
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    .line 392
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 358
    const-string v0, ""

    .line 360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 415
    const-string v0, ""

    .line 417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/sec/android/allshare/ProviderImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIcon()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
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
    .line 373
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 398
    const-string v0, ""

    .line 400
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 531
    const-string v0, ""

    .line 533
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 382
    const-string v0, ""

    .line 384
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReceiver()Lcom/sec/android/allshare/media/Receiver;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mReceiver:Lcom/sec/android/allshare/media/Receiver;

    return-object v0
.end method

.method public getRootFolder()Lcom/sec/android/allshare/Item;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/sec/android/allshare/ProviderImpl;->mRootFolderItem:Lcom/sec/android/allshare/Item;

    return-object v0
.end method

.method public isSearchable()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sec/android/allshare/ProviderImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .local v0, result:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 293
    :goto_0
    return v1

    :cond_0
    const-string v1, "BUNDLE_BOOLEAN_SEARCHABLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ProviderImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ProviderImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mIsSubscribed:Z

    .line 542
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mReceiver:Lcom/sec/android/allshare/media/Receiver;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mReceiver:Lcom/sec/android/allshare/media/Receiver;

    check-cast v0, Lcom/sec/android/allshare/ReceiverImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ReceiverImpl;->removeEventHandler()V

    .line 545
    :cond_0
    return-void
.end method

.method public search(Lcom/sec/android/allshare/media/SearchCriteria;II)V
    .locals 10
    .parameter "searchCriteria"
    .parameter "startIndex"
    .parameter "requestCount"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 458
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 459
    :cond_0
    const-string v0, "ProviderImpl"

    const-string v1, "search fail : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    move v3, v2

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    if-nez p1, :cond_3

    .line 467
    const-string v0, "ProviderImpl"

    const-string v1, "search fail : INVALID_ARGUMENT (searchCriteria)"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 474
    :cond_3
    if-eq p2, v2, :cond_4

    if-gtz p3, :cond_5

    .line 475
    :cond_4
    const-string v0, "ProviderImpl"

    const-string v1, "search fail : INVALID_ARGUMENT (index)"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 482
    :cond_5
    new-instance v8, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v8}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 483
    .local v8, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v0, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_SEARCHCRITERIA_ITEMS"

    invoke-virtual {v8, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 484
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v7, req_bundle:Landroid/os/Bundle;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v9, typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {p1, v0}, Lcom/sec/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/sec/android/allshare/Item$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    const-string v0, "ProviderImpl"

    const-string v1, "search fail : INVALID_ARGUMENT (MediaType)"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 496
    :cond_6
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {p1, v0}, Lcom/sec/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/sec/android/allshare/Item$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 497
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_7
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {p1, v0}, Lcom/sec/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/sec/android/allshare/Item$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 500
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_8
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {p1, v0}, Lcom/sec/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/sec/android/allshare/Item$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 503
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_9
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {p1, v0}, Lcom/sec/android/allshare/media/SearchCriteria;->isMatchedItemType(Lcom/sec/android/allshare/Item$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 506
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_a
    const-string v0, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ProviderImpl;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, "BUNDLE_STRING_SEARCHSTRING"

    invoke-virtual {p1}, Lcom/sec/android/allshare/media/SearchCriteria;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "BUNDLE_INT_STARTINDEX"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    const-string v0, "BUNDLE_INT_REQUESTCOUNT"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    const-string v0, "BUNDLE_STRING_ITEM_TYPE_ARRAYLIST"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 515
    const-string v0, "ProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/allshare/ProviderImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v8, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v0, v8, v1}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto/16 :goto_0
.end method

.method public setBrowseItemsResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/allshare/ProviderImpl;->mBrowseResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;

    .line 345
    return-void
.end method

.method public setEventListener(Lcom/sec/android/allshare/media/Provider$IProviderEventListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    :cond_0
    const-string v0, "ProviderImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/ProviderImpl;->mProviderEventListener:Lcom/sec/android/allshare/media/Provider$IProviderEventListener;

    .line 442
    iget-boolean v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 443
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ProviderImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 446
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ProviderImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ProviderImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ProviderImpl;->mIsSubscribed:Z

    goto :goto_0
.end method

.method public setSearchResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/sec/android/allshare/ProviderImpl;->mSearchResponseListener:Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;

    .line 526
    return-void
.end method
