.class public Lcom/samsung/commonimsservice/SamsungAPCommonService;
.super Ljava/lang/Object;
.source "SamsungAPCommonService.java"

# interfaces
.implements Lcom/samsung/commonimsservice/ICommonIMSService;


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CALL_END_CALL_NW_HANDOVER:I = 0x4

.field public static final IMS_CALL_LOW_BATTERY:I = 0x6

.field private static final IMS_CALL_NORMAL_DISCONNECT:I = 0x5

.field public static final IMS_CONN_ACTION:Ljava/lang/String; = "com.sec.android.ims.IMSService"

.field private static final IMS_SVC_USER_REJECT_REASON_USR_BUSY:I = 0x2

.field private static final IMS_SVC_USER_REJECT_REASON_USR_DECLINE:I = 0x3

.field public static final IMS_USER_REJECT_REASON_USR_BUSY_CS_CALL:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAPCommonService"

.field private static final MMTELSVCHDL:I = 0x0

.field private static final MSG_IMS_SERVICE_CONNECTED:I = 0x65

.field private static final MSG_IMS_SERVICE_DISCONNECTED:I = 0x66

.field private static final SIPURI_TYPE:Ljava/lang/String; = "0"

.field private static final SIPURI_VAL:I = 0x1

.field private static final SMS_SIP_SIPURI_PREFIX:Ljava/lang/String; = "sipuriprefix"

.field private static final SMS_SIP_URI_TYPE:Ljava/lang/String; = "uritype"

.field private static final TELURI_TYPE:Ljava/lang/String; = "1"

.field private static final TELURI_VAL:I = 0x3


# instance fields
.field private H:Landroid/os/Handler;

.field private isSpeakerOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mIMSCallStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIMSRegListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSRegisterStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

.field private mMuted:Z

.field private final mServiceConnectionListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IImsServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/samsung/commonimsservice/ImsParams;

.field private regExpiry:I

.field private regUri:Ljava/lang/String;

.field private registrationStatus:Z

.field private serviceConnStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    .line 59
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    .line 65
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {v0}, Lcom/samsung/commonimsservice/ImsParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 71
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    .line 174
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 106
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    .line 107
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->createSipService()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceConnected()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceDisconnected()V

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    return p1
.end method

.method private createSipService()V
    .locals 4

    .prologue
    .line 112
    const-string v1, "SamsungAPCommonService"

    const-string v2, "Trying to connect to ims service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 116
    return-void
.end method

.method private getCallType(II)I
    .locals 5
    .parameter "appType"
    .parameter "subType"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    .line 2194
    const/4 v0, -0x1

    .line 2196
    .local v0, callType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2198
    if-ne p1, v4, :cond_6

    .line 2199
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 2200
    const/4 v0, 0x5

    .line 2218
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2220
    return v0

    .line 2201
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 2202
    const/4 v0, 0x2

    goto :goto_0

    .line 2203
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 2204
    const/4 v0, 0x1

    goto :goto_0

    .line 2205
    :cond_3
    if-ne p2, v3, :cond_4

    .line 2206
    const/4 v0, 0x7

    goto :goto_0

    .line 2207
    :cond_4
    if-ne p2, v4, :cond_5

    .line 2208
    const/16 v0, 0x8

    goto :goto_0

    .line 2209
    :cond_5
    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    .line 2210
    const/16 v0, 0x9

    goto :goto_0

    .line 2212
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 2213
    const/4 v0, 0x2

    goto :goto_0

    .line 2214
    :cond_7
    if-ne p1, v3, :cond_0

    .line 2215
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getDeviceSpeakerStatus()Z
    .locals 2

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside isSpeakerOn  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2180
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 134
    const-string v0, "SamsungAPCommonService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method private notifyConnectionListeners(Z)V
    .locals 3
    .parameter "isConnected"

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 163
    .local v1, listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 164
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 165
    if-eqz p1, :cond_1

    .line 166
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 161
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_1

    .line 172
    .end local v1           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_2
    return-void
.end method

.method private onBadRequest(I)V
    .locals 4
    .parameter "sessionID"

    .prologue
    .line 2169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2170
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 2171
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v1, :cond_0

    .line 2172
    const/16 v2, 0x190

    const-string v3, "Bad Request"

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 2169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2175
    .end local v1           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_1
    return-void
.end method

.method private onCaptureSuccess(ZLjava/lang/String;)V
    .locals 6
    .parameter "isForNearEnd"
    .parameter "filename"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onCaptureSuccess() : nearEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; filename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1346
    if-nez p2, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 1349
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 1350
    .local v1, path:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 1352
    .local v0, mimetype:[Ljava/lang/String;
    aput-object p2, v1, v4

    .line 1353
    if-eqz p1, :cond_1

    .line 1354
    const-string v2, "videocallimages/jpeg"

    aput-object v2, v0, v4

    .line 1359
    :goto_1
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;

    invoke-direct {v3, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    invoke-static {v2, v1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 1356
    :cond_1
    const-string v2, "videocallimages/jpeg-scramble"

    aput-object v2, v0, v4

    goto :goto_1
.end method

.method private onImsServiceConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 141
    const-string v1, "NULL IMS service received!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    iget-object v2, v2, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V

    .line 145
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS event listener registration failed!!! with exception e - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 151
    invoke-direct {p0, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    goto :goto_0
.end method

.method private onImsServiceDisconnected()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 158
    return-void
.end method

.method private setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;
    .locals 5
    .parameter "params"
    .parameter "peerUri"

    .prologue
    .line 1833
    const-string v3, "\\$"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1834
    .local v2, sCallerNos:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 1835
    array-length v1, v2

    .line 1836
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gt v0, v3, :cond_0

    .line 1837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {p1, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1840
    :cond_0
    const-string v3, "UriCount"

    invoke-virtual {p1, v3, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1845
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return-object p1

    .line 1843
    :cond_1
    const-string v3, "setUriListForConference returned failure"

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateMuteState(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mute state to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2189
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2190
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 2191
    return-void
.end method


# virtual methods
.method public acceptChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1633
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1634
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot accept change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1637
    :cond_0
    const/4 v0, -0x1

    .line 1638
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1639
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "accept"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xf

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    return-void

    .line 1643
    :catch_0
    move-exception v1

    .line 1644
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Accept change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addUserForConferenceCall(ILjava/lang/String;I)I
    .locals 9
    .parameter "sessionID"
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1702
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1703
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1705
    :cond_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1706
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, dialType:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1708
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1710
    :cond_1
    const/4 v3, -0x1

    .line 1711
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1713
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1714
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1715
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1716
    const/4 v1, 0x1

    .line 1717
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1718
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1719
    const/4 v1, 0x3

    .line 1726
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1727
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1729
    if-eqz v4, :cond_4

    .line 1730
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1739
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v6, 0x15

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v8}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, p1, v8}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    return v3

    .line 1721
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1724
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1732
    :cond_4
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1733
    const-string v4, "Sip"

    .line 1734
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1740
    :catch_0
    move-exception v2

    .line 1741
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public answerCall(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1419
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1422
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1423
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1426
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    return-void

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public answerCallAudioOnly(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1403
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call audio only R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1407
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    return-void

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2055
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2056
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot cancel call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2059
    :cond_0
    const/4 v0, -0x1

    .line 2061
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2062
    const/4 v0, 0x2

    .line 2070
    :goto_0
    const/4 v2, -0x1

    .line 2071
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    return-void

    .line 2063
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2064
    const/4 v0, 0x1

    goto :goto_0

    .line 2066
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2072
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2073
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public captureSurfaceImage(ZI)V
    .locals 3
    .parameter "isNearEnd"
    .parameter "onGoingCallType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2332
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2336
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    return-void

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public changeCall(III)V
    .locals 4
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 2150
    if-ne p3, v3, :cond_2

    .line 2151
    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    .line 2153
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    .line 2166
    :cond_1
    :goto_0
    return-void

    .line 2154
    :cond_2
    if-eq p3, v1, :cond_3

    if-ne p3, v2, :cond_5

    .line 2155
    :cond_3
    if-ne p2, v0, :cond_4

    .line 2156
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    goto :goto_0

    .line 2157
    :cond_4
    if-ne p2, v3, :cond_1

    .line 2158
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0

    .line 2160
    :cond_5
    if-ne p3, v0, :cond_1

    .line 2161
    if-eq p2, v1, :cond_6

    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_1

    .line 2163
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0
.end method

.method public continueVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1548
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1549
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue video R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1552
    :cond_0
    const/4 v1, -0x1

    .line 1553
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1554
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1557
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    return-void

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deRegisterForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2258
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2262
    :cond_0
    return-void
.end method

.method public deRegisterForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2266
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2268
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2270
    :cond_0
    return-void
.end method

.method public deRegisterForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2274
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2276
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2278
    :cond_0
    return-void
.end method

.method public deinitSurface(Z)V
    .locals 3
    .parameter "isNearEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2345
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2346
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2350
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->deinitSurface(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2354
    return-void

    .line 2351
    :catch_0
    move-exception v0

    .line 2352
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 2079
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2080
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2083
    :cond_0
    const/4 v2, -0x1

    .line 2084
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2085
    .local v0, appType:I
    if-ne p3, v5, :cond_1

    if-ne p2, v4, :cond_1

    .line 2086
    const/4 v0, 0x1

    .line 2097
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2098
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2100
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    return-void

    .line 2087
    :cond_1
    if-ne p3, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 2088
    const/4 v0, 0x3

    goto :goto_0

    .line 2089
    :cond_2
    if-ne p3, v6, :cond_3

    if-ne p2, v4, :cond_3

    .line 2090
    const/4 v0, 0x4

    goto :goto_0

    .line 2091
    :cond_3
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    if-ne p2, v4, :cond_4

    .line 2092
    const/4 v0, 0x4

    goto :goto_0

    .line 2094
    :cond_4
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Down grade is not allowed"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2101
    :catch_0
    move-exception v1

    .line 2102
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2029
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2030
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2033
    :cond_0
    const/4 v0, -0x1

    .line 2035
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2036
    const/4 v0, 0x2

    .line 2043
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2044
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2047
    const/4 v2, -0x1

    .line 2048
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    return-void

    .line 2037
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2038
    const/4 v0, 0x1

    goto :goto_0

    .line 2040
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2049
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2050
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1951
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1952
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1955
    :cond_0
    const/4 v2, -0x1

    .line 1956
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1958
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1959
    const/4 v0, 0x2

    .line 1966
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1968
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 1969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1970
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1978
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    return-void

    .line 1960
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1961
    const/4 v0, 0x1

    goto :goto_0

    .line 1963
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1972
    :cond_4
    const/4 v3, 0x6

    if-ne p3, v3, :cond_1

    .line 1973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_LOW_BATTERY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1974
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 1980
    :catch_0
    move-exception v1

    .line 1981
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCurrentLatchedNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2357
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2358
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2366
    :goto_0
    return-object v1

    .line 2363
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->getCurrentLatchedNetwork()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2364
    :catch_0
    move-exception v0

    .line 2365
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxVolume(I)I
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public holdCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1368
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1369
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1372
    :cond_0
    const/4 v1, -0x1

    .line 1373
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1374
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1376
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    return-void

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public holdVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1531
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1532
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1535
    :cond_0
    const/4 v1, -0x1

    .line 1536
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1537
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1539
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call: Service Not Up"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isDeviceOnEHRPD()Z
    .locals 3

    .prologue
    .line 1890
    const/4 v1, 0x0

    .line 1891
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1893
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnEHRPD()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1899
    :cond_0
    :goto_0
    return v1

    .line 1894
    :catch_0
    move-exception v0

    .line 1895
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1896
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceOnLTE()Z
    .locals 3

    .prologue
    .line 1877
    const/4 v1, 0x0

    .line 1878
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1880
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnLTE()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1886
    :cond_0
    :goto_0
    return v1

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1883
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFrontCamInUse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1903
    const/4 v1, 0x0

    .line 1904
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v3, :cond_0

    .line 1906
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v3}, Lcom/sec/android/internal/ims/IIMSService;->isFrontCamInUse()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1907
    .local v2, retVal:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1908
    const/4 v1, 0x1

    .line 1917
    .end local v2           #retVal:I
    :cond_0
    :goto_0
    return v1

    .line 1910
    .restart local v2       #retVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1912
    .end local v2           #retVal:I
    :catch_0
    move-exception v0

    .line 1913
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1914
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isIMSEnabledOnWifi()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2371
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2372
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2379
    :goto_0
    return v1

    .line 2376
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isIMSEnabledOnWifi()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isImsForbidden()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2384
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2385
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2386
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2389
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->isImsForbidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2390
    :catch_0
    move-exception v0

    .line 2391
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2392
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isMuted(I)Z
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMuted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public makeMediaCall(Ljava/lang/String;ILjava/lang/String;)I
    .locals 12
    .parameter "peerUri"
    .parameter "type"
    .parameter "pLetteringText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x5

    .line 1748
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v0, :cond_0

    .line 1749
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Cannot make media call R[Service Not Up]"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_0
    const/4 v9, -0x1

    .line 1753
    .local v9, sessid:I
    const/4 v5, 0x0

    .line 1755
    .local v5, isVirtualNo:Z
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sipuriprefix"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1756
    .local v10, uriPrefix:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uritype"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1757
    .local v6, dialType:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1758
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot make call R[invalid URI ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1761
    :cond_1
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    :cond_2
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v0}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1770
    if-ne p2, v2, :cond_5

    .line 1771
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "AppType"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1772
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "CallType"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1785
    :goto_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "RmtDialNum"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    if-ne p2, v3, :cond_3

    .line 1787
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1790
    :cond_3
    const/4 v7, 0x1

    .line 1791
    .local v7, dialTypeVal:I
    if-eqz v6, :cond_9

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1792
    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1793
    const/4 v7, 0x3

    .line 1800
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] DialTypeVal ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1801
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "RmtUriType"

    invoke-virtual {v0, v1, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1803
    if-eqz v10, :cond_a

    .line 1804
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "RmtUriPrefix"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " DisplayName (PLetteringText) - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "DisplayName"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    :cond_4
    iget-object v11, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    monitor-enter v11

    .line 1818
    if-ne p2, v3, :cond_b

    .line 1819
    :try_start_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #isVirtualNo:Z
    move-result v9

    .line 1826
    :goto_3
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v9

    .line 1773
    .end local v7           #dialTypeVal:I
    .restart local v5       #isVirtualNo:Z
    :cond_5
    if-ne p2, v11, :cond_6

    .line 1774
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "AppType"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1775
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "CallType"

    invoke-virtual {v0, v1, v11}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1776
    :cond_6
    if-ne p2, v3, :cond_7

    .line 1777
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "AppType"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1778
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "CallType"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1780
    :cond_7
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "AppType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1781
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "CallType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1795
    .restart local v7       #dialTypeVal:I
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1798
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1806
    :cond_a
    const-string v0, "UriPrefix is NULL"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1807
    const-string v10, "Sip"

    .line 1808
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v1, "RmtUriPrefix"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1821
    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    goto :goto_3

    .line 1823
    .end local v5           #isVirtualNo:Z
    :catch_0
    move-exception v8

    .line 1824
    .local v8, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Cannot make call R[Service Not Up]"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1827
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public registerForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register call state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for call state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2231
    :goto_0
    return-void

    .line 2229
    :cond_0
    const-string v0, "Can\'t registered for call state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register register status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2235
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for register state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2237
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    :goto_0
    return-void

    .line 2239
    :cond_0
    const-string v0, "Can\'t registered for register status state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register connection status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for connection state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2247
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2248
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    if-eqz v0, :cond_1

    .line 2249
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 2254
    :cond_0
    :goto_0
    return-void

    .line 2251
    :cond_1
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_0
.end method

.method public rejectCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1921
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1922
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1925
    :cond_0
    const/4 v2, -0x1

    .line 1926
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1928
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1929
    const/4 v0, 0x2

    .line 1936
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1938
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1939
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1942
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1947
    return-void

    .line 1930
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1931
    const/4 v0, 0x1

    goto :goto_0

    .line 1933
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1943
    :catch_0
    move-exception v1

    .line 1944
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x2

    .line 1987
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1988
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1991
    :cond_0
    const/4 v2, -0x1

    .line 1992
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1994
    .local v0, callType:I
    if-ne p2, v5, :cond_2

    .line 1995
    const/4 v0, 0x2

    .line 2002
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2005
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 2006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_END_CALL_NW_HANDOVER: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2007
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2018
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2021
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    return-void

    .line 1996
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1997
    const/4 v0, 0x1

    goto :goto_0

    .line 1999
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 2009
    :cond_4
    if-ne p3, v4, :cond_5

    .line 2010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_LOW_BATTERY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2011
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2013
    :cond_5
    if-eq p3, v5, :cond_6

    const/4 v3, 0x7

    if-ne p3, v3, :cond_1

    .line 2014
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_SVC_USER_REJECT_REASON_USR_BUSY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2015
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2022
    :catch_0
    move-exception v1

    .line 2023
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1650
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1651
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot reject change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1654
    :cond_0
    const/4 v0, -0x1

    .line 1655
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1656
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "reject"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    return-void

    .line 1660
    :catch_0
    move-exception v1

    .line 1661
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Reject change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetCameraID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2281
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v1, :cond_0

    .line 2283
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->resetCameraID()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    :goto_0
    return-void

    .line 2284
    :catch_0
    move-exception v0

    .line 2285
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2288
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Ims interface is null stop we can not reset camera ID now!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1384
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1385
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot resume call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1388
    :cond_0
    const/4 v1, -0x1

    .line 1389
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1390
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1391
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "ssId"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1393
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xb

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    return-void

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendDtmf(II)Z
    .locals 7
    .parameter "sessionID"
    .parameter "code"

    .prologue
    .line 1666
    const/4 v1, 0x0

    .line 1667
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    move v2, v1

    .line 1683
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 1671
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1672
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "keyvalue"

    invoke-virtual {v3, v4, p2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1673
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "KeyeventType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1676
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 1683
    .restart local v2       #ret:I
    goto :goto_0

    .line 1679
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 1680
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendLiveVideo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2318
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2319
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2323
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->sendLiveVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    return-void

    .line 2324
    :catch_0
    move-exception v0

    .line 2325
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendStillImage(Ljava/lang/String;)V
    .locals 3
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2306
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2307
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2311
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->sendStillImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2315
    return-void

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAudioMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2413
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2414
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2423
    :goto_0
    return-void

    .line 2419
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setAudioMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2420
    :catch_0
    move-exception v0

    .line 2421
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoResponse(II)V
    .locals 4
    .parameter "flag"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1849
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1850
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set auto response R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1853
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1862
    :goto_0
    return-void

    .line 1858
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1859
    :catch_0
    move-exception v0

    .line 1860
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCameraOrientation(I)V
    .locals 3
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1865
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1866
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1870
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    return-void

    .line 1871
    :catch_0
    move-exception v0

    .line 1872
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDisplay(ILandroid/view/SurfaceHolder;Ljava/lang/String;)V
    .locals 5
    .parameter "sessionID"
    .parameter "holder"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1518
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1519
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1523
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/sec/android/internal/ims/IIMSService;->startVideoRenderer(Landroid/view/Surface;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    return-void

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Can\'t set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSpeakerMode(IZ)V
    .locals 1
    .parameter "sessionID"
    .parameter "speakerMode"

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1515
    return-void
.end method

.method public setVolume(II)V
    .locals 3
    .parameter "sessionID"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 1565
    if-gez p2, :cond_0

    .line 1573
    :goto_0
    return-void

    .line 1567
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public startAudio(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1581
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1585
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startAudio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    return-void

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start audio failed R[Service is not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCamera(IILandroid/view/SurfaceHolder;ZZLjava/lang/String;)I
    .locals 9
    .parameter "sessionID"
    .parameter "cameraID"
    .parameter "surfaceHolder"
    .parameter "isCallEstablished"
    .parameter "isConference"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v0, :cond_0

    .line 1436
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Cannot start camera R[Service Not Up]"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_0
    if-eqz p3, :cond_1

    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V

    .line 1450
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v8

    .line 1447
    .local v8, e:Landroid/os/RemoteException;
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Camera cannot be acquired"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startMedia(I)V
    .locals 0
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1606
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startAudio(I)V

    .line 1607
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startVideo(I)V

    .line 1608
    return-void
.end method

.method public startVideo(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1594
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1598
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    return-void

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopCamera(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1687
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1688
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot stop camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1692
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->stopCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    const/4 v1, 0x0

    return v1

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1695
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera not stopped"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public swapVideoSurface(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2294
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2295
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2299
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->swapVideoSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2303
    return-void

    .line 2300
    :catch_0
    move-exception v0

    .line 2301
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public switchCamera()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1470
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot switch camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1474
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    return-void

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toggleMute(I)V
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1628
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute after = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1630
    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method public upgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 2108
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2109
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2112
    :cond_0
    const/4 v2, -0x1

    .line 2113
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2115
    .local v0, appType:I
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2117
    const/4 v3, 0x5

    if-ne v3, p3, :cond_3

    .line 2118
    if-ne v4, p2, :cond_2

    .line 2119
    const/4 v0, 0x5

    .line 2124
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2126
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    :cond_1
    :goto_1
    return-void

    .line 2121
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2127
    :catch_0
    move-exception v1

    .line 2128
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Upgrade failed R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2130
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    if-ne p3, v4, :cond_1

    .line 2132
    if-ne v4, p2, :cond_4

    .line 2133
    const/4 v0, 0x7

    .line 2137
    :goto_2
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2140
    :try_start_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0x13

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2141
    :catch_1
    move-exception v1

    .line 2142
    .restart local v1       #e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2135
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public voiceRecord(IILjava/lang/String;)V
    .locals 3
    .parameter "command"
    .parameter "sessionID"
    .parameter "mFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1456
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot start camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1459
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p3}, Lcom/sec/android/internal/ims/IIMSService;->voiceRecord(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    return-void

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "errorString"

    .prologue
    .line 2398
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2411
    :goto_0
    return-void

    .line 2405
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ims interface is writeErrorData... !!errorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...errorString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2406
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2407
    :catch_0
    move-exception v0

    .line 2409
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
