.class final Lcom/sec/android/allshare/KiesDeviceImpl;
.super Lcom/sec/android/allshare/KiesDevice;
.source "KiesDeviceImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "UPnPDeviceImpl"


# instance fields
.field private mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

.field private mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

.field private mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mIsSubscribed:Z

.field private mUPnPDeviceEventListener:Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/sec/android/allshare/KiesDevice;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 45
    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mUPnPDeviceEventListener:Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;

    .line 47
    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mIsSubscribed:Z

    .line 66
    new-instance v0, Lcom/sec/android/allshare/KiesDeviceImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/KiesDeviceImpl$1;-><init>(Lcom/sec/android/allshare/KiesDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 272
    new-instance v0, Lcom/sec/android/allshare/KiesDeviceImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/KiesDeviceImpl$2;-><init>(Lcom/sec/android/allshare/KiesDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 2
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/sec/android/allshare/KiesDevice;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 45
    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mUPnPDeviceEventListener:Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;

    .line 47
    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mIsSubscribed:Z

    .line 66
    new-instance v0, Lcom/sec/android/allshare/KiesDeviceImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/KiesDeviceImpl$1;-><init>(Lcom/sec/android/allshare/KiesDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 272
    new-instance v0, Lcom/sec/android/allshare/KiesDeviceImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/KiesDeviceImpl$2;-><init>(Lcom/sec/android/allshare/KiesDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 56
    if-nez p1, :cond_0

    .line 58
    const-string v0, "UPnPDeviceImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 63
    iput-object p2, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/KiesDeviceImpl;)Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mUPnPDeviceEventListener:Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/KiesDeviceImpl;)Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    return-object v0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 107
    const-string v0, ""

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sec/android/allshare/KiesDeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 132
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

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
    .line 139
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 148
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 328
    const-string v0, ""

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 156
    const-string v0, ""

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public optionalCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "ipAddress"
    .parameter "commandName"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    const-string v1, "Fail"

    sget-object v6, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;->onOptionalCommandResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 270
    :goto_0
    return-void

    .line 257
    :cond_1
    new-instance v8, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v8}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 258
    .local v8, msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v0, "com.sec.android.allshare.action.ACTION_KIES_DEVICE_OPTIONAL_COMMAND"

    invoke-virtual {v8, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 260
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/KiesDeviceImpl;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_IPADDRESS"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_COMMANDNAME"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_ARG1"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_ARG2"

    invoke-virtual {v7, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v8, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v0, v8, v1}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-virtual {p0}, Lcom/sec/android/allshare/KiesDeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mIsSubscribed:Z

    .line 338
    return-void
.end method

.method public setActionListener(Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;)Lcom/sec/android/allshare/ERROR;
    .locals 1
    .parameter "listener"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    .line 172
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    return-object v0
.end method

.method public setAutoSyncConnectionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "uniqueDeviceID"
    .parameter "ipAddress"
    .parameter "portNumber"
    .parameter "deviceModel"
    .parameter "connectionType"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    const-string v1, "Fail"

    sget-object v7, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;->onSetAutoSyncConnectionResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 247
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v9, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v9}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 234
    .local v9, msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v0, "com.sec.android.allshare.action.ACTION_KIES_DEVICE_SET_AUTO_SYNC_CONNECTION"

    invoke-virtual {v9, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 236
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v8, bundle:Landroid/os/Bundle;
    const-string v0, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/KiesDeviceImpl;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_UNIQUEID"

    invoke-virtual {v8, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_IPADDRESS"

    invoke-virtual {v8, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_PORTNUMBER"

    invoke-virtual {v8, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_MODEL"

    invoke-virtual {v8, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_CONNECTIONTYPE"

    invoke-virtual {v8, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v9, v8}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v0, v9, v1}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public setEventListener(Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;)Lcom/sec/android/allshare/ERROR;
    .locals 4
    .parameter "listener"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    const-string v0, "UPnPDeviceImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    .line 196
    :goto_0
    return-object v0

    .line 182
    :cond_1
    iput-object p1, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mUPnPDeviceEventListener:Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;

    .line 184
    iget-boolean v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mIsSubscribed:Z

    .line 196
    :cond_2
    :goto_1
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    goto :goto_0

    .line 188
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mIsSubscribed:Z

    goto :goto_1
.end method

.method public setSyncConnectionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "ipAddress"
    .parameter "portNumber"
    .parameter "deviceModel"
    .parameter "connectionType"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    const-string v1, "Fail"

    sget-object v6, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;->onSetSyncConnectionResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 221
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v8, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v8}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 209
    .local v8, msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v0, "com.sec.android.allshare.action.ACTION_KIES_DEVICE_SET_SYNC_CONNECTION"

    invoke-virtual {v8, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 211
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/KiesDeviceImpl;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_IPADDRESS"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_PORTNUMBER"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_MODEL"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "BUNDLE_STRING_KIES_DEVICE_CONNECTIONTYPE"

    invoke-virtual {v7, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v8, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/sec/android/allshare/KiesDeviceImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v0, v8, v1}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method
