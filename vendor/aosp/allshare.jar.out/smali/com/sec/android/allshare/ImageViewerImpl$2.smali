.class Lcom/sec/android/allshare/ImageViewerImpl$2;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
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
.field final synthetic this$0:Lcom/sec/android/allshare/ImageViewerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/allshare/ImageViewerImpl$2;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 13
    .parameter "cvm"

    .prologue
    const/4 v12, 0x1

    .line 166
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, actionID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 169
    .local v7, resBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-nez v7, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v12, :cond_2

    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v12, :cond_2

    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT_URI"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v12, :cond_2

    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_URI"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_3

    .line 177
    :cond_2
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl$2;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    const-string v11, "BUNDLE_STRING_SERVER_URI_LIST"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/android/allshare/ImageViewerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 181
    :cond_3
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl$2;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    #getter for: Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/ImageViewerImpl;->access$100(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 184
    sget-object v2, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 186
    .local v2, error:Lcom/sec/android/allshare/ERROR;
    const-string v10, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, errorStr:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 188
    invoke-static {v3}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v2

    .line 190
    :cond_4
    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v12, :cond_5

    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v12, :cond_5

    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT_URI"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v12, :cond_5

    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_URI"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_7

    .line 194
    :cond_5
    const/4 v5, 0x0

    .line 195
    .local v5, item:Lcom/sec/android/allshare/Item;
    const-string v10, "BUNDLE_PARCELABLE_CONTENT_INFO"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sec/android/allshare/media/ContentInfo;

    .line 197
    .local v4, info:Lcom/sec/android/allshare/media/ContentInfo;
    const-string v10, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 199
    .local v6, itemBundle:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/sec/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v5

    .line 201
    if-nez v5, :cond_6

    .line 202
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl$2;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    #getter for: Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/ImageViewerImpl;->access$100(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v10

    sget-object v11, Lcom/sec/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v10, v5, v4, v11}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 204
    :cond_6
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl$2;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    #getter for: Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/ImageViewerImpl;->access$100(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v10

    invoke-interface {v10, v5, v4, v2}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/media/ContentInfo;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 205
    .end local v4           #info:Lcom/sec/android/allshare/media/ContentInfo;
    .end local v5           #item:Lcom/sec/android/allshare/Item;
    .end local v6           #itemBundle:Landroid/os/Bundle;
    :cond_7
    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_STOP"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_8

    .line 206
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl$2;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    #getter for: Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/ImageViewerImpl;->access$100(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v10

    invoke-interface {v10, v2}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onStopResponseReceived(Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 207
    :cond_8
    const-string v10, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_REQUEST_GET_VIEWER_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 208
    const-string v10, "BUNDLE_STRING_IMAGE_VIEWEW_STATE"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, state:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    .line 213
    .local v9, viewerState:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;
    :try_start_0
    invoke-static {v8}, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 218
    :goto_1
    iget-object v10, p0, Lcom/sec/android/allshare/ImageViewerImpl$2;->this$0:Lcom/sec/android/allshare/ImageViewerImpl;

    #getter for: Lcom/sec/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;
    invoke-static {v10}, Lcom/sec/android/allshare/ImageViewerImpl;->access$100(Lcom/sec/android/allshare/ImageViewerImpl;)Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    move-result-object v10

    invoke-interface {v10, v9, v2}, Lcom/sec/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onGetStateResponseReceived(Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/Exception;
    sget-object v9, Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/sec/android/allshare/media/ImageViewer$ImageViewerState;

    goto :goto_1
.end method
