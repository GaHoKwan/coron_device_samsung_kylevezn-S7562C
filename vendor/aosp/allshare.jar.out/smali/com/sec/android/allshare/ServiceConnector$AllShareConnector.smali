.class final Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/sec/android/allshare/IAllShareConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllShareConnector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    }
.end annotation


# static fields
.field public static final INVALID_REQUEST_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "AllShareConnector"


# instance fields
.field private mAllShareConnection:Landroid/content/ServiceConnection;

.field private mComponentName:Landroid/content/ComponentName;

.field private mConnecting:Z

.field private mConnectionCallback:Landroid/os/Handler$Callback;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandlerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mID:Ljava/lang/String;

.field private mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriberTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 328
    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    .line 333
    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    .line 336
    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 342
    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 344
    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    .line 346
    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    .line 557
    new-instance v1, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;

    invoke-direct {v1, p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;-><init>(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    .line 582
    new-instance v1, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;

    invoke-direct {v1, p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;-><init>(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 357
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, str_array:[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    .line 368
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    .line 370
    return-void

    .line 360
    .end local v0           #str_array:[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Lcom/sec/android/allshare/iface/ISubscriber;)Lcom/sec/android/allshare/iface/ISubscriber;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->onConnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->onDisconnected()V

    return-void
.end method

.method private addHandlerToHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V
    .locals 2
    .parameter "event"
    .parameter "bundle"
    .parameter "handler"

    .prologue
    .line 880
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;-><init>(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 881
    .local v0, value:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 882
    return-void
.end method

.method private bindAllShareService()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 411
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_0

    .line 412
    const-string v4, "AllShareConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oops~~..context is not vaild.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return v3

    .line 416
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.allshare.framework.SUBSCRIBE_SERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, bind_service:Landroid/content/Intent;
    const-string v4, "com.sec.android.allshare.iface.subscriber"

    iget-object v5, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, bindResult:Z
    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    const-string v4, "AllShareConnector"

    const-string v5, "BindService FAIL: the connection is not made"

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->startAllShareLauncher()Z

    .line 427
    :cond_1
    if-nez v0, :cond_2

    .line 428
    iput-boolean v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 429
    const-string v4, "AllShareConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oops~~..bindService error.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v4, "AllShareConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "check a context is child activities\' context"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v4, "AllShareConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unbind Service : mConnecting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private notifyAllShareDisable()V
    .locals 3

    .prologue
    .line 545
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_0

    .line 546
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 547
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_DISCONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 548
    .local v1, state:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 549
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 552
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
    :cond_0
    return-void
.end method

.method private notifyAllShareEnable()V
    .locals 3

    .prologue
    .line 530
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_0

    .line 531
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 532
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_CONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 533
    .local v1, state:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 534
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 537
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
    :cond_0
    return-void
.end method

.method private onConnected()V
    .locals 3

    .prologue
    .line 505
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 509
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->notifyAllShareEnable()V

    .line 510
    return-void
.end method

.method private onDisconnected()V
    .locals 3

    .prologue
    .line 516
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 520
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->notifyAllShareDisable()V

    .line 522
    return-void
.end method

.method private registerSvcCastReceiver()V
    .locals 5

    .prologue
    .line 442
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 444
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 445
    const-string v2, "AllShareConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "oops~~..context is not vaild.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.allshare.framework.ServiceManager.START_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v2, "com.sec.android.allshare.framework.ServiceManager.STOP_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeHandlerFromHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V
    .locals 2
    .parameter "event"
    .parameter "bundle"
    .parameter "handler"

    .prologue
    .line 886
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;-><init>(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 887
    .local v0, value:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 888
    return-void
.end method

.method private startAllShareLauncher()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 630
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 631
    const-string v3, "AllShareConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "oops~~..context is not vaild.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :goto_0
    return v2

    .line 635
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.allshare.framework.ServiceManager.START_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 637
    const-string v3, "AllShareConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AllShare Service is not installed yet..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private unregisterSvcCastReceiver()V
    .locals 5

    .prologue
    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 464
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 465
    const-string v2, "AllShareConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "oops~~..context is not vaild.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 467
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    .end local v0           #context:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 469
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AllShareConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterSvcCastReceiver exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 385
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    if-ne v0, v1, :cond_0

    .line 386
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Already trying to connecting...wait.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :goto_0
    monitor-exit p0

    return-void

    .line 389
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Already connected to AllShare service framework"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->startAllShareLauncher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->bindAllShareService()Z

    .line 402
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->registerSvcCastReceiver()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public destroyInstance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->disconnect()V

    .line 659
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    .line 663
    iput-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 664
    iput-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    .line 666
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public disconnect()V
    .locals 5

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->unregisterSvcCastReceiver()V

    .line 481
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    .line 483
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 485
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 486
    const-string v2, "AllShareConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "oops~~..context is not vaild.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 491
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 493
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    .end local v0           #context:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 496
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AllShareConnector"

    const-string v3, "disconnect Exception"

    invoke-static {v2, v3, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 892
    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-object v0

    .line 894
    :cond_1
    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 896
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 827
    const/4 v1, 0x0

    .line 830
    .local v1, version:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    invoke-interface {v2}, Lcom/sec/android/allshare/iface/ISubscriber;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    .line 832
    if-nez v1, :cond_0

    .line 833
    const-string v1, "1.0.0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 842
    :cond_0
    :goto_0
    return-object v1

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AllShareConnector"

    const-string v3, "getServiceVersion RemoteException"

    invoke-static {v2, v3, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 836
    const-string v1, ""

    .line 840
    goto :goto_0

    .line 837
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 838
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllShareConnector"

    const-string v3, "getServiceVersion Exception"

    invoke-static {v2, v3, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 839
    const-string v1, ""

    goto :goto_0
.end method

.method public isAllShareServiceConnected()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v0, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J
    .locals 9
    .parameter "cvm"
    .parameter "handler"

    .prologue
    const-wide/16 v4, -0x1

    .line 678
    const-wide/16 v2, -0x1

    .line 680
    .local v2, req_id:J
    iget-object v6, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-eqz v6, :cond_0

    if-nez p2, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-wide v4

    .line 685
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_2

    .line 686
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 690
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 691
    invoke-virtual {p1, v2, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgID(J)V

    .line 694
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgType(I)V

    .line 695
    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 696
    const-string v6, "ServiceConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**Messenger : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getMessenger()Landroid/os/Messenger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v7, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v6, v7, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->requestCVAsync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 701
    const-string v6, "AllShareConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "oops~~. Request failure...Maybe Invalid Action Request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "AllShareConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "oops~~. Request error..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 709
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "AllShareConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "oops~~. Request error..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    move-wide v4, v2

    .line 713
    goto/16 :goto_0
.end method

.method public requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;
    .locals 5
    .parameter "cvm"

    .prologue
    .line 725
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 726
    :cond_0
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 749
    :goto_0
    return-object v2

    .line 730
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 731
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 735
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgType(I)V

    .line 738
    const/4 v2, 0x0

    .line 740
    .local v2, res:Lcom/sec/android/allshare/iface/CVMessage;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->requestCVSync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    .end local v2           #res:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 743
    .restart local v2       #res:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "AllShareConnector"

    const-string v4, "requestCVMSync RemoteException"

    invoke-static {v3, v4, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 744
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 745
    .local v1, e1:Ljava/lang/NullPointerException;
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    .end local v2           #res:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 746
    .restart local v2       #res:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "AllShareConnector"

    const-string v4, "requestCVMSync NullPointerException"

    invoke-static {v3, v4, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 379
    return-void
.end method

.method public subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z
    .locals 7
    .parameter "event"
    .parameter "bundle"
    .parameter "handler"

    .prologue
    .line 763
    const/4 v3, 0x0

    .line 765
    .local v3, res:Z
    iget-object v5, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v5, :cond_0

    move v4, v3

    .line 787
    .end local v3           #res:Z
    .local v4, res:I
    :goto_0
    return v4

    .line 770
    .end local v4           #res:I
    .restart local v3       #res:Z
    :cond_0
    if-nez p2, :cond_1

    .line 771
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 774
    .restart local p2
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    const/4 v5, 0x4

    invoke-direct {v0, v5, p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 775
    .local v0, cvm:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 776
    .local v2, messenger:Landroid/os/Messenger;
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 779
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->addHandlerToHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 782
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v6, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Lcom/sec/android/allshare/iface/ISubscriber;->subscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    move v4, v3

    .line 787
    .restart local v4       #res:I
    goto :goto_0

    .line 783
    .end local v4           #res:I
    :catch_0
    move-exception v1

    .line 784
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "AllShareConnector"

    const-string v6, "subscribeAllShareEvent RemoteException"

    invoke-static {v5, v6, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V
    .locals 5
    .parameter "event"
    .parameter "bundle"
    .parameter "handler"

    .prologue
    .line 798
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v3, :cond_0

    .line 819
    :goto_0
    return-void

    .line 803
    :cond_0
    if-nez p2, :cond_1

    .line 804
    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 807
    .restart local p2
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    const/4 v3, 0x4

    invoke-direct {v0, v3, p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 808
    .local v0, cvm:Lcom/sec/android/allshare/iface/CVMessage;
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 809
    .local v2, messenger:Landroid/os/Messenger;
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 811
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->removeHandlerFromHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 814
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/sec/android/allshare/iface/ISubscriber;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v1

    .line 816
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "AllShareConnector"

    const-string v4, "unsubscribeAllShareEvent RemoteException"

    invoke-static {v3, v4, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
