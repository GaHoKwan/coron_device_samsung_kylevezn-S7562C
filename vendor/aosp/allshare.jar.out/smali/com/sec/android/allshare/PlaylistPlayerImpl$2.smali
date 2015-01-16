.class Lcom/sec/android/allshare/PlaylistPlayerImpl$2;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
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
.field final synthetic this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 14
    .parameter "cvm"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 170
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, actionID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 172
    .local v8, resBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-nez v8, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PLAY"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_2

    .line 177
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    const-string v11, "BUNDLE_STRING_SERVER_URI_LIST"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 181
    :cond_2
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 184
    const-string v10, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v1

    .line 186
    .local v1, error:Lcom/sec/android/allshare/ERROR;
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PLAY"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_b

    .line 187
    const-string v10, "BUNDLE_PARCELABLE_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 189
    .local v6, playlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v10, "BUNDLE_STRING_MIME_TYPE"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, mimeType:Ljava/lang/String;
    const-string v10, "audio"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 192
    new-instance v7, Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;

    invoke-direct {v7}, Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;-><init>()V

    .line 193
    .local v7, playlistBuilder:Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;
    const/4 v3, 0x0

    .line 194
    .local v3, item:Lcom/sec/android/allshare/Item;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 195
    .local v4, itemBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 196
    invoke-static {v4}, Lcom/sec/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v3

    .line 198
    if-eqz v3, :cond_3

    .line 199
    invoke-virtual {v7, v3}, Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;->addItem(Lcom/sec/android/allshare/Item;)Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;

    goto :goto_1

    .line 203
    .end local v4           #itemBundle:Landroid/os/Bundle;
    :cond_4
    const-string v10, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    invoke-virtual {v8, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 204
    .local v9, trackNum:I
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;->build()Lcom/sec/android/allshare/media/Playlist;

    move-result-object v11

    invoke-interface {v10, v11, v9, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 206
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/sec/android/allshare/Item;
    .end local v7           #playlistBuilder:Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;
    .end local v9           #trackNum:I
    :cond_5
    const-string v10, "video"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 207
    new-instance v7, Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;

    invoke-direct {v7}, Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;-><init>()V

    .line 208
    .local v7, playlistBuilder:Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;
    const/4 v3, 0x0

    .line 209
    .restart local v3       #item:Lcom/sec/android/allshare/Item;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 210
    .restart local v4       #itemBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_6

    .line 211
    invoke-static {v4}, Lcom/sec/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v3

    .line 213
    if-eqz v3, :cond_6

    .line 214
    invoke-virtual {v7, v3}, Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;->addItem(Lcom/sec/android/allshare/Item;)Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;

    goto :goto_2

    .line 218
    .end local v4           #itemBundle:Landroid/os/Bundle;
    :cond_7
    const-string v10, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    invoke-virtual {v8, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 219
    .restart local v9       #trackNum:I
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;->build()Lcom/sec/android/allshare/media/Playlist;

    move-result-object v11

    invoke-interface {v10, v11, v9, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 221
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/sec/android/allshare/Item;
    .end local v7           #playlistBuilder:Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;
    .end local v9           #trackNum:I
    :cond_8
    const-string v10, "image"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 222
    new-instance v7, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;

    invoke-direct {v7}, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;-><init>()V

    .line 223
    .local v7, playlistBuilder:Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;
    const/4 v3, 0x0

    .line 224
    .restart local v3       #item:Lcom/sec/android/allshare/Item;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 225
    .restart local v4       #itemBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_9

    .line 226
    invoke-static {v4}, Lcom/sec/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v3

    .line 228
    if-eqz v3, :cond_9

    .line 229
    invoke-virtual {v7, v3}, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->addItem(Lcom/sec/android/allshare/Item;)Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;

    goto :goto_3

    .line 233
    .end local v4           #itemBundle:Landroid/os/Bundle;
    :cond_a
    const-string v10, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    invoke-virtual {v8, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 234
    .restart local v9       #trackNum:I
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->build()Lcom/sec/android/allshare/media/Playlist;

    move-result-object v11

    invoke-interface {v10, v11, v9, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/sec/android/allshare/media/Playlist;ILcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 237
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/sec/android/allshare/Item;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #playlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v7           #playlistBuilder:Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;
    .end local v9           #trackNum:I
    :cond_b
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SEEK"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_c

    .line 238
    const-string v10, "BUNDLE_INT_TRACKNUM"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 239
    .restart local v9       #trackNum:I
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-interface {v10, v9, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onSeekResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 240
    .end local v9           #trackNum:I
    :cond_c
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_NEXT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_d

    .line 241
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onNextResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 242
    :cond_d
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PERVIOUS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_e

    .line 243
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPreviousResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 244
    :cond_e
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_STOP"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_f

    .line 245
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 246
    :cond_f
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PAUSE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_10

    .line 247
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 248
    :cond_10
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_RESUME"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_11

    .line 249
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 250
    :cond_11
    const-string v10, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_0

    .line 251
    const-string v10, "BUNDLE_INT_TRACKNUM"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 252
    .restart local v9       #trackNum:I
    iget-object v10, p0, Lcom/sec/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/sec/android/allshare/PlaylistPlayerImpl;

    #getter for: Lcom/sec/android/allshare/PlaylistPlayerImpl;->mPlaylistPlayerResponseListener:Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/PlaylistPlayerImpl;->access$100(Lcom/sec/android/allshare/PlaylistPlayerImpl;)Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v10

    invoke-interface {v10, v9, v1}, Lcom/sec/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(ILcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0
.end method
