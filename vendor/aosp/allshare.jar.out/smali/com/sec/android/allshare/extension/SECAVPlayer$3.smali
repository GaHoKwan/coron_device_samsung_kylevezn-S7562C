.class Lcom/sec/android/allshare/extension/SECAVPlayer$3;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/extension/SECAVPlayer;->getMediaInfo()V
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
    .line 501
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$3;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$3;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1300(Lcom/sec/android/allshare/extension/SECAVPlayer;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$3;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1302(Lcom/sec/android/allshare/extension/SECAVPlayer;Z)Z

    .line 507
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$3;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1400(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/sec/android/allshare/media/MediaInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 510
    :cond_0
    return-void
.end method
