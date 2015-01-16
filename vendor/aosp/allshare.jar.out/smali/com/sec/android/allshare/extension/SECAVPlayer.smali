.class public Lcom/sec/android/allshare/extension/SECAVPlayer;
.super Lcom/sec/android/allshare/media/AVPlayer;
.source "SECAVPlayer.java"

# interfaces
.implements Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;
.implements Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/SECAVPlayer$5;,
        Lcom/sec/android/allshare/extension/SECAVPlayer$State;,
        Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;,
        Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    }
.end annotation


# instance fields
.field private mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

.field private mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

.field private mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field mChangeMute:Z

.field private mHandlerPlayInfo:Landroid/os/Handler;

.field private mIsPlayInfoThreadRunning:Z

.field private mIsSubscriberRequested:Z

.field private mNotifyStopRunnable:Ljava/lang/Runnable;

.field mRequestChangeMute:Z

.field mRequestVolume:Z

.field private mRunnablePlayInfo:Ljava/lang/Runnable;

.field private mSECAvPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field private mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

.field private mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

.field private mStopTimer:Landroid/os/Handler;

.field private mVolumeDelta:I


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/media/AVPlayer;Landroid/content/Context;)V
    .locals 3
    .parameter "player"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/sec/android/allshare/media/AVPlayer;-><init>()V

    .line 44
    iput v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 46
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 48
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    .line 50
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    .line 149
    iput-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    .line 151
    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;-><init>(Lcom/sec/android/allshare/extension/SECAVPlayer;Lcom/sec/android/allshare/extension/SECAVPlayer$1;)V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    .line 206
    iput-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$1;-><init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    .line 223
    iput-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 377
    iput-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    .line 379
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 381
    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$2;-><init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    .line 493
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 611
    iput-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 613
    iput-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 678
    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$4;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$4;-><init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 154
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    .line 155
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/sec/android/allshare/media/AVPlayer;->setEventListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/sec/android/allshare/media/AVPlayer;->setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/media/AVPlayer;->setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/allshare/extension/SECAVPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/allshare/extension/SECAVPlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/allshare/extension/SECAVPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/allshare/extension/SECAVPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/allshare/extension/SECAVPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/allshare/extension/SECAVPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/extension/SECAVPlayer;->setVolumeDelta(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/sec/android/allshare/extension/SECAVPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/extension/SECAVPlayer$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/media/AVPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    return-object v0
.end method

.method private declared-synchronized guessMeaningOfStopState(Lcom/sec/android/allshare/ERROR;Z)V
    .locals 10
    .parameter "error"
    .parameter "fromEvent"

    .prologue
    const-wide/16 v8, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getLastPos()J
    invoke-static {v6}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$100(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    .line 168
    .local v0, curPos:J
    cmp-long v6, v0, v8

    if-nez v6, :cond_0

    .line 169
    const-string v6, "AllShare(ASF)"

    const-string v7, "[SECAVPLAYER] STOP (not notified)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v6, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v6, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    invoke-static {v6}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v5

    .line 175
    .local v5, mediaInfo:Lcom/sec/android/allshare/media/MediaInfo;
    iget-object v6, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getItemDuration()J
    invoke-static {v6}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$300(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v3

    .line 179
    .local v3, mediaDuration:J
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 180
    invoke-virtual {v5}, Lcom/sec/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v3

    .line 182
    :cond_1
    cmp-long v6, v3, v8

    if-gtz v6, :cond_2

    .line 183
    const-string v6, "AllShare(ASF)"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SECAVPLAYER] mediaDuration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v0           #curPos:J
    .end local v3           #mediaDuration:J
    .end local v5           #mediaInfo:Lcom/sec/android/allshare/media/MediaInfo;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 188
    .restart local v0       #curPos:J
    .restart local v3       #mediaDuration:J
    .restart local v5       #mediaInfo:Lcom/sec/android/allshare/media/MediaInfo;
    :cond_2
    const/4 v2, 0x0

    .line 190
    .local v2, endingMargin:I
    const-wide/16 v6, 0x1e

    cmp-long v6, v3, v6

    if-lez v6, :cond_3

    .line 191
    const/16 v2, 0xa

    .line 197
    :goto_1
    :try_start_2
    const-string v6, "AllShare(ASF)"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SECAVPLAYER] mediaDuration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v6, "AllShare(ASF)"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SECAVPLAYER] curPos : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sub-long v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    int-to-long v8, v2

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnFinish()V

    goto/16 :goto_0

    .line 194
    :cond_3
    long-to-double v6, v3

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v6, v8

    double-to-int v2, v6

    goto :goto_1

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private setVolumeDelta(I)V
    .locals 4
    .parameter "currentVolume"

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, setVolume:I
    iget v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    add-int v0, p1, v1

    .line 656
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 658
    if-gez v0, :cond_2

    .line 659
    const/4 v0, 0x0

    .line 663
    :cond_0
    :goto_0
    if-eq p1, v0, :cond_1

    .line 664
    const-string v1, "AllShare(ASF)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SECAVPLAYER] setVolumeDelta - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/media/AVPlayer;->setVolume(I)V

    .line 667
    :cond_1
    return-void

    .line 660
    :cond_2
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 661
    const/16 v0, 0x64

    goto :goto_0
.end method


# virtual methods
.method public changeMute()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 670
    const-string v0, "AllShare(ASF)"

    const-string v2, "[SECAVPLAYER] changeMute"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    .line 672
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    if-eq v0, v1, :cond_0

    .line 673
    iput-boolean v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    .line 674
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getMute()V

    .line 676
    :cond_0
    return-void

    .line 671
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastReceivedMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLastReceivedPlayPosition()J
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getLastPos()J
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$100(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()V
    .locals 4

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 499
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getMediaInfo()V

    .line 501
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/allshare/extension/SECAVPlayer$3;

    invoke-direct {v1, p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$3;-><init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    return-void
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getMute()V

    .line 522
    return-void
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayPosition()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getPlayPosition()V

    .line 532
    return-void
.end method

.method public getPlayerState()Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getPlayerState()Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistPlayer()Lcom/sec/android/allshare/media/PlaylistPlayer;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getPlaylistPlayer()Lcom/sec/android/allshare/media/PlaylistPlayer;

    move-result-object v0

    return-object v0
.end method

.method public getState()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getState()V

    .line 799
    return-void
.end method

.method public getVolume()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getVolume()V

    .line 542
    return-void
.end method

.method public isRedirectSupportable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public isSupportAudio()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->isSupportAudio()Z

    move-result v0

    return v0
.end method

.method public isSupportRedirect()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public isSupportVideo()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->isSupportVideo()Z

    move-result v0

    return v0
.end method

.method protected notifyOnBuffering()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 259
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] OnBuffering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onBuffering()V

    .line 263
    :cond_0
    return-void
.end method

.method protected notifyOnError(Lcom/sec/android/allshare/ERROR;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 330
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setPlayRequested(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] OnError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 336
    :cond_0
    return-void
.end method

.method protected notifyOnFinish()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] OnFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onFinish()V

    .line 321
    :cond_0
    return-void
.end method

.method protected notifyOnPause()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 295
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] OnPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPause()V

    .line 299
    :cond_0
    return-void
.end method

.method protected notifyOnPlay()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 270
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_1

    .line 276
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] OnPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPlay()V

    .line 279
    :cond_1
    return-void
.end method

.method protected notifyOnProgress(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onProgress(J)V

    .line 287
    :cond_0
    return-void
.end method

.method protected notifyOnStop()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] OnStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onStop()V

    .line 309
    :cond_0
    return-void
.end method

.method public onDeviceChanged(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "state"
    .parameter "err"

    .prologue
    const/4 v2, 0x0

    .line 752
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 754
    sget-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$5;->$SwitchMap$com$sec$android$allshare$media$AVPlayer$AVPlayerState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 756
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnBuffering()V

    goto :goto_0

    .line 761
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnPause()V

    goto :goto_0

    .line 766
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnPlay()V

    goto :goto_0

    .line 771
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->isPlayRequested()Z
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$2000(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-ne v0, v1, :cond_1

    .line 773
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    goto :goto_0

    .line 777
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->guessMeaningOfStopState(Lcom/sec/android/allshare/ERROR;Z)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 782
    :goto_1
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    goto :goto_0

    .line 780
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    goto :goto_1

    .line 786
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->isPlayRequested()Z
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$2000(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnError(Lcom/sec/android/allshare/ERROR;)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 789
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onGetMediaInfoResponseReceived(Lcom/sec/android/allshare/media/MediaInfo;Lcom/sec/android/allshare/ERROR;)V
    .locals 4
    .parameter "mediaInfo"
    .parameter "err"

    .prologue
    .line 364
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setMediaInfo(Lcom/sec/android/allshare/media/MediaInfo;)V
    invoke-static {v0, p1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$800(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/media/MediaInfo;)V

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 373
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/sec/android/allshare/media/MediaInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0
.end method

.method public onGetPlayPositionResponseReceived(JLcom/sec/android/allshare/ERROR;)V
    .locals 2
    .parameter "position"
    .parameter "err"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/allshare/ERROR;->INVALID_DEVICE:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getLastPos()J
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$100(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_3

    .line 354
    :cond_2
    :goto_0
    return-void

    .line 349
    :cond_3
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setLastPos(J)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$700(Lcom/sec/android/allshare/extension/SECAVPlayer$State;J)V

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    goto :goto_0
.end method

.method public onGetStateResponseReceived(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V
    .locals 1
    .parameter "state"
    .parameter "err"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetStateResponseReceived(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V

    .line 450
    :cond_0
    return-void
.end method

.method public onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V
    .locals 2
    .parameter "err"

    .prologue
    .line 437
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 444
    :cond_1
    return-void
.end method

.method public onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V
    .locals 4
    .parameter "ai"
    .parameter "ci"
    .parameter "err"

    .prologue
    .line 397
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {v0, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getMediaInfo()V

    .line 408
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 410
    :cond_2
    return-void

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setPlayRequested(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Z)V

    goto :goto_0
.end method

.method public onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V
    .locals 2
    .parameter "err"

    .prologue
    .line 421
    sget-object v0, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 432
    :cond_1
    return-void
.end method

.method public onSeekResponseReceived(JLcom/sec/android/allshare/ERROR;)V
    .locals 1
    .parameter "requestedPosition"
    .parameter "err"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/sec/android/allshare/ERROR;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 417
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->pause()V

    .line 583
    return-void
.end method

.method public play(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 6
    .parameter "ai"
    .parameter "ci"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 556
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 560
    if-eqz p1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getDuration()J

    move-result-wide v1

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setItemDuration(J)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$1500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;J)V

    .line 564
    :cond_0
    if-nez p2, :cond_2

    .line 565
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setNewPlayState(J)V
    invoke-static {v0, v4, v5}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$1600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;J)V

    .line 570
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->getPlayerState()Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 571
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    #setter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0, v1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setPlayRequested(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 575
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] play"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer;->play(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V

    .line 577
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 578
    return-void

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p2}, Lcom/sec/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v1

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setNewPlayState(J)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$1600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;J)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->resume()V

    .line 588
    return-void
.end method

.method public seek(J)V
    .locals 1
    .parameter "targetTime"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer;->seek(J)V

    .line 594
    return-void
.end method

.method public setEventListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 603
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "m"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/media/AVPlayer;->setMute(Z)V

    .line 609
    return-void
.end method

.method public setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 620
    return-void
.end method

.method public setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 625
    return-void
.end method

.method public setSmartAVPlayerEventListener(Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/sec/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 227
    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/media/AVPlayer;->setVolume(I)V

    .line 630
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 736
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 738
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 740
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    #calls: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setPlayRequested(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 741
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->stop()V

    .line 743
    return-void
.end method

.method public volumeDown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 643
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] volumeDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 645
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v2, :cond_0

    .line 646
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 647
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getVolume()V

    .line 650
    :cond_0
    return-void
.end method

.method public volumeUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 633
    const-string v0, "AllShare(ASF)"

    const-string v1, "[SECAVPLAYER] volumeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 635
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v2, :cond_0

    .line 636
    iput-boolean v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 637
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/sec/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/AVPlayer;->getVolume()V

    .line 640
    :cond_0
    return-void
.end method
