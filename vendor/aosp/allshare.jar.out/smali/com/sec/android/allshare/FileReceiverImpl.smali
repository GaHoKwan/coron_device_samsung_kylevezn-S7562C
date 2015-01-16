.class final Lcom/sec/android/allshare/FileReceiverImpl;
.super Lcom/sec/android/allshare/media/FileReceiver;
.source "FileReceiverImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/FileReceiverImpl$INotifyProgressEvent;,
        Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "FileReceiverImpl"


# instance fields
.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mCancelReq:Z

.field private mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

.field private mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mIsSubscribed:Z

.field private mProgressEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

.field private mReceiver:Lcom/sec/android/allshare/media/FileReceiver;

.field private mRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

.field private mSessionKeyInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeKeyInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 4
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/sec/android/allshare/media/FileReceiver;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 37
    iput-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    .line 45
    iput-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;

    .line 48
    iput-boolean v3, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mCancelReq:Z

    .line 50
    iput-boolean v3, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    .line 316
    new-instance v1, Lcom/sec/android/allshare/FileReceiverImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/allshare/FileReceiverImpl$2;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 487
    new-instance v1, Lcom/sec/android/allshare/FileReceiverImpl$3;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/allshare/FileReceiverImpl$3;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 579
    new-instance v1, Lcom/sec/android/allshare/FileReceiverImpl$4;

    invoke-direct {v1, p0}, Lcom/sec/android/allshare/FileReceiverImpl$4;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;)V

    iput-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 103
    if-nez p1, :cond_0

    .line 105
    const-string v1, "FileReceiverImpl"

    const-string v2, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-interface {p1}, Lcom/sec/android/allshare/IAllShareConnector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 111
    const-string v1, "FileReceiverImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    iput-object p2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 113
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 116
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    invoke-direct {p0, v1}, Lcom/sec/android/allshare/FileReceiverImpl;->setProgressUpdateEventListener(Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 117
    iput-object p0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/FileReceiverImpl;->getTimeKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/FileReceiverImpl;->putSessionKeyInfoMap(Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/FileReceiverImpl;->removeTimeKeyInfoMap(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/allshare/FileReceiverImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/allshare/FileReceiverImpl;->isCancelRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/allshare/FileReceiverImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/allshare/FileReceiverImpl;->releaseCancelRequest()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    return-object v0
.end method

.method private getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 3
    .parameter "key"

    .prologue
    .line 211
    const-string v0, "FileReceiverImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionKeyInfoMap() called. key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    return-object v0
.end method

.method private getTimeKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 3
    .parameter "key"

    .prologue
    .line 232
    const-string v0, "FileReceiverImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeKeyInfoMap() called. key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    return-object v0
.end method

.method private isCancelRequest()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mCancelReq:Z

    return v0
.end method

.method private putSessionKeyInfoMap(Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V
    .locals 4
    .parameter "key"
    .parameter "sessionInfo"

    .prologue
    .line 203
    const-string v1, "FileReceiverImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSessionKeyInfoMap() called. key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;ILcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 207
    .local v0, sessionKeyInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method private putTimeKeyInfoMap(Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V
    .locals 4
    .parameter "key"
    .parameter "sessionInfo"

    .prologue
    .line 224
    const-string v1, "FileReceiverImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putTimeKeyInfoMap() called. key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;ILcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 228
    .local v0, timeKeyInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method private releaseCancelRequest()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mCancelReq:Z

    .line 195
    return-void
.end method

.method private removeSessionKeyInfoMap(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "FileReceiverImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSessionKeyInfoMap() called. key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private removeTimeKeyInfoMap(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "FileReceiverImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTimeKeyInfoMap() called. key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private setCancelRequest()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mCancelReq:Z

    .line 191
    return-void
.end method

.method private setProgressUpdateEventListener(Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 248
    iget-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 252
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 6
    .parameter "sessionId"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    new-instance v3, Lcom/sec/android/allshare/FileReceiverImpl$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/allshare/FileReceiverImpl$1;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    if-eqz p1, :cond_1

    .line 173
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 174
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "FileReceiverImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 184
    invoke-direct {p0}, Lcom/sec/android/allshare/FileReceiverImpl;->setCancelRequest()V

    goto :goto_0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 728
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 288
    const-string v0, ""

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sec/android/allshare/FileReceiverImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

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
    .line 300
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 123
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public receive(Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .locals 17
    .parameter
    .parameter "senderName"
    .parameter "responseListener"
    .parameter "eventListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;",
            "Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, filelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v4}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 679
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;

    const-string v6, ""

    sget-object v9, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    move-object/from16 v4, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 721
    :goto_0
    return-void

    .line 684
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 685
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    new-instance v5, Lcom/sec/android/allshare/FileReceiverImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl$5;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 697
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v12, filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 700
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 703
    .end local v11           #file:Ljava/io/File;
    :cond_4
    new-instance v14, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v14}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 704
    .local v14, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    invoke-virtual {v14, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v14}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 707
    .local v10, bundle:Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_ID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v5}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v4, "BUNDLE_STRING_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v4, "BUNDLE_STRING_ARRAYLIST_FILE_PATH"

    invoke-virtual {v10, v4, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 711
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 712
    .local v16, timeKey:Ljava/lang/String;
    const-string v4, "BUNDLE_STRING_UNIQUEKEY"

    move-object/from16 v0, v16

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v15, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v15, v0, v4, v1, v2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;-><init>(Lcom/sec/android/allshare/FileReceiverImpl;ILcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 717
    .local v15, tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/sec/android/allshare/FileReceiverImpl;->putTimeKeyInfoMap(Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v14, v5}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto/16 :goto_0
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-virtual {p0}, Lcom/sec/android/allshare/FileReceiverImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    .line 736
    return-void
.end method
