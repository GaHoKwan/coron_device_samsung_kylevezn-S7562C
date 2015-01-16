.class public abstract Lcom/sec/android/allshare/media/AVPlayer;
.super Lcom/sec/android/allshare/Device;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;,
        Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;,
        Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;,
        Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/sec/android/allshare/Device;-><init>()V

    .line 166
    return-void
.end method


# virtual methods
.method public abstract getMediaInfo()V
.end method

.method public abstract getMute()V
.end method

.method public abstract getPlayPosition()V
.end method

.method public abstract getPlayerState()Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
.end method

.method public abstract getPlaylistPlayer()Lcom/sec/android/allshare/media/PlaylistPlayer;
.end method

.method public abstract getState()V
.end method

.method public abstract getVolume()V
.end method

.method public abstract isRedirectSupportable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSupportAudio()Z
.end method

.method public abstract isSupportRedirect()Z
.end method

.method public abstract isSupportVideo()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(J)V
.end method

.method public abstract setEventListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
.end method

.method public abstract setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract stop()V
.end method
