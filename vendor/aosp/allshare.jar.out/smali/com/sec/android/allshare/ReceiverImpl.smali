.class Lcom/sec/android/allshare/ReceiverImpl;
.super Lcom/sec/android/allshare/media/Receiver;
.source "ReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ReceiverImpl$3;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "ReceiverImpl"


# instance fields
.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

.field mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mIsSubscribed:Z

.field private mProgressUpdateListener:Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;

.field private mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

.field mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 2
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/sec/android/allshare/media/Receiver;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 41
    iput-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 43
    iput-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;

    .line 45
    iput-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    .line 60
    new-instance v0, Lcom/sec/android/allshare/ReceiverImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/ReceiverImpl$1;-><init>(Lcom/sec/android/allshare/ReceiverImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 111
    new-instance v0, Lcom/sec/android/allshare/ReceiverImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/ReceiverImpl$2;-><init>(Lcom/sec/android/allshare/ReceiverImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 50
    if-nez p1, :cond_0

    .line 52
    const-string v0, "ReceiverImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object p2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 57
    iput-object p1, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/ReceiverImpl;)Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/ReceiverImpl;)Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    return-object v0
.end method

.method private itemHandling(Lcom/sec/android/allshare/Item;Ljava/lang/String;)V
    .locals 4
    .parameter "item"
    .parameter "actionID"

    .prologue
    .line 232
    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    :cond_0
    const-string v2, "com.sec.android.allshare.action.ACTION_RECEIVER_RECEIVE_BY_ITEM"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;->onReceiveResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V

    .line 271
    .end local p1
    :goto_0
    return-void

    .line 237
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;->onCancelResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 242
    :cond_2
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 243
    .local v1, cvm:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {v1, p2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v0, bundle:Landroid/os/Bundle;
    instance-of v2, p1, Lcom/sec/android/allshare/AudioItemImpl;

    if-eqz v2, :cond_3

    .line 247
    const-string v2, "BUNDLE_PARCELABLE_ITEM"

    check-cast p1, Lcom/sec/android/allshare/AudioItemImpl;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/allshare/AudioItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    :goto_1
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ReceiverImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 270
    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/ReceiverImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0

    .line 249
    .restart local p1
    :cond_3
    instance-of v2, p1, Lcom/sec/android/allshare/VideoItemImpl;

    if-eqz v2, :cond_4

    .line 250
    const-string v2, "BUNDLE_PARCELABLE_ITEM"

    check-cast p1, Lcom/sec/android/allshare/VideoItemImpl;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/allshare/VideoItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 252
    .restart local p1
    :cond_4
    instance-of v2, p1, Lcom/sec/android/allshare/ImageItemImpl;

    if-eqz v2, :cond_5

    .line 253
    const-string v2, "BUNDLE_PARCELABLE_ITEM"

    check-cast p1, Lcom/sec/android/allshare/ImageItemImpl;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/allshare/ImageItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 255
    .restart local p1
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/sec/android/allshare/Item$ContentBuildType;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    const-string v2, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    const-string v2, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "BUNDLE_PARCELABLE_ITEM"

    check-cast p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    .end local p1
    invoke-interface {p1}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 261
    .restart local p1
    :cond_6
    const-string v2, "com.sec.android.allshare.action.ACTION_RECEIVER_RECEIVE_BY_ITEM"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 262
    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;->onReceiveResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1

    .line 264
    :cond_7
    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;->onCancelResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1
.end method


# virtual methods
.method public cancel(Lcom/sec/android/allshare/Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 193
    const-string v0, "com.sec.android.allshare.action.ACTION_RECEIVER_CANCEL_BY_ITEM"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/allshare/ReceiverImpl;->itemHandling(Lcom/sec/android/allshare/Item;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 225
    const-string v0, ""

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;
    .locals 5
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v2

    .line 154
    :cond_1
    const-string v3, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, typeStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 158
    invoke-static {v1}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    .line 160
    .local v0, type:Lcom/sec/android/allshare/Item$MediaType;
    sget-object v3, Lcom/sec/android/allshare/ReceiverImpl$3;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    new-instance v2, Lcom/sec/android/allshare/AudioItemImpl;

    invoke-direct {v2, p1}, Lcom/sec/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 164
    :pswitch_1
    new-instance v2, Lcom/sec/android/allshare/ImageItemImpl;

    invoke-direct {v2, p1}, Lcom/sec/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 166
    :pswitch_2
    new-instance v2, Lcom/sec/android/allshare/VideoItemImpl;

    invoke-direct {v2, p1}, Lcom/sec/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getItemType(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item$MediaType;
    .locals 3
    .parameter "b"

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 183
    :goto_0
    return-object v2

    .line 175
    :cond_0
    const-string v2, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, typeStr:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 177
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {v1}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    .line 180
    .local v0, result:Lcom/sec/android/allshare/Item$MediaType;
    if-nez v0, :cond_2

    .line 181
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 183
    :cond_2
    invoke-static {v1}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v2

    goto :goto_0
.end method

.method public receive(Lcom/sec/android/allshare/Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 188
    const-string v0, "com.sec.android.allshare.action.ACTION_RECEIVER_RECEIVE_BY_ITEM"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/allshare/ReceiverImpl;->itemHandling(Lcom/sec/android/allshare/Item;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    .line 284
    return-void
.end method

.method public setProgressUpdateEventListener(Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    :cond_0
    const-string v0, "ReceiverImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;

    .line 205
    iget-boolean v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 206
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 209
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    goto :goto_0
.end method

.method public setReceiverResponseListener(Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    .line 221
    return-void
.end method
