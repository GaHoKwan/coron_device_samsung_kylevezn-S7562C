.class final Lcom/sec/android/allshare/ImageViewerImpl;
.super Lcom/sec/android/allshare/media/ImageViewer;
.source "ImageViewerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ImageViewerImpl$3;
    }
.end annotation


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "ImageViewerImpl"


# instance fields
.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

.field mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mEventListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;

.field private mIsSubscribed:Z

.field private mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

.field mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

.field private mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

.field private mViewController:Lcom/sec/android/allshare/media/ViewController;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 5
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-direct {p0}, Lcom/sec/android/allshare/media/ImageViewer;-><init>()V

    .line 48
    iput-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 50
    iput-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 52
    iput-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    .line 54
    iput-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mEventListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;

    .line 58
    iput-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mViewController:Lcom/sec/android/allshare/media/ViewController;

    .line 60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    .line 62
    iput-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 85
    new-instance v2, Lcom/sec/android/allshare/ImageViewerImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/allshare/ImageViewerImpl$1;-><init>(Lcom/sec/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 161
    new-instance v2, Lcom/sec/android/allshare/ImageViewerImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/allshare/ImageViewerImpl$2;-><init>(Lcom/sec/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 66
    if-nez p1, :cond_0

    .line 68
    const-string v2, "ImageViewerImpl"

    const-string v3, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 72
    :cond_0
    iput-object p2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 73
    iput-object p1, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 76
    invoke-virtual {p2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_BOOLEAN_SUPPORT_PLAYLIST_PLAYER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 79
    .local v1, isSupportPlaylist:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    new-instance v2, Lcom/sec/android/allshare/PlaylistPlayerImpl;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/allshare/PlaylistPlayerImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    iput-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    goto :goto_0

    .line 82
    :cond_1
    iput-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mEventListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    return-object v0
.end method

.method private showLocalContentContentScheme(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 10
    .parameter "item"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v3}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    const-string v2, "ImageViewerImpl"

    const-string v3, "showLocalContentContentScheme Fail :  SERVICE_NOT_CONNECTED "

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 403
    :goto_0
    return-void

    .line 342
    :cond_1
    if-nez p1, :cond_2

    .line 343
    const-string v2, "ImageViewerImpl"

    const-string v3, "showLocalContentContentScheme Fail :  Item does not exist "

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v1

    .line 349
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_3

    .line 350
    const-string v2, "ImageViewerImpl"

    const-string v3, "showLocalContentContentScheme Fail :  uri == null "

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v3}, Lcom/sec/android/allshare/IAllShareConnector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 356
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_4

    .line 357
    const-string v2, "ImageViewerImpl"

    const-string v3, "showLocalContentContentScheme Fail :  resolver == null "

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    :cond_4
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 362
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 364
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_5

    .line 365
    const-string v2, "ImageViewerImpl"

    const-string v3, "showLocalContentContentScheme Fail :  INVALID_ARGUMENT (cur == null) "

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 370
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 372
    const-string v2, "_data"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 374
    .local v9, idx:I
    if-gez v9, :cond_6

    .line 375
    const-string v2, "ImageViewerImpl"

    const-string v3, "showLocalContentContentScheme Fail :  INVALID_ARGUMENT(idx < 0)"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 377
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 381
    :cond_6
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    if-eqz v2, :cond_7

    .line 382
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    check-cast v2, Lcom/sec/android/allshare/PlaylistPlayerImpl;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->setCurrentFilePath(Ljava/lang/String;)V

    .line 384
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 386
    new-instance v8, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v8}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 387
    .local v8, cvm:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT_URI"

    invoke-virtual {v8, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 388
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v6, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    instance-of v2, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v2, :cond_8

    .line 392
    const-string v3, "BUNDLE_PARCELABLE_ITEM"

    move-object v2, p1

    check-cast v2, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v2}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 395
    :cond_8
    const-string v2, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v6, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 397
    invoke-virtual {v8, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 399
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v8, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 400
    const-string v2, "ImageViewerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showLocalContentContentScheme : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v2, "ImageViewerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showLocalContentContentScheme - uri :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showLocalContentFileScheme(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 7
    .parameter "item"
    .parameter "ci"

    .prologue
    .line 428
    iget-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v4}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 429
    :cond_0
    const-string v4, "ImageViewerImpl"

    const-string v5, "showLocalContentFileScheme Fail - LOCAL_CONTENT : SERVICE_NOT_CONNECTED"

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v5, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v4, p1, p2, v5}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 468
    :goto_0
    return-void

    .line 435
    :cond_1
    const-string v1, ""

    .line 436
    .local v1, filePath:Ljava/lang/String;
    const-string v2, ""

    .line 438
    .local v2, mimeType:Ljava/lang/String;
    instance-of v4, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 439
    check-cast v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v4}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 441
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    const-string v4, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    if-eqz v4, :cond_3

    .line 446
    iget-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    check-cast v4, Lcom/sec/android/allshare/PlaylistPlayerImpl;

    invoke-virtual {v4, v1}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->setCurrentFilePath(Ljava/lang/String;)V

    .line 448
    :cond_3
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 449
    .local v3, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT"

    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 452
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v4, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v4, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    instance-of v4, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v4, :cond_4

    .line 457
    const-string v5, "BUNDLE_PARCELABLE_ITEM"

    move-object v4, p1

    check-cast v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v4}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 460
    :cond_4
    const-string v4, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 462
    invoke-virtual {v3, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 464
    iget-object v4, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 465
    const-string v4, "ImageViewerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showLocalContentFileScheme : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "ImageViewerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showLocalContentFileScheme - file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showMediaContent(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 5
    .parameter "i"
    .parameter "ci"

    .prologue
    .line 406
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    :cond_0
    const-string v2, "ImageViewerImpl"

    const-string v3, "showMediaContent : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 425
    :goto_0
    return-void

    .line 412
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 413
    .local v1, cvm:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    instance-of v2, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v2, :cond_2

    .line 417
    const-string v3, "BUNDLE_PARCELABLE_ITEM"

    move-object v2, p1

    check-cast v2, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v2}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    :cond_2
    const-string v2, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 423
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 424
    const-string v2, "ImageViewerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMediaContent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showWebContent(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 5
    .parameter "ai"
    .parameter "ci"

    .prologue
    .line 305
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    :cond_0
    const-string v2, "ImageViewerImpl"

    const-string v3, "showWebContent : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 333
    :goto_0
    return-void

    .line 311
    :cond_1
    if-nez p1, :cond_2

    .line 312
    const-string v2, "ImageViewerImpl"

    const-string v3, "showLocalContentContentScheme Fail :  Item does not exist "

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 317
    :cond_2
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 318
    .local v1, cvm:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_URI"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 319
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    instance-of v2, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v2, :cond_3

    .line 323
    const-string v3, "BUNDLE_PARCELABLE_ITEM"

    move-object v2, p1

    check-cast v2, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v2}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    :cond_3
    const-string v2, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 330
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 331
    const-string v2, "ImageViewerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWebContent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v2, "ImageViewerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWebContent - uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 557
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 559
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 2

    .prologue
    .line 596
    iget-object v1, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v1, :cond_0

    .line 597
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    .line 600
    :goto_0
    return-object v0

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v1}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    .line 600
    .local v0, result:Lcom/sec/android/allshare/Device$DeviceType;
    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 565
    const-string v0, ""

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 623
    const-string v0, ""

    .line 625
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 575
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIcon()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
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
    .line 580
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 606
    const-string v0, ""

    .line 608
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 227
    const-string v0, ""

    .line 229
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 589
    const-string v0, ""

    .line 591
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlaylistPlayer()Lcom/sec/android/allshare/media/PlaylistPlayer;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    return-object v0
.end method

.method public getState()V
    .locals 5

    .prologue
    .line 702
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 703
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onGetStateResponseReceived(Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;Lcom/sec/android/allshare/ERROR;)V

    .line 716
    :goto_0
    return-void

    .line 708
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 709
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_REQUEST_GET_VIEWER_STATE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 712
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 715
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public getViewController()Lcom/sec/android/allshare/media/ViewController;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 643
    iget-object v11, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v11}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v11

    if-nez v11, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-object v10

    .line 646
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v6, parmBundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 648
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 649
    const-string v11, "ImageViewerImpl"

    const-string v12, "getViewController : bundle is Null"

    invoke-static {v11, v12}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_2
    const-string v11, "BUNDLE_STRING_DEVICE_ID"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, deviceId:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 656
    :cond_3
    const-string v11, "ImageViewerImpl"

    const-string v12, "getViewController : deviceId is Null"

    invoke-static {v11, v12}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_4
    const-string v11, "BUNDLE_STRING_DEVICE_ID"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    new-instance v7, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v7}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 663
    .local v7, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v11, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SET_VIEW_CONTROLLER_SYNC"

    invoke-virtual {v7, v11}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v7, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 666
    iget-object v11, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v11, v7}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v9

    .line 668
    .local v9, res_message:Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v9, :cond_5

    .line 669
    const-string v11, "ImageViewerImpl"

    const-string v12, "res_message is Null"

    invoke-static {v11, v12}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_5
    invoke-virtual {v9}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 675
    .local v8, res_bundle:Landroid/os/Bundle;
    if-nez v8, :cond_6

    .line 676
    const-string v11, "ImageViewerImpl"

    const-string v12, "res_bundle is Null"

    invoke-static {v11, v12}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_6
    const-string v11, "BUNDLE_INT_TV_WIDTH_RESOLUTION"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 681
    .local v5, nTvWidth:I
    const-string v11, "BUNDLE_INT_TV_HEIGHT_RESOLUTION"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 683
    .local v4, nTvHeight:I
    const-string v11, "BUNDLE_BOOLEAN_ZOOMABLE"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 684
    .local v3, isZoomable:Z
    const-string v11, "BUNDLE_BOOLEAN_ROTATABLE"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 686
    .local v2, isRotatable:Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 693
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mViewController:Lcom/sec/android/allshare/media/ViewController;

    if-nez v10, :cond_7

    .line 694
    new-instance v10, Lcom/sec/android/allshare/ViewControllerImpl;

    iget-object v11, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v12, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-direct {v10, v11, v12, v5, v4}, Lcom/sec/android/allshare/ViewControllerImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;II)V

    iput-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mViewController:Lcom/sec/android/allshare/media/ViewController;

    .line 697
    :cond_7
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mViewController:Lcom/sec/android/allshare/media/ViewController;

    goto/16 :goto_0
.end method

.method public getViewerState()Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;
    .locals 10

    .prologue
    .line 491
    iget-object v7, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 492
    :cond_0
    sget-object v7, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    .line 524
    :goto_0
    return-object v7

    .line 494
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v3, parmBundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 496
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 497
    sget-object v7, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    goto :goto_0

    .line 498
    :cond_2
    const-string v7, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, id:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 500
    sget-object v7, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    goto :goto_0

    .line 502
    :cond_3
    const-string v7, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v4, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v4}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 505
    .local v4, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_GET_VIEWER_STATE_SYNC"

    invoke-virtual {v4, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v4, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 508
    iget-object v7, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7, v4}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v6

    .line 510
    .local v6, res_message:Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v6, :cond_4

    .line 511
    sget-object v7, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    goto :goto_0

    .line 513
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 515
    .local v5, res_bundle:Landroid/os/Bundle;
    if-nez v5, :cond_5

    .line 516
    sget-object v7, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    goto :goto_0

    .line 519
    :cond_5
    :try_start_0
    const-string v7, "BUNDLE_STRING_IMAGE_VIEWEW_STATE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ImageViewerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getViewerState Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 524
    sget-object v7, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    goto :goto_0
.end method

.method public isRedirectSupportable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public isSupportRedirect()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 734
    const/4 v6, 0x0

    .line 735
    .local v6, result:Z
    iget-object v8, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v8}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v8

    if-nez v8, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v7

    .line 738
    :cond_1
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 739
    .local v3, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v8, "ACTION_IMAGE_VIEWER_IS_SUPPORT_REDIRECT_SYNC"

    invoke-virtual {v3, v8}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 741
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 742
    .local v2, req_bundle:Landroid/os/Bundle;
    const-string v8, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v3, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 745
    iget-object v8, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v8, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v5

    .line 746
    .local v5, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v5, :cond_0

    .line 749
    invoke-virtual {v5}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 751
    .local v4, res_bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 755
    const-string v8, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, err:Ljava/lang/String;
    if-eqz v1, :cond_2

    sget-object v8, Lcom/sec/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {v8, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 757
    const-string v8, "ImageViewerImpl"

    const-string v9, " isRedirectSupportable() Exception : NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_2
    :try_start_0
    const-string v7, "BUNDLE_BOOLEAN_SUPPORT_REDIRECT"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_1
    move v7, v6

    .line 767
    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ImageViewerImpl"

    const-string v8, "isRedirectSupportable Exception"

    invoke-static {v7, v8, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    .line 724
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mViewController:Lcom/sec/android/allshare/media/ViewController;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mViewController:Lcom/sec/android/allshare/media/ViewController;

    check-cast v0, Lcom/sec/android/allshare/ViewControllerImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ViewControllerImpl;->removeEventHandler()V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    check-cast v0, Lcom/sec/android/allshare/PlaylistPlayerImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->removeEventHandler()V

    .line 730
    :cond_1
    return-void
.end method

.method public setEventListener(Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 535
    :cond_0
    const-string v0, "ImageViewerImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1
    :goto_0
    return-void

    .line 539
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mEventListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;

    .line 541
    iget-boolean v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 542
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 545
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    goto :goto_0
.end method

.method public setResponseListener(Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    .line 530
    return-void
.end method

.method public show(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 7
    .parameter "ai"
    .parameter "ci"

    .prologue
    .line 234
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v5}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 235
    :cond_0
    const-string v5, "ImageViewerImpl"

    const-string v6, "show : SERVICE_NOT_CONNECTED"

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v6, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v5, p1, p2, v6}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    if-nez p1, :cond_3

    .line 241
    const-string v5, "ImageViewerImpl"

    const-string v6, "show item == null"

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v5, :cond_1

    .line 243
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v5, p1, p2, v6}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v3

    .line 249
    .local v3, type:Lcom/sec/android/allshare/Item$MediaType;
    if-nez v3, :cond_4

    .line 250
    const-string v5, "ImageViewerImpl"

    const-string v6, "Invalid media type"

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v5, :cond_1

    .line 252
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v5, p1, p2, v6}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 257
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 259
    sget-object v5, Lcom/sec/android/allshare/ImageViewerImpl$3;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 263
    const-string v5, "ImageViewerImpl"

    const-string v6, "Invalid media type"

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v5, :cond_1

    .line 265
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v5, p1, p2, v6}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 268
    :pswitch_0
    const-string v1, "MEDIA_SERVER"

    .line 270
    .local v1, itemConstructorKey:Ljava/lang/String;
    instance-of v5, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v5, :cond_5

    move-object v5, p1

    .line 271
    check-cast v5, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v5}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_5
    const-string v5, "MEDIA_SERVER"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/ImageViewerImpl;->showMediaContent(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V

    goto :goto_0

    .line 278
    :cond_6
    const-string v5, "WEB_CONTENT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/ImageViewerImpl;->showWebContent(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V

    goto :goto_0

    .line 281
    :cond_7
    const-string v5, "LOCAL_CONTENT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 282
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    .line 284
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_8

    .line 285
    const-string v5, "ImageViewerImpl"

    const-string v6, "uri == null"

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v6, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v5, p1, p2, v6}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 291
    :cond_8
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, scheme:Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/ImageViewerImpl;->showLocalContentContentScheme(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V

    goto/16 :goto_0

    .line 294
    :cond_9
    const-string v5, "file"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/ImageViewerImpl;->showLocalContentFileScheme(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V

    goto/16 :goto_0

    .line 300
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_a
    const-string v5, "ImageViewerImpl"

    const-string v6, "show fail - INVALID ARG "

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 472
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    :cond_0
    const-string v2, "ImageViewerImpl"

    const-string v3, "stop : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 487
    :goto_0
    return-void

    .line 478
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 479
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_STOP"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 485
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 486
    const-string v2, "ImageViewerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
