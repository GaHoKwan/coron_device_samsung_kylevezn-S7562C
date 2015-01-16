.class Lcom/sec/android/allshare/ReceiverImpl$1;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "ReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/ReceiverImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ReceiverImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/allshare/ReceiverImpl$1;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 14
    .parameter "cvm"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, actionID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 67
    .local v8, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl$1;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    #getter for: Lcom/sec/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ReceiverImpl;->access$000(Lcom/sec/android/allshare/ReceiverImpl;)Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, errStr:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 71
    .local v6, error:Lcom/sec/android/allshare/ERROR;
    if-nez v11, :cond_2

    .line 72
    sget-object v6, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    .line 76
    :goto_1
    const-string v0, "com.sec.android.allshare.event.EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "BUNDLE_LONG_PROGRESS"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 78
    .local v1, receivedSize:J
    const-string v0, "BUNDLE_LONG_TOTAL_SIZE"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 79
    .local v3, totalSize:J
    const-string v0, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 81
    .local v12, itemBundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl$1;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v5

    .line 83
    .local v5, item:Lcom/sec/android/allshare/Item;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl$1;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    #getter for: Lcom/sec/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ReceiverImpl;->access$000(Lcom/sec/android/allshare/ReceiverImpl;)Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;

    move-result-object v0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;->onProgressUpdated(JJLcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v9

    .line 85
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "ReceiverImpl"

    const-string v13, "mEventHandler(EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM) Exception "

    invoke-static {v0, v13, v9}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 74
    .end local v1           #receivedSize:J
    .end local v3           #totalSize:J
    .end local v5           #item:Lcom/sec/android/allshare/Item;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v12           #itemBundle:Landroid/os/Bundle;
    :cond_2
    invoke-static {v11}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v6

    goto :goto_1

    .line 87
    .restart local v1       #receivedSize:J
    .restart local v3       #totalSize:J
    .restart local v5       #item:Lcom/sec/android/allshare/Item;
    .restart local v12       #itemBundle:Landroid/os/Bundle;
    :catch_1
    move-exception v10

    .line 88
    .local v10, err:Ljava/lang/Error;
    const-string v0, "ReceiverImpl"

    const-string v13, "mEventHandler(EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM) Error "

    invoke-static {v0, v13, v10}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0

    .line 92
    .end local v1           #receivedSize:J
    .end local v3           #totalSize:J
    .end local v5           #item:Lcom/sec/android/allshare/Item;
    .end local v10           #err:Ljava/lang/Error;
    .end local v12           #itemBundle:Landroid/os/Bundle;
    :cond_3
    const-string v0, "com.sec.android.allshare.event.EVENT_RECEIVER_COMPLETED_BY_ITEM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 94
    .restart local v12       #itemBundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl$1;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v5

    .line 96
    .restart local v5       #item:Lcom/sec/android/allshare/Item;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/allshare/ReceiverImpl$1;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    #getter for: Lcom/sec/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;
    invoke-static {v0}, Lcom/sec/android/allshare/ReceiverImpl;->access$000(Lcom/sec/android/allshare/ReceiverImpl;)Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;->onCompleted(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 97
    :catch_2
    move-exception v9

    .line 98
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v0, "ReceiverImpl"

    const-string v13, "mEventHandler(EVENT_RECEIVER_COMPLETED_BY_ITEM) Exception "

    invoke-static {v0, v13, v9}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 100
    .end local v9           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v10

    .line 101
    .restart local v10       #err:Ljava/lang/Error;
    const-string v0, "ReceiverImpl"

    const-string v13, "mEventHandler(EVENT_RECEIVER_COMPLETED_BY_ITEM) Error "

    invoke-static {v0, v13, v10}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0
.end method
