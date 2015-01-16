.class Lcom/sec/android/allshare/extension/SECAVPlayer$4;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"

# interfaces
.implements Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V
    .locals 4
    .parameter "ret"
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .line 707
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    iput-boolean v1, v0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    .line 708
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-ne p2, v0, :cond_3

    .line 709
    const-string v0, "AllShare(ASF)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SECAVPLAYER] onGetMuteResponseReceived - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    iget-boolean v0, v0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer;

    move-result-object v2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/allshare/media/AVPlayer;->setMute(Z)V

    .line 716
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    iput-boolean v1, v0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    .line 717
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V

    .line 719
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 711
    goto :goto_0

    .line 714
    :cond_3
    const-string v0, "AllShare(ASF)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SECAVPLAYER] onGetMuteResponseReceived - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onGetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "volume"
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .line 681
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    iput-boolean v1, v0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 682
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-ne p2, v0, :cond_1

    .line 683
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SECAVPLAYER] onGetVolumeResponseReceived - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer;->setVolumeDelta(I)V
    invoke-static {v0, p1}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1700(Lcom/sec/android/allshare/extension/SECAVPlayer;I)V

    .line 690
    :goto_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    .line 692
    :cond_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1802(Lcom/sec/android/allshare/extension/SECAVPlayer;I)I

    .line 687
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SECAVPLAYER] onGetVolumeResponseReceived - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "ret"
    .parameter "error"

    .prologue
    .line 723
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-ne p2, v0, :cond_1

    .line 724
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SECAVPLAYER] onSetMuteResponseReceived - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V

    .line 730
    :cond_0
    return-void

    .line 726
    :cond_1
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SECAVPLAYER] onSetMuteResponseReceived - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "volume"
    .parameter "error"

    .prologue
    .line 696
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    if-ne p2, v0, :cond_1

    .line 697
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SECAVPLAYER] onSetVolumeResponseReceived - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    .line 703
    :cond_0
    return-void

    .line 699
    :cond_1
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SECAVPLAYER] onSetVolumeResponseReceived - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
