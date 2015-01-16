.class Lcom/sec/android/allshare/AVPlayerImpl$2;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
.source "AVPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/AVPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/AVPlayerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private notifyPlaybackEvent(Landroid/os/Bundle;Lcom/sec/android/allshare/ERROR;)V
    .locals 9
    .parameter "resBundle"
    .parameter "error"

    .prologue
    .line 753
    const/4 v3, 0x0

    .line 754
    .local v3, item:Lcom/sec/android/allshare/Item;
    const/4 v2, 0x0

    .line 755
    .local v2, contentInfo:Lcom/sec/android/allshare/media/ContentInfo;
    const-string v5, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 756
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #contentInfo:Lcom/sec/android/allshare/media/ContentInfo;
    check-cast v2, Lcom/sec/android/allshare/media/ContentInfo;

    .line 758
    .restart local v2       #contentInfo:Lcom/sec/android/allshare/media/ContentInfo;
    if-nez v1, :cond_0

    .line 759
    const-string v5, "AVPlayerImpl"

    const-string v6, "notifyPlaybackEvent bundle == null "

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v3, 0x0

    .line 762
    :cond_0
    invoke-static {v1}, Lcom/sec/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v3

    .line 764
    if-nez v3, :cond_1

    .line 765
    iget-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v5}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    sget-object v6, Lcom/sec/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v5, v3, v2, v6}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    .line 778
    :goto_0
    return-void

    .line 768
    :cond_1
    const-string v5, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, itemConstructor:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, "WEB_CONTENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 772
    new-instance v0, Lcom/sec/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v0}, Lcom/sec/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 773
    .local v0, builder:Lcom/sec/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {v2}, Lcom/sec/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/sec/android/allshare/media/ContentInfo$Builder;

    .line 774
    invoke-virtual {v0}, Lcom/sec/android/allshare/media/ContentInfo$Builder;->build()Lcom/sec/android/allshare/media/ContentInfo;

    move-result-object v2

    .line 776
    .end local v0           #builder:Lcom/sec/android/allshare/media/ContentInfo$Builder;
    :cond_2
    iget-object v5, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v5}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    invoke-interface {v5, v3, v2, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 13
    .parameter "cvm"

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, actionID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 672
    .local v9, resBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-nez v9, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_URI"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH_WITH_METADATA"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_WEB_CONTENTS"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_URI"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 683
    :cond_2
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    const-string v12, "BUNDLE_STRING_SERVER_URI_LIST"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v11, Lcom/sec/android/allshare/AVPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 687
    :cond_3
    const-string v11, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v2

    .line 689
    .local v2, error:Lcom/sec/android/allshare/ERROR;
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 690
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_URI"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH_WITH_METADATA"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_WEB_CONTENTS"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_URI"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 698
    :cond_4
    invoke-direct {p0, v9, v2}, Lcom/sec/android/allshare/AVPlayerImpl$2;->notifyPlaybackEvent(Landroid/os/Bundle;Lcom/sec/android/allshare/ERROR;)V

    .line 734
    :cond_5
    :goto_1
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$200(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 735
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_VOLUME"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 736
    const-string v11, "BUNDLE_INT_VOLUME"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 737
    .local v3, level:I
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$200(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v11

    invoke-interface {v11, v3, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 699
    .end local v3           #level:I
    :cond_6
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_STOP"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 700
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1

    .line 701
    :cond_7
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SEEK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 702
    const-string v11, "BUNDLE_LONG_POSITION"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 703
    .local v7, position:J
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    invoke-interface {v11, v7, v8, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/sec/android/allshare/ERROR;)V

    goto :goto_1

    .line 704
    .end local v7           #position:J
    :cond_8
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PAUSE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 705
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1

    .line 706
    :cond_9
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_RESUME"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 707
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1

    .line 708
    :cond_a
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 709
    const-string v11, "BUNDLE_LONG_POSITION"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 710
    .restart local v7       #position:J
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    invoke-interface {v11, v7, v8, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(JLcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_1

    .line 711
    .end local v7           #position:J
    :cond_b
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MEDIA_INFO"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 712
    const/4 v4, 0x0

    .line 714
    .local v4, mediaInfo:Lcom/sec/android/allshare/media/MediaInfo;
    sget-object v11, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {v11, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 715
    new-instance v4, Lcom/sec/android/allshare/MediaInfoImpl;

    .end local v4           #mediaInfo:Lcom/sec/android/allshare/media/MediaInfo;
    invoke-direct {v4, v9}, Lcom/sec/android/allshare/MediaInfoImpl;-><init>(Landroid/os/Bundle;)V

    .line 717
    .restart local v4       #mediaInfo:Lcom/sec/android/allshare/media/MediaInfo;
    :cond_c
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    invoke-interface {v11, v4, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/sec/android/allshare/media/MediaInfo;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_1

    .line 718
    .end local v4           #mediaInfo:Lcom/sec/android/allshare/media/MediaInfo;
    :cond_d
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_PLAYER_STATE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 720
    const-string v11, "BUNDLE_STRING_AV_PLAER_STATE"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 722
    .local v10, state:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 725
    .local v6, playerState:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :try_start_0
    invoke-static {v10}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 730
    :goto_2
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$100(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v11

    invoke-interface {v11, v6, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetStateResponseReceived(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_1

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    goto :goto_2

    .line 738
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #playerState:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .end local v10           #state:Ljava/lang/String;
    :cond_e
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_VOLUME"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 739
    const-string v11, "BUNDLE_INT_VOLUME"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 740
    .restart local v3       #level:I
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$200(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v11

    invoke-interface {v11, v3, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 741
    .end local v3           #level:I
    :cond_f
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MUTE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 742
    const-string v11, "BUNDLE_BOOLEAN_MUTE"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 743
    .local v5, onoff:Z
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$200(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v11

    invoke-interface {v11, v5, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 744
    .end local v5           #onoff:Z
    :cond_10
    const-string v11, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_MUTE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 745
    const-string v11, "BUNDLE_BOOLEAN_MUTE"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 746
    .restart local v5       #onoff:Z
    iget-object v11, p0, Lcom/sec/android/allshare/AVPlayerImpl$2;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    invoke-static {v11}, Lcom/sec/android/allshare/AVPlayerImpl;->access$200(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v11

    invoke-interface {v11, v5, v2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0
.end method
