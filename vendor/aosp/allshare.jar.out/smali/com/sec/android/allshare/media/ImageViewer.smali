.class public abstract Lcom/sec/android/allshare/media/ImageViewer;
.super Lcom/sec/android/allshare/Device;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;,
        Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;,
        Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sec/android/allshare/Device;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPlaylistPlayer()Lcom/sec/android/allshare/media/PlaylistPlayer;
.end method

.method public abstract getState()V
.end method

.method public abstract getViewController()Lcom/sec/android/allshare/media/ViewController;
.end method

.method public abstract getViewerState()Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;
.end method

.method public abstract isRedirectSupportable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSupportRedirect()Z
.end method

.method public abstract setEventListener(Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;)V
.end method

.method public abstract setResponseListener(Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;)V
.end method

.method public abstract show(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
.end method

.method public abstract stop()V
.end method
