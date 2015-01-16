.class public interface abstract Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
.super Ljava/lang/Object;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAVPlayerPlaybackResponseListener"
.end annotation


# virtual methods
.method public abstract onGetMediaInfoResponseReceived(Lcom/sec/android/allshare/media/MediaInfo;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onGetPlayPositionResponseReceived(JLcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onGetStateResponseReceived(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onSeekResponseReceived(JLcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method
