.class Lcom/samsung/android/sec_platform_library/FactoryPhone$1;
.super Ljava/lang/Object;
.source "FactoryPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sec_platform_library/FactoryPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$000(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$100(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceConnected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$202(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->registerAction()V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->sendPendingMessage()V

    .line 36
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$000(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$100(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceDisconnected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$202(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 41
    return-void
.end method
