.class Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 557
    iput-object p1, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "component"
    .parameter "binder"

    .prologue
    .line 561
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #getter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$100(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Subscriber Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {p2}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/iface/ISubscriber;

    move-result-object v1

    #setter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$202(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Lcom/sec/android/allshare/iface/ISubscriber;)Lcom/sec/android/allshare/iface/ISubscriber;

    .line 563
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #setter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v0, p1}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$302(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 564
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #calls: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->onConnected()V
    invoke-static {v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$400(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V

    .line 566
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "component"

    .prologue
    const/4 v3, 0x0

    .line 570
    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #getter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$100(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Subscriber Disconnedted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #setter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;
    invoke-static {v0, v3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$202(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Lcom/sec/android/allshare/iface/ISubscriber;)Lcom/sec/android/allshare/iface/ISubscriber;

    .line 572
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #setter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v0, v3}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$302(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 573
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    #calls: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->onDisconnected()V
    invoke-static {v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$500(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V

    .line 575
    return-void
.end method
