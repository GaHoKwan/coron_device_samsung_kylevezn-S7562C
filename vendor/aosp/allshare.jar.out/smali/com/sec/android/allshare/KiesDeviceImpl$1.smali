.class Lcom/sec/android/allshare/KiesDeviceImpl$1;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "KiesDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/KiesDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/KiesDeviceImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/KiesDeviceImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/allshare/KiesDeviceImpl$1;->this$0:Lcom/sec/android/allshare/KiesDeviceImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 7
    .parameter "cvm"

    .prologue
    .line 71
    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 73
    .local v2, error:Lcom/sec/android/allshare/ERROR;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 74
    .local v3, resBundle:Landroid/os/Bundle;
    const-string v4, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/sec/android/allshare/KiesDeviceImpl$1;->this$0:Lcom/sec/android/allshare/KiesDeviceImpl;

    #getter for: Lcom/sec/android/allshare/KiesDeviceImpl;->mUPnPDeviceEventListener:Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;
    invoke-static {v4}, Lcom/sec/android/allshare/KiesDeviceImpl;->access$000(Lcom/sec/android/allshare/KiesDeviceImpl;)Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-interface {v4, v5, v6, v2}, Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;->onEventReceived(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .end local v3           #resBundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "UPnPDeviceImpl"

    const-string v5, "mEventHandler.handleEventMessage Exception"

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 83
    .local v1, err:Ljava/lang/Error;
    const-string v4, "UPnPDeviceImpl"

    const-string v5, "mEventHandler.handleEventMessage Error"

    invoke-static {v4, v5, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0
.end method
