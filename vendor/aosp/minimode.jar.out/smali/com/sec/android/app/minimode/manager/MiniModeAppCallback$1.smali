.class Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;
.source "MiniModeAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAllRequested()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method public closeRequestedFrom(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public createSnapshot()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 185
    .local v0, tmp:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public focusChanged(Landroid/content/ComponentName;Z)V
    .locals 6
    .parameter "name"
    .parameter "hasFocus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 141
    .local v0, myCN:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v4

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    const/4 v5, -0x1

    invoke-virtual {v4, v2, v1, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideAllRequested()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public movementRequested(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public showAllRequested()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method
