.class public interface abstract Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
.super Ljava/lang/Object;
.source "PlaylistPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/PlaylistPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlaylistPlayerPlaybackResponseListener"
.end annotation


# virtual methods
.method public abstract onGetPlayPositionResponseReceived(ILcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onNextResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onPreviousResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onSeekResponseReceived(ILcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method
