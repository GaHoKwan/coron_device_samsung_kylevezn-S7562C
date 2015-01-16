.class public interface abstract Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;
.super Ljava/lang/Object;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImageViewerResponseListener"
.end annotation


# virtual methods
.method public abstract onGetStateResponseReceived(Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V
.end method
