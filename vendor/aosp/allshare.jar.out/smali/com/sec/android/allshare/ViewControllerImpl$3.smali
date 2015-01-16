.class Lcom/sec/android/allshare/ViewControllerImpl$3;
.super Landroid/os/Handler;
.source "ViewControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/ViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ViewControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 705
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 707
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 775
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewControl] Event : Others : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 709
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #setter for: Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z
    invoke-static {v0, v3}, Lcom/sec/android/allshare/ViewControllerImpl;->access$202(Lcom/sec/android/allshare/ViewControllerImpl;Z)Z

    .line 711
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 718
    :sswitch_1
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewControl] Event : IAPP_AUTHENTICATION arg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #setter for: Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z
    invoke-static {v0, v3}, Lcom/sec/android/allshare/ViewControllerImpl;->access$202(Lcom/sec/android/allshare/ViewControllerImpl;Z)Z

    .line 722
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 726
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_0

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #setter for: Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z
    invoke-static {v0, v4}, Lcom/sec/android/allshare/ViewControllerImpl;->access$202(Lcom/sec/android/allshare/ViewControllerImpl;Z)Z

    .line 730
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/sec/android/allshare/IAppControlAPI;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$400(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/IAppControlAPI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/allshare/IAppControlAPI;->setTouchGestureTouchMode(I)V

    .line 732
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 741
    :sswitch_2
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewControl] Event : IAPP_AUTHENTICATION_TIMEOUT arg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #setter for: Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z
    invoke-static {v0, v3}, Lcom/sec/android/allshare/ViewControllerImpl;->access$202(Lcom/sec/android/allshare/ViewControllerImpl;Z)Z

    .line 746
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ViewController$IResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$300(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 753
    :sswitch_3
    const-string v0, "ViewControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewControl] Event : IAPP_EXIT arg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #setter for: Lcom/sec/android/allshare/ViewControllerImpl;->mIsConnected:Z
    invoke-static {v0, v3}, Lcom/sec/android/allshare/ViewControllerImpl;->access$202(Lcom/sec/android/allshare/ViewControllerImpl;Z)Z

    .line 757
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$000(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$000(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 762
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_4

    .line 763
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$000(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$000(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/sec/android/allshare/media/ViewController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 767
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_0

    .line 768
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$3;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventListener:Lcom/sec/android/allshare/media/ViewController$IEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->access$000(Lcom/sec/android/allshare/ViewControllerImpl;)Lcom/sec/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 707
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x12c -> :sswitch_3
        0x270f -> :sswitch_0
    .end sparse-switch
.end method
