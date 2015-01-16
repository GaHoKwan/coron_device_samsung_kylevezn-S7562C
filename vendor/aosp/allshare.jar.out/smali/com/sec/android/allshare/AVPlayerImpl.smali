.class final Lcom/sec/android/allshare/AVPlayerImpl;
.super Lcom/sec/android/allshare/media/AVPlayer;
.source "AVPlayerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# static fields
.field private static final TAG_CLASS:Ljava/lang/String; = "AVPlayerImpl"


# instance fields
.field private mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

.field private mAVPlayerEventListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;

.field private mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field private mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

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

.field private mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

.field private mIsSubscribed:Z

.field private mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 6
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-direct {p0}, Lcom/sec/android/allshare/media/AVPlayer;-><init>()V

    .line 45
    iput-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 49
    iput-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    .line 51
    iput-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 53
    iput-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 55
    iput-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    .line 57
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    .line 59
    iput-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 595
    new-instance v3, Lcom/sec/android/allshare/AVPlayerImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/allshare/AVPlayerImpl$1;-><init>(Lcom/sec/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 665
    new-instance v3, Lcom/sec/android/allshare/AVPlayerImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/allshare/AVPlayerImpl$2;-><init>(Lcom/sec/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 62
    if-nez p1, :cond_0

    .line 64
    const-string v3, "AVPlayerImpl"

    const-string v4, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 69
    iput-object p2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 71
    invoke-virtual {p2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "BUNDLE_BOOLEAN_SUPPORT_AUDIO_PLAYLIST_PLAYER"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 74
    .local v1, isSupportAudioPlaylist:Ljava/lang/Boolean;
    const-string v3, "BUNDLE_BOOLEAN_SUPPORT_VIDEO_PLAYLIST_PLAYER"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 77
    .local v2, isSupportVideoPlaylist:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    :cond_1
    new-instance v3, Lcom/sec/android/allshare/PlaylistPlayerImpl;

    invoke-direct {v3, p1, p2}, Lcom/sec/android/allshare/PlaylistPlayerImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V

    iput-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    goto :goto_0

    .line 80
    :cond_2
    iput-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    return-object v0
.end method

.method private extractBundle(Lcom/sec/android/allshare/Item;)Landroid/os/Bundle;
    .locals 3
    .parameter "ai"

    .prologue
    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v0, bundle:Landroid/os/Bundle;
    instance-of v1, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v1, :cond_0

    .line 498
    const-string v1, "BUNDLE_PARCELABLE_ITEM"

    check-cast p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    .end local p1
    invoke-interface {p1}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 501
    :cond_0
    return-object v0
.end method

.method private playFilePath(Ljava/lang/String;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filePath"
    .parameter "item"
    .parameter "contentInfo"
    .parameter "mimeType"
    .parameter "actionID"

    .prologue
    .line 575
    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v3}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 576
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v3, p2, p3, v4}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 593
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, title:Ljava/lang/String;
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 584
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {v1, p5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AVPlayerImpl;->extractBundle(Lcom/sec/android/allshare/Item;)Landroid/os/Bundle;

    move-result-object v0

    .line 587
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v3, "BUNDLE_STRING_TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v3, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 591
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 592
    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method private playItem(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "item"
    .parameter "contentInfo"
    .parameter "actionID"

    .prologue
    .line 532
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 547
    :goto_0
    return-void

    .line 538
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 539
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {v1, p3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/AVPlayerImpl;->extractBundle(Lcom/sec/android/allshare/Item;)Landroid/os/Bundle;

    move-result-object v0

    .line 542
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v2, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method private playLocalContent(Landroid/net/Uri;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 6
    .parameter "uri"
    .parameter "item"
    .parameter "contentInfo"
    .parameter "mimeType"

    .prologue
    .line 509
    const-string v5, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_URI"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/allshare/AVPlayerImpl;->playUri(Landroid/net/Uri;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private playLocalContent(Ljava/lang/String;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 6
    .parameter "filepath"
    .parameter "item"
    .parameter "contentInfo"
    .parameter "mimeType"

    .prologue
    .line 515
    const-string v5, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH_WITH_METADATA"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/allshare/AVPlayerImpl;->playFilePath(Ljava/lang/String;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private playMediaContent(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 1
    .parameter "item"
    .parameter "contentInfo"

    .prologue
    .line 505
    const-string v0, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY"

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/allshare/AVPlayerImpl;->playItem(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private playUri(Landroid/net/Uri;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "item"
    .parameter "contentInfo"
    .parameter "mimeType"
    .parameter "actionID"

    .prologue
    .line 552
    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v3}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v3, p2, p3, v4}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 571
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, title:Ljava/lang/String;
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 561
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {v1, p5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AVPlayerImpl;->extractBundle(Lcom/sec/android/allshare/Item;)Landroid/os/Bundle;

    move-result-object v0

    .line 564
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v3, "BUNDLE_STRING_TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v3, "BUNDLE_PARCELABLE_URI"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 567
    const-string v3, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 569
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 570
    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method private playWebContent(Landroid/net/Uri;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "item"
    .parameter "contentInfo"
    .parameter "mimeType"

    .prologue
    .line 520
    const/4 v3, 0x0

    .line 522
    .local v3, ci:Lcom/sec/android/allshare/media/ContentInfo;
    if-eqz p3, :cond_0

    .line 523
    new-instance v6, Lcom/sec/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v6}, Lcom/sec/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 524
    .local v6, builder:Lcom/sec/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {p3}, Lcom/sec/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/sec/android/allshare/media/ContentInfo$Builder;

    .line 525
    invoke-virtual {v6}, Lcom/sec/android/allshare/media/ContentInfo$Builder;->build()Lcom/sec/android/allshare/media/ContentInfo;

    move-result-object v3

    .line 528
    .end local v6           #builder:Lcom/sec/android/allshare/media/ContentInfo$Builder;
    :cond_0
    const-string v5, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_URI"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/allshare/AVPlayerImpl;->playUri(Landroid/net/Uri;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 482
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 484
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 425
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    .line 427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 474
    const-string v0, ""

    .line 476
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 442
    const-string v0, ""

    .line 444
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 458
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

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
    .line 465
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaInfo()V
    .locals 5

    .prologue
    .line 783
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/sec/android/allshare/media/MediaInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 797
    :goto_0
    return-void

    .line 789
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 790
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MEDIA_INFO"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 792
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 793
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 796
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 417
    const-string v0, ""

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMute()V
    .locals 5

    .prologue
    .line 294
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 301
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MUTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 306
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 908
    const-string v0, ""

    .line 910
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 450
    const-string v0, ""

    .line 452
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayPosition()V
    .locals 6

    .prologue
    .line 332
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    const-wide/16 v3, -0x1

    sget-object v5, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(JLcom/sec/android/allshare/ERROR;)V

    .line 346
    :goto_0
    return-void

    .line 338
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 339
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 345
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public getPlayerState()Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 9

    .prologue
    .line 350
    sget-object v5, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 352
    .local v5, state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v6, v5

    .line 377
    .end local v5           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .local v6, state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :goto_0
    return-object v6

    .line 355
    .end local v6           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .restart local v5       #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :cond_1
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 356
    .local v2, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_PLAYER_STATE_SYNC"

    invoke-virtual {v2, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 358
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v1, req_bundle:Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 362
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7, v2}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 363
    .local v4, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v4, :cond_2

    move-object v6, v5

    .line 364
    .end local v5           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .restart local v6       #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    goto :goto_0

    .line 366
    .end local v6           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .restart local v5       #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 368
    .local v3, res_bundle:Landroid/os/Bundle;
    if-nez v3, :cond_3

    move-object v6, v5

    .line 369
    .end local v5           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .restart local v6       #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    goto :goto_0

    .line 372
    .end local v6           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .restart local v5       #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :cond_3
    :try_start_0
    const-string v7, "BUNDLE_STRING_AV_PLAER_STATE"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    move-object v6, v5

    .line 377
    .end local v5           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .restart local v6       #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    goto :goto_0

    .line 374
    .end local v6           #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .restart local v5       #state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "AVPlayerImpl"

    const-string v8, "getPlayerState Exception"

    invoke-static {v7, v8, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getPlaylistPlayer()Lcom/sec/android/allshare/media/PlaylistPlayer;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/sec/android/allshare/media/PlaylistPlayer;

    return-object v0
.end method

.method public getState()V
    .locals 5

    .prologue
    .line 915
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 916
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetStateResponseReceived(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V

    .line 929
    :goto_0
    return-void

    .line 921
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 922
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_PLAYER_STATE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 924
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 928
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public getVolume()V
    .locals 5

    .prologue
    .line 249
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    const/4 v3, -0x1

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 256
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_VOLUME"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 262
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public isRedirectSupportable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public isSupportAudio()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 832
    const/4 v5, 0x0

    .line 833
    .local v5, result:Z
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v6

    .line 836
    :cond_1
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 837
    .local v2, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_AUDIO_SYNC"

    invoke-virtual {v2, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 839
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 840
    .local v1, req_bundle:Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {v2, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 843
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7, v2}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 844
    .local v4, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v4, :cond_0

    .line 847
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 849
    .local v3, res_bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 853
    :try_start_0
    const-string v6, "BUNDLE_BOOLEAN_SUPPORT_AUDIO"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    move v6, v5

    .line 857
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "AVPlayerImpl"

    const-string v7, "isSupportAudio Exception"

    invoke-static {v6, v7, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public isSupportRedirect()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 863
    const/4 v6, 0x0

    .line 864
    .local v6, result:Z
    iget-object v8, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v8}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v8

    if-nez v8, :cond_1

    .line 895
    :cond_0
    :goto_0
    return v7

    .line 867
    :cond_1
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 868
    .local v3, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v8, "ACTION_AV_PLAYER_IS_SUPPORT_REDIRECT_SYNC"

    invoke-virtual {v3, v8}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 870
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 871
    .local v2, req_bundle:Landroid/os/Bundle;
    const-string v8, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v3, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 874
    iget-object v8, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v8, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v5

    .line 875
    .local v5, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v5, :cond_0

    .line 878
    invoke-virtual {v5}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 880
    .local v4, res_bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 883
    const-string v8, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, err:Ljava/lang/String;
    if-eqz v1, :cond_2

    sget-object v8, Lcom/sec/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {v8, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 885
    const-string v8, "AVPlayerImpl"

    const-string v9, "isRedirectSupportable() Exception : NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-static {v8, v9}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_2
    :try_start_0
    const-string v7, "BUNDLE_BOOLEAN_SUPPORT_REDIRECT"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_1
    move v7, v6

    .line 895
    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "AVPlayerImpl"

    const-string v8, "isRedirectSupportable Exception"

    invoke-static {v7, v8, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public isSupportVideo()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 801
    const/4 v5, 0x0

    .line 802
    .local v5, result:Z
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v6

    .line 805
    :cond_1
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 806
    .local v2, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_VIDEO_SYNC"

    invoke-virtual {v2, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 808
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 809
    .local v1, req_bundle:Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v2, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 812
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7, v2}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 813
    .local v4, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v4, :cond_0

    .line 816
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 818
    .local v3, res_bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 822
    :try_start_0
    const-string v6, "BUNDLE_BOOLEAN_SUPPORT_VIDEO"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    move v6, v5

    .line 826
    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "AVPlayerImpl"

    const-string v7, "isSupportVideo Exception"

    invoke-static {v6, v7, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 214
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    :cond_0
    const-string v2, "AVPlayerImpl"

    const-string v3, "pause fail : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v2, "AVPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 221
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PAUSE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 226
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public play(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V
    .locals 10
    .parameter "item"
    .parameter "contentInfo"

    .prologue
    .line 85
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v6}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 86
    :cond_0
    const-string v6, "AVPlayerImpl"

    const-string v7, "play fail : SERVICE_NOT_CONNECTED"

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v7, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v6, p1, p2, v7}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    if-nez p1, :cond_3

    .line 93
    const-string v6, "AVPlayerImpl"

    const-string v7, "play item == null"

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v6, :cond_1

    .line 95
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v7, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v6, p1, p2, v7}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 100
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, bundle:Landroid/os/Bundle;
    instance-of v6, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 104
    check-cast v6, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v6}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    :cond_4
    const-string v6, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, mimeType:Ljava/lang/String;
    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, constructorKey:Ljava/lang/String;
    const-string v6, "WEB_CONTENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play WEB_CONTENT - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_5

    .line 116
    const-string v6, "AVPlayerImpl"

    const-string v7, "uri == null"

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v6, :cond_1

    .line 118
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v7, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v6, p1, p2, v7}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 123
    :cond_5
    if-eqz p2, :cond_6

    .line 124
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play position - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6, p1, p2, v3}, Lcom/sec/android/allshare/AVPlayerImpl;->playWebContent(Landroid/net/Uri;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_7
    const-string v6, "MEDIA_SERVER"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 129
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play MEDIA_SERVER - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p2, :cond_8

    .line 131
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play position - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/AVPlayerImpl;->playMediaContent(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;)V

    goto/16 :goto_0

    .line 135
    :cond_9
    const-string v6, "LOCAL_CONTENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v5

    .line 137
    .local v5, uri:Landroid/net/Uri;
    if-nez v5, :cond_a

    .line 138
    const-string v6, "AVPlayerImpl"

    const-string v7, "play LOCAL_CONTENT : uri == null"

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v7, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v6, p1, p2, v7}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 144
    :cond_a
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 147
    const-string v6, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, filePath:Ljava/lang/String;
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play LOCAL_CONTENT file - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play filePath- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez v2, :cond_b

    .line 153
    const-string v6, "AVPlayerImpl"

    const-string v7, "play LOCAL_CONTENT : uri == null"

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v6, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v7, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v6, p1, p2, v7}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 159
    :cond_b
    if-eqz p2, :cond_c

    .line 160
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play position - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_c
    invoke-direct {p0, v2, p1, p2, v3}, Lcom/sec/android/allshare/AVPlayerImpl;->playLocalContent(Ljava/lang/String;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    .line 163
    .end local v2           #filePath:Ljava/lang/String;
    :cond_d
    const-string v6, "content"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play LOCAL_CONTENT content - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play uri- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz p2, :cond_e

    .line 168
    const-string v6, "AVPlayerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play position - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_e
    invoke-direct {p0, v5, p1, p2, v3}, Lcom/sec/android/allshare/AVPlayerImpl;->playLocalContent(Landroid/net/Uri;Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 938
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    .line 941
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 231
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    :cond_0
    const-string v2, "AVPlayerImpl"

    const-string v3, "resume fail : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string v2, "AVPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 238
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_RESUME"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 244
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public seek(J)V
    .locals 7
    .parameter "p"

    .prologue
    .line 194
    iget-object v4, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v4}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    :cond_0
    const-string v4, "AVPlayerImpl"

    const-string v5, "seek fail : SERVICE_NOT_CONNECTED"

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v5, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v4, p1, p2, v5}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/sec/android/allshare/ERROR;)V

    .line 210
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v4, "AVPlayerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seek pos :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 201
    .local v3, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SEEK"

    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 202
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v2, req_bundle:Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-wide/16 v4, 0x3e8

    mul-long v0, p1, v4

    .line 206
    .local v0, miliTime:J
    const-string v4, "BUNDLE_LONG_POSITION"

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
    invoke-virtual {v3, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 209
    iget-object v4, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public setEventListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    :cond_0
    const-string v0, "AVPlayerImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    .line 401
    iget-boolean v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 402
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 405
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 5
    .parameter "m"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    :cond_0
    const-string v2, "AVPlayerImpl"

    const-string v3, "setMute fail : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V

    .line 328
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v2, "AVPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMute - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 320
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_MUTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "BUNDLE_BOOLEAN_MUTE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 327
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 384
    return-void
.end method

.method public setResponseListener(Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 390
    return-void
.end method

.method public setVolume(I)V
    .locals 5
    .parameter "level"

    .prologue
    .line 267
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    :cond_0
    const-string v2, "AVPlayerImpl"

    const-string v3, "setVolume fail : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    .line 290
    :goto_0
    return-void

    .line 273
    :cond_1
    if-ltz p1, :cond_2

    const/16 v2, 0x64

    if-le p1, v2, :cond_3

    .line 274
    :cond_2
    const-string v2, "AVPlayerImpl"

    const-string v3, "setVolume fail : level (INVALID_ARGUMENT)"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 280
    :cond_3
    const-string v2, "AVPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVolume -level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 282
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_VOLUME"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "BUNDLE_INT_VOLUME"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 289
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 176
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    const-string v2, "AVPlayerImpl"

    const-string v3, "stop fail : SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v2, "AVPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 183
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_STOP"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/sec/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 189
    iget-object v2, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method
