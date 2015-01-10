.class Lcom/android/mms/ui/SlideshowActivity$8;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->handleEvent(Lorg/w3c/dom/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$event:Lorg/w3c/dom/events/Event;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->val$event:Lorg/w3c/dom/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1435
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->val$event:Lorg/w3c/dom/events/Event;

    invoke-interface {v2}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1436
    .local v1, type:Ljava/lang/String;
    const-string v2, "SimlDocumentEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1439
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1440
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v2

    sget-object v3, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    .line 1442
    :cond_0
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmilPlayerController.handleEvent : SMIL_DOCUMENT_END_EVENT, mIsPreview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$2100(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1444
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1446
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1447
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    .line 1455
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1456
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updateToPlayButton()V

    .line 1457
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V
    invoke-static {v2, v5}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;Z)V

    .line 1458
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$2100(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1460
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mFinishHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$2200(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1461
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mFinishHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$2200(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1466
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method
