.class Lcom/sec/android/app/minimode/MiniModeService$7;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

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
    .line 631
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 632
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
    .line 620
    if-nez p1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public createSnapshot()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v2, v2, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 648
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v2, v2, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 649
    .local v0, capture:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 650
    .local v1, scaledBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 665
    :cond_0
    return-object v1
.end method

.method public focusChanged(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "name"
    .parameter "hasFocus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    const/4 v4, -0x1

    invoke-virtual {v3, v1, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

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
    .line 641
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
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
    .line 613
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 614
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
    .line 636
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$7;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    return-void
.end method
