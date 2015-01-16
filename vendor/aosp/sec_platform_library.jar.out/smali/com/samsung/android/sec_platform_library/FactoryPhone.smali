.class public Lcom/samsung/android/sec_platform_library/FactoryPhone;
.super Ljava/lang/Object;
.source "FactoryPhone.java"


# instance fields
.field private final BASE_ID:I

.field private BIND_CLASS_NAME:Ljava/lang/String;

.field private HOST_NAME:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mDummyHandler:Landroid/os/Handler;

.field private mPendingMessage:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BASE_ID:I

    .line 23
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 44
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "idxRil"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BASE_ID:I

    .line 23
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 44
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->setMultiRilSupport(I)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "context"
    .parameter "recv"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BASE_ID:I

    .line 23
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 44
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService(Landroid/content/BroadcastReceiver;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver;I)V
    .locals 2
    .parameter "context"
    .parameter "recv"
    .parameter "idxRil"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BASE_ID:I

    .line 23
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 44
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->setMultiRilSupport(I)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method private _insertActionIntoMap(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "action"
    .parameter "response"

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_invokeOemRilRequestRaw([BLandroid/os/Message;Z)V

    .line 129
    return-void
.end method

.method private _invokeOemRilRequestRaw([BLandroid/os/Message;Z)V
    .locals 4
    .parameter "data"
    .parameter "response"
    .parameter "isString"

    .prologue
    .line 137
    if-nez p2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, req:Landroid/os/Bundle;
    if-eqz p3, :cond_1

    .line 143
    const-string v1, "Action"

    invoke-direct {p0, p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->convertByteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 148
    new-instance v1, Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 150
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServiceMessenger is null, add message to pending queue..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->addMessageToPendingQueue(Landroid/os/Message;)V

    .line 161
    :goto_1
    return-void

    .line 145
    :cond_1
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 157
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 166
    aget-byte v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setMultiRilSupport(I)V
    .locals 4
    .parameter "idxRil"

    .prologue
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, strRilIdxPostfix:Ljava/lang/String;
    if-lez p1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiRilSupport() : bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiRilSupport() : Wrong index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addMessageToPendingQueue(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addMessageToPendingQueue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectToRilService()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind SecPhone Service with FactoryPhone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    return-void
.end method

.method public connectToRilService(Landroid/content/BroadcastReceiver;)V
    .locals 5
    .parameter "recv"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " peek SecPhone Service with FactoryPhone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.sec.phone"

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Landroid/content/BroadcastReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 111
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 112
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 113
    :cond_0
    return-void
.end method

.method public disconnectFromRilService()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "disconnect from Ril service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 121
    :cond_0
    return-void
.end method

.method public insertActionIntoMap(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .parameter "handler"
    .parameter "action"
    .parameter "what"

    .prologue
    .line 124
    invoke-static {p1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_insertActionIntoMap(Ljava/lang/String;Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invokeOemRilRequestRaw()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_invokeOemRilRequestRaw([BLandroid/os/Message;Z)V

    .line 134
    return-void
.end method

.method registerAction()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "default registerAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public declared-synchronized sendPendingMessage()V
    .locals 3

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sendPendingMessage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
