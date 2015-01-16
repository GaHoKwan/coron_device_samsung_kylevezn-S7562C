.class Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;
.super Ljava/lang/Object;
.source "DeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/DeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncActionInvoker"
.end annotation


# instance fields
.field private mMessage:Lcom/sec/android/allshare/iface/CVMessage;

.field final synthetic this$0:Lcom/sec/android/allshare/DeviceFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/allshare/DeviceFinderImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 475
    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "action_id"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 478
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0, p2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/sec/android/allshare/DeviceFinderImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 471
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/sec/android/allshare/DeviceFinderImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method invoke()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    #getter for: Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;
    invoke-static {v2}, Lcom/sec/android/allshare/DeviceFinderImpl;->access$500(Lcom/sec/android/allshare/DeviceFinderImpl;)Lcom/sec/android/allshare/IAllShareConnector;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    #getter for: Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;
    invoke-static {v2}, Lcom/sec/android/allshare/DeviceFinderImpl;->access$500(Lcom/sec/android/allshare/DeviceFinderImpl;)Lcom/sec/android/allshare/IAllShareConnector;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object v1

    .line 494
    :cond_1
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    #getter for: Lcom/sec/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;
    invoke-static {v2}, Lcom/sec/android/allshare/DeviceFinderImpl;->access$500(Lcom/sec/android/allshare/DeviceFinderImpl;)Lcom/sec/android/allshare/IAllShareConnector;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v0

    .line 495
    .local v0, resMessage:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 487
    return-void
.end method
