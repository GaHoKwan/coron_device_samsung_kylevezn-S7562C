.class Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 587
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.allshare.framework.ServiceManager.START_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const-string v1, "AllShareConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #getter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$100(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Receive AllShare Service Start message...^^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-virtual {v1}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->connect()V

    .line 599
    :goto_0
    return-void

    .line 592
    :cond_0
    const-string v1, "com.sec.android.allshare.framework.ServiceManager.STOP_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    const-string v1, "AllShareConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #getter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$100(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Receive AllShare Service Stop message...^^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #calls: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->onDisconnected()V
    invoke-static {v1}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$500(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V

    goto :goto_0

    .line 596
    :cond_1
    const-string v1, "AllShareConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #getter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$100(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unknown Message..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
