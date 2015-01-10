.class public Lcom/android/phone/NetworkQueryService2;
.super Landroid/app/Service;
.source "NetworkQueryService2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService2$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/android/phone/INetworkQueryService2$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/INetworkQueryServiceCallback2;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Lcom/android/phone/NetworkQueryService2$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService2$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService2;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mLocalBinder:Landroid/os/IBinder;

    .line 80
    new-instance v0, Lcom/android/phone/NetworkQueryService2$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService2$1;-><init>(Lcom/android/phone/NetworkQueryService2;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 104
    new-instance v0, Lcom/android/phone/NetworkQueryService2$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService2$2;-><init>(Lcom/android/phone/NetworkQueryService2;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mBinder:Lcom/android/phone/INetworkQueryService2$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkQueryService2;)Lcom/android/phone/INetworkQueryService2$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mBinder:Lcom/android/phone/INetworkQueryService2$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkQueryService2;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService2;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkQueryService2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/NetworkQueryService2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkQueryService2;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 191
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 192
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    .line 195
    if-nez p1, :cond_0

    .line 197
    monitor-exit v4

    .line 218
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 206
    .local v1, exception:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_2

    .line 207
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .local v0, cb:Lcom/android/phone/INetworkQueryServiceCallback2;
    :try_start_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v0, v3, v1}, Lcom/android/phone/INetworkQueryServiceCallback2;->onQueryComplete(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 202
    .end local v0           #cb:Lcom/android/phone/INetworkQueryServiceCallback2;
    .end local v1           #exception:I
    .end local v2           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 216
    .restart local v1       #exception:I
    .restart local v2       #i:I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 217
    monitor-exit v4

    goto :goto_0

    .end local v1           #exception:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 211
    .restart local v0       #cb:Lcom/android/phone/INetworkQueryServiceCallback2;
    .restart local v1       #exception:I
    .restart local v2       #i:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService2;->mState:I

    .line 163
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 164
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 171
    return-void
.end method
