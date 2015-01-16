.class Lcom/sec/android/allshare/ImageViewerImpl$1;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "ImageViewerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ImageViewerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/allshare/ImageViewerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "x0"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    .line 89
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_BUFFERING"

    sget-object v2, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->BUFFERING:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_NOMEDIA"

    sget-object v2, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PAUSED"

    sget-object v2, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_STOPPED"

    sget-object v2, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PLAYING"

    sget-object v2, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_CONTENT_CHANGED"

    sget-object v2, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private isContains(Ljava/lang/String;)Z
    .locals 4
    .parameter "fullUri"

    .prologue
    const/4 v2, 0x0

    .line 149
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    iget-object v3, v3, Lcom/sec/android/allshare/ImageViewerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

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

    .line 153
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyEvent(Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;Lcom/sec/android/allshare/ERROR;)V
    .locals 4
    .parameter "state"
    .parameter "error"

    .prologue
    .line 136
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    #getter for: Lcom/sec/android/allshare/ImageViewerImpl;->mEventListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;
    invoke-static {v2}, Lcom/sec/android/allshare/ImageViewerImpl;->access$000(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    #getter for: Lcom/sec/android/allshare/ImageViewerImpl;->mEventListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;
    invoke-static {v2}, Lcom/sec/android/allshare/ImageViewerImpl;->access$000(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerEventListener;->onDeviceChanged(Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ImageViewerImpl"

    const-string v3, "mEventHandler.notifyEvent Exception"

    invoke-static {v2, v3, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 142
    .local v1, err:Ljava/lang/Error;
    const-string v2, "ImageViewerImpl"

    const-string v3, "mEventHandler.notifyEvent Error"

    invoke-static {v2, v3, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 9
    .parameter "cvm"

    .prologue
    .line 100
    sget-object v6, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    .line 101
    .local v6, state:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;
    sget-object v3, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 103
    .local v3, error:Lcom/sec/android/allshare/ERROR;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 104
    .local v5, resBundle:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    move-object v6, v0

    .line 105
    const-string v7, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, errorStr:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 107
    sget-object v3, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 111
    :goto_0
    if-nez v6, :cond_0

    .line 112
    sget-object v6, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    .line 115
    :cond_0
    sget-object v7, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    iget-object v7, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    iget-object v7, v7, Lcom/sec/android/allshare/ImageViewerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    const-string v7, "BUNDLE_STRING_APP_ITEM_ID"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/allshare/ImageViewerImpl$1;->isContains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 119
    iget-object v7, p0, Lcom/sec/android/allshare/ImageViewerImpl$1;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sec/android/allshare/ImageViewerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 120
    invoke-direct {p0, v6, v3}, Lcom/sec/android/allshare/ImageViewerImpl$1;->notifyEvent(Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;Lcom/sec/android/allshare/ERROR;)V

    .line 133
    .end local v4           #errorStr:Ljava/lang/String;
    .end local v5           #resBundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 109
    .restart local v4       #errorStr:Ljava/lang/String;
    .restart local v5       #resBundle:Landroid/os/Bundle;
    :cond_2
    invoke-static {v4}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v3

    goto :goto_0

    .line 123
    :cond_3
    invoke-direct {p0, v6, v3}, Lcom/sec/android/allshare/ImageViewerImpl$1;->notifyEvent(Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 125
    .end local v4           #errorStr:Ljava/lang/String;
    .end local v5           #resBundle:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v7, "ImageViewerImpl"

    const-string v8, "mEventHandler.handleEventMessage Fail to notify event : NullPointerException"

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ImageViewerImpl"

    const-string v8, "mEventHandler.handleEventMessage Fail to notify event"

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 131
    .local v2, err:Ljava/lang/Error;
    const-string v7, "ImageViewerImpl"

    const-string v8, "mEventHandler.handleEventMessage Error"

    invoke-static {v7, v8, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_1
.end method
