.class Lcom/sec/android/allshare/AVPlayerImpl$1;
.super Lcom/sec/android/allshare/AllShareEventHandler;
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
.field private mAVStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/allshare/AVPlayerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "x0"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    .line 599
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_BUFFERING"

    sget-object v2, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PAUSED"

    sget-object v2, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_STOPPED"

    sget-object v2, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PLAYING"

    sget-object v2, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_NOMEDIA"

    sget-object v2, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_CONTENT_CHANGED"

    sget-object v2, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    return-void
.end method

.method private isContains(Ljava/lang/String;)Z
    .locals 4
    .parameter "fullUri"

    .prologue
    const/4 v2, 0x0

    .line 653
    if-nez p1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v2

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    iget-object v3, v3, Lcom/sec/android/allshare/AVPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 658
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyEvent(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "state"
    .parameter "error"

    .prologue
    .line 643
    iget-object v1, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/AVPlayerImpl;->access$000(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    #getter for: Lcom/sec/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/AVPlayerImpl;->access$000(Lcom/sec/android/allshare/AVPlayerImpl;)Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerEventListener;->onDeviceChanged(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AVPlayerImpl"

    const-string v2, "mEventHandler.notifyEvent Error"

    invoke-static {v1, v2, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 9
    .parameter "cvm"

    .prologue
    .line 610
    sget-object v6, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 611
    .local v6, state:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    sget-object v3, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 613
    .local v3, error:Lcom/sec/android/allshare/ERROR;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 614
    .local v5, resBundle:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->mAVStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    move-object v6, v0

    .line 615
    const-string v7, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, errorStr:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 617
    sget-object v3, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 621
    :goto_0
    sget-object v7, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 622
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    iget-object v7, v7, Lcom/sec/android/allshare/AVPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    const-string v7, "BUNDLE_STRING_APP_ITEM_ID"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/allshare/AVPlayerImpl$1;->isContains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 625
    iget-object v7, p0, Lcom/sec/android/allshare/AVPlayerImpl$1;->this$0:Lcom/sec/android/allshare/AVPlayerImpl;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sec/android/allshare/AVPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 626
    invoke-direct {p0, v6, v3}, Lcom/sec/android/allshare/AVPlayerImpl$1;->notifyEvent(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V

    .line 640
    .end local v4           #errorStr:Ljava/lang/String;
    .end local v5           #resBundle:Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 619
    .restart local v4       #errorStr:Ljava/lang/String;
    .restart local v5       #resBundle:Landroid/os/Bundle;
    :cond_1
    invoke-static {v4}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v3

    goto :goto_0

    .line 629
    :cond_2
    invoke-direct {p0, v6, v3}, Lcom/sec/android/allshare/AVPlayerImpl$1;->notifyEvent(Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 631
    .end local v4           #errorStr:Ljava/lang/String;
    .end local v5           #resBundle:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 632
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v7, "AVPlayerImpl"

    const-string v8, "handleEventMessage Fail to notify event : NullPointerException"

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 634
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 635
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "AVPlayerImpl"

    const-string v8, "handleEventMessage Fail to notify event : Exception"

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 637
    .local v2, err:Ljava/lang/Error;
    const-string v7, "AVPlayerImpl"

    const-string v8, "handleEventMessage Error"

    invoke-static {v7, v8, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_1
.end method
