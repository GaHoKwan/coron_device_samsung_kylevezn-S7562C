.class Lcom/sec/android/allshare/PlaylistPlayerImpl$1;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "PlaylistPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/PlaylistPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlaylistStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "x0"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    .line 100
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_BUFFERING"

    sget-object v2, Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;->BUFFERING:Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PAUSED"

    sget-object v2, Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;->PAUSED:Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_STOPPED"

    sget-object v2, Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;->STOPPED:Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PLAYING"

    sget-object v2, Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;->PLAYING:Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_CONTENT_CHANGED"

    sget-object v2, Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private isContains(Ljava/lang/String;)Z
    .locals 4
    .parameter "fullUri"

    .prologue
    const/4 v2, 0x0

    .line 153
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v2

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    iget-object v3, v3, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

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

    .line 157
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyEvent(Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/sec/android/allshare/ERROR;)V
    .locals 3
    .parameter "state"
    .parameter "error"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$000(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerEventListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$000(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;->onPlaylistPlayerStateChanged(Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PlaylistPlayerImpl"

    const-string v2, "mEventHandler.notifyEvent Exception"

    invoke-static {v1, v2, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 8
    .parameter "cvm"

    .prologue
    .line 111
    const/4 v5, 0x0

    .line 113
    .local v5, state:Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    if-nez v5, :cond_1

    .line 139
    :cond_0
    :goto_1
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "PlaylistPlayerImpl"

    const-string v7, "mEventHandler.handleEventMessage Exception "

    invoke-static {v6, v7, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 120
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 121
    .local v4, resBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 123
    const-string v6, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, errStr:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 126
    sget-object v3, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 130
    .local v3, error:Lcom/sec/android/allshare/ERROR;
    :goto_2
    sget-object v6, Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    iget-object v6, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    iget-object v6, v6, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    const-string v6, "BUNDLE_STRING_APP_ITEM_ID"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->isContains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 133
    iget-object v6, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 134
    invoke-direct {p0, v5, v3}, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->notifyEvent(Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1

    .line 128
    .end local v3           #error:Lcom/sec/android/allshare/ERROR;
    :cond_2
    invoke-static {v2}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v3

    .restart local v3       #error:Lcom/sec/android/allshare/ERROR;
    goto :goto_2

    .line 137
    :cond_3
    invoke-direct {p0, v5, v3}, Lcom/sec/android/allshare/PlaylistPlayerImpl$1;->notifyEvent(Lcom/sec/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1
.end method
