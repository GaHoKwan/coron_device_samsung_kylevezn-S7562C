.class final Lcom/sec/android/allshare/PlaylistPlayerImpl;
.super Lcom/sec/android/allshare/media/PlaylistPlayer;
.source "PlaylistPlayerImpl.java"


# static fields
.field private static final MIN_TRACK_NUMBER:I = 0x1

.field private static final TAG_CLASS:Ljava/lang/String; = "PlaylistPlayerImpl"


# instance fields
.field private mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

.field mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

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

.field private mFilePath:Ljava/lang/String;

.field private mIsAutoSlideShowMode:Z

.field private mIsNavigateInPause:Z

.field private mIsSeekable:Z

.field private mIsSubscribed:Z

.field private mPlaylist:Lcom/sec/android/allshare/media/Playlist;

.field private mPlaylistPlayerEventListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

.field private mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

.field private mTrackNumber:I


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAllShareConnector;Lcom/sec/android/allshare/DeviceImpl;)V
    .locals 4
    .parameter "connector"
    .parameter "deviceImpl"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/sec/android/allshare/media/PlaylistPlayer;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 50
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 52
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    .line 54
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    .line 60
    iput v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 62
    iput-boolean v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSeekable:Z

    .line 64
    iput-boolean v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsNavigateInPause:Z

    .line 66
    iput-boolean v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsAutoSlideShowMode:Z

    .line 68
    iput-boolean v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    .line 70
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;-><init>(Lcom/sec/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    .line 165
    new-instance v1, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;

    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;-><init>(Lcom/sec/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    .line 73
    if-nez p1, :cond_0

    .line 75
    const-string v1, "PlaylistPlayerImpl"

    const-string v2, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    .line 81
    iput-object p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    .line 83
    invoke-virtual {p2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "BUNDLE_BOOLEAN_SEEKABLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSeekable:Z

    .line 85
    const-string v1, "BUNDLE_BOOLEAN_NAVIGATE_IN_PAUSE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsNavigateInPause:Z

    .line 86
    const-string v1, "BUNDLE_BOOLEAN_AUTO_SLIDE_SHOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsAutoSlideShowMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    return-object v0
.end method

.method private createFilePathForZoom(I)V
    .locals 4
    .parameter "trackNumber"

    .prologue
    .line 364
    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    if-eqz v3, :cond_0

    if-gez p1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    invoke-virtual {v3}, Lcom/sec/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v2

    .line 368
    .local v2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    invoke-direct {p0, v2, p1}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->getCursorFromSelectedItem(Ljava/util/ArrayList;I)Landroid/database/Cursor;

    move-result-object v0

    .line 370
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 373
    const-string v3, "_data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, idx:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 375
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    iput p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    goto :goto_0
.end method

.method private getCursorFromSelectedItem(Ljava/util/ArrayList;I)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter "trackNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    const/4 v2, 0x0

    .line 380
    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v3}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-object v2

    .line 383
    :cond_1
    add-int/lit8 v8, p2, -0x1

    .line 385
    .local v8, itemIndex:I
    if-ltz v8, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v8, v3, :cond_3

    .line 386
    :cond_2
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_3
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/allshare/Item;

    .line 391
    .local v7, item:Lcom/sec/android/allshare/Item;
    if-nez v7, :cond_4

    .line 392
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 395
    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v1

    .line 396
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_5

    .line 397
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 400
    :cond_5
    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v3}, Lcom/sec/android/allshare/IAllShareConnector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_6

    .line 402
    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 406
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cur:Landroid/database/Cursor;
    move-object v2, v6

    .line 407
    goto :goto_0
.end method

.method private registerFilePath(Lcom/sec/android/allshare/media/Playlist;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "playlist"
    .parameter
    .parameter "trackNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/media/Playlist;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    const/4 v2, 0x0

    .line 321
    iput-object p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    .line 322
    iput v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 324
    invoke-direct {p0, p2, v2}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->getCursorFromSelectedItem(Ljava/util/ArrayList;I)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 326
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 330
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, idx:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    const-string v2, "PlaylistPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Play:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayPosition()V
    .locals 5

    .prologue
    .line 513
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    const/4 v3, -0x1

    sget-object v4, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    .line 527
    :goto_0
    return-void

    .line 519
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 520
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 526
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSeekable:Z

    return v0
.end method

.method public isSupportAudio()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 638
    const/4 v5, 0x0

    .line 639
    .local v5, result:Z
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 664
    :cond_0
    :goto_0
    return v6

    .line 642
    :cond_1
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 643
    .local v2, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_AUDIO_PLAYLIST_PLAYER_SYNC"

    invoke-virtual {v2, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 645
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 646
    .local v1, req_bundle:Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_ID"

    iget-object v8, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v8}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v2, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 649
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7, v2}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 650
    .local v4, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v4, :cond_0

    .line 653
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 655
    .local v3, res_bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 659
    :try_start_0
    const-string v6, "BUNDLE_BOOLEAN_SUPPORT_AUDIO_PLAYLIST_PLAYER"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    move v6, v5

    .line 664
    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PlaylistPlayerImpl"

    const-string v7, "isSupportAudio Exception"

    invoke-static {v6, v7, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public isSupportImage()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 607
    const/4 v5, 0x0

    .line 608
    .local v5, result:Z
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v6

    .line 611
    :cond_1
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 612
    .local v2, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_IMAGE_PLAYLIST_PLAYER_SYNC"

    invoke-virtual {v2, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 614
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 615
    .local v1, req_bundle:Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_ID"

    iget-object v8, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v8}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v2, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 618
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7, v2}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 619
    .local v4, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 624
    .local v3, res_bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 628
    :try_start_0
    const-string v6, "BUNDLE_BOOLEAN_SUPPORT_PLAYLIST_PLAYER"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    move v6, v5

    .line 632
    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PlaylistPlayerImpl"

    const-string v7, "isSupportImage Exception"

    invoke-static {v6, v7, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public isSupportNavigateInPause()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsNavigateInPause:Z

    return v0
.end method

.method public isSupportSetAutoFlipMode()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsAutoSlideShowMode:Z

    return v0
.end method

.method public isSupportVideo()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 670
    const/4 v5, 0x0

    .line 671
    .local v5, result:Z
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v6

    .line 674
    :cond_1
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 675
    .local v2, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_IS_SUPPORT_VIDEO_PLAYLIST_PLAYER_SYNC"

    invoke-virtual {v2, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 677
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 678
    .local v1, req_bundle:Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_ID"

    iget-object v8, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v8}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v2, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 681
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7, v2}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 682
    .local v4, res_msg:Lcom/sec/android/allshare/iface/CVMessage;
    if-eqz v4, :cond_0

    .line 685
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 687
    .local v3, res_bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 691
    :try_start_0
    const-string v6, "BUNDLE_BOOLEAN_SUPPORT_VIDEO_PLAYLIST_PLAYER"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    move v6, v5

    .line 696
    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PlaylistPlayerImpl"

    const-string v7, "isSupportVideo Exception"

    invoke-static {v6, v7, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public next()V
    .locals 4

    .prologue
    .line 436
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onNextResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 442
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_NEXT"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 448
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 450
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    if-eqz v2, :cond_1

    .line 451
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 452
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    invoke-virtual {v3}, Lcom/sec/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    iput v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 455
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    invoke-direct {p0, v2}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->createFilePathForZoom(I)V

    goto :goto_0

    .line 452
    :cond_3
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    goto :goto_1
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 479
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 491
    :goto_0
    return-void

    .line 484
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 485
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PAUSE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 487
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 490
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public play(Lcom/sec/android/allshare/media/Playlist;I)V
    .locals 10
    .parameter "playlist"
    .parameter "trackNumber"

    .prologue
    const/4 v9, 0x0

    .line 259
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v7}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 260
    :cond_0
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v8, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v7, p1, p2, v8}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V

    .line 318
    :goto_0
    return-void

    .line 265
    :cond_1
    if-nez p1, :cond_2

    .line 266
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v8, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v7, p1, p2, v8}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V

    .line 268
    iput-object v9, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_2
    const/4 v7, 0x1

    if-ge p2, v7, :cond_3

    .line 273
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v8, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v7, p1, p2, v8}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V

    .line 275
    iput-object v9, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/allshare/media/Playlist;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v3

    .line 280
    .local v3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 281
    :cond_4
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v8, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v7, p1, p2, v8}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V

    .line 283
    iput-object v9, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_5
    iput-object v9, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, bundleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v4, ""

    .line 292
    .local v4, mimeType:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/allshare/Item;

    .line 293
    .local v2, item:Lcom/sec/android/allshare/Item;
    if-eqz v2, :cond_6

    .line 294
    invoke-virtual {v2}, Lcom/sec/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v4

    .line 296
    instance-of v7, v2, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v7, :cond_6

    .line 297
    check-cast v2, Lcom/sec/android/allshare/iface/IBundleHolder;

    .end local v2           #item:Lcom/sec/android/allshare/Item;
    invoke-interface {v2}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_7
    new-instance v6, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v6}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 303
    .local v6, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v7, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PLAY"

    invoke-virtual {v6, v7}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 305
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v5, req_bundle:Landroid/os/Bundle;
    const-string v7, "BUNDLE_PARCELABLE_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 309
    const-string v7, "BUNDLE_STRING_ID"

    iget-object v8, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v8}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v7, "BUNDLE_STRING_MIME_TYPE"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v7, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    invoke-virtual {v5, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    invoke-virtual {v6, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 314
    iget-object v7, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v8, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v7, v6, v8}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 316
    invoke-direct {p0, p1, v3, p2}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->registerFilePath(Lcom/sec/android/allshare/media/Playlist;Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method

.method public previous()V
    .locals 4

    .prologue
    .line 412
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPreviousResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 418
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PERVIOUS"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 424
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 426
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylist:Lcom/sec/android/allshare/media/Playlist;

    if-eqz v2, :cond_1

    .line 427
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 428
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    .line 430
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    invoke-direct {p0, v2}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->createFilePathForZoom(I)V

    goto :goto_0

    .line 428
    :cond_3
    iget v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mTrackNumber:I

    goto :goto_1
.end method

.method public removeEventHandler()V
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    .line 704
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 495
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 509
    :goto_0
    return-void

    .line 500
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 501
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_RESUME"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 504
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 507
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public seek(I)V
    .locals 4
    .parameter "trackNumber"

    .prologue
    .line 339
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const/4 v2, 0x1

    if-ge p1, v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onSeekResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 349
    :cond_2
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 350
    .local v1, mMessage:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SEEK"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v0, mBundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v2, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 357
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    .line 359
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->createFilePathForZoom(I)V

    goto :goto_0
.end method

.method public setAutoFlipMode(Z)V
    .locals 4
    .parameter "onoff"

    .prologue
    .line 565
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 569
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SET_AUTO_FLIP_MODE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v2, "BUNDLE_BOOLEAN_AUTO_SLIDE_SHOW"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 576
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method setCurrentFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "strFilePath"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mFilePath:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPlaybackResponseListener(Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    .line 533
    return-void
.end method

.method public setPlaylistPlayerEventListener(Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    :cond_0
    const-string v0, "PlaylistPlayerImpl"

    const-string v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 542
    :cond_2
    iput-object p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    .line 544
    iget-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 545
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)Z

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 548
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mEventHandler:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mIsSubscribed:Z

    goto :goto_0
.end method

.method public setQuickNavigate(Z)V
    .locals 4
    .parameter "onoff"

    .prologue
    .line 581
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 585
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SET_QUICK_NAVIGATE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 588
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "BUNDLE_BOOLEAN_NAVIGATE_IN_PAUSE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 592
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 461
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/sec/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v2, v3}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    .line 475
    :goto_0
    return-void

    .line 466
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 467
    .local v1, req_msg:Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_STOP"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v0, req_bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ID"

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mDeviceImpl:Lcom/sec/android/allshare/DeviceImpl;

    invoke-virtual {v3}, Lcom/sec/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 473
    iget-object v2, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareConnector:Lcom/sec/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mAllShareRespHandler:Lcom/sec/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/sec/android/allshare/AllShareResponseHandler;)J

    goto :goto_0
.end method
