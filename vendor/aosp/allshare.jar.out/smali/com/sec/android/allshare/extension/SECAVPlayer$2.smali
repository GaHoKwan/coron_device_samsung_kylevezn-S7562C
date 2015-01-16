.class Lcom/sec/android/allshare/extension/SECAVPlayer$2;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 381
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->getPlayPosition()V

    .line 387
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$400(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    move-result-object v0

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$400(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    move-result-object v0

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getMediaInfo()V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1000(Lcom/sec/android/allshare/extension/SECAVPlayer;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 391
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1200(Lcom/sec/android/allshare/extension/SECAVPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$1100(Lcom/sec/android/allshare/extension/SECAVPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    :cond_2
    return-void
.end method
