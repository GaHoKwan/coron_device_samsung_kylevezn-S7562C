.class Lcom/sec/android/allshare/ReceiverImpl$2;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
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
    .line 112
    iput-object p1, p0, Lcom/sec/android/allshare/ReceiverImpl$2;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 8
    .parameter "cvm"

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 117
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, actionID:Ljava/lang/String;
    const-string v6, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v3

    .line 120
    .local v3, err:Lcom/sec/android/allshare/ERROR;
    const-string v6, "com.sec.android.allshare.action.ACTION_RECEIVER_RECEIVE_BY_ITEM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    const-string v6, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 122
    .local v5, itemBundle:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/sec/android/allshare/ReceiverImpl$2;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    invoke-virtual {v6, v5}, Lcom/sec/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v4

    .line 124
    .local v4, item:Lcom/sec/android/allshare/Item;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/allshare/ReceiverImpl$2;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    #getter for: Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;
    invoke-static {v6}, Lcom/sec/android/allshare/ReceiverImpl;->access$100(Lcom/sec/android/allshare/ReceiverImpl;)Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;->onReceiveResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .end local v4           #item:Lcom/sec/android/allshare/Item;
    .end local v5           #itemBundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v4       #item:Lcom/sec/android/allshare/Item;
    .restart local v5       #itemBundle:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ReceiverImpl"

    const-string v7, "mResponseHandler ACTION_RECEIVER_RECEIVE_BY_ITEM Exception"

    invoke-static {v6, v7, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 128
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 129
    .local v2, e:Ljava/lang/Error;
    const-string v6, "ReceiverImpl"

    const-string v7, "mResponseHandler ACTION_RECEIVER_RECEIVE_BY_ITEM Error"

    invoke-static {v6, v7, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0

    .line 133
    .end local v2           #e:Ljava/lang/Error;
    .end local v4           #item:Lcom/sec/android/allshare/Item;
    .end local v5           #itemBundle:Landroid/os/Bundle;
    :cond_1
    const-string v6, "com.sec.android.allshare.action.ACTION_RECEIVER_CANCEL_BY_ITEM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    const-string v6, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 135
    .restart local v5       #itemBundle:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/sec/android/allshare/ReceiverImpl$2;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    invoke-virtual {v6, v5}, Lcom/sec/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v4

    .line 137
    .restart local v4       #item:Lcom/sec/android/allshare/Item;
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/allshare/ReceiverImpl$2;->this$0:Lcom/sec/android/allshare/ReceiverImpl;

    #getter for: Lcom/sec/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;
    invoke-static {v6}, Lcom/sec/android/allshare/ReceiverImpl;->access$100(Lcom/sec/android/allshare/ReceiverImpl;)Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;->onCancelResponseReceived(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 138
    :catch_2
    move-exception v2

    .line 139
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ReceiverImpl"

    const-string v7, "mResponseHandler ACTION_RECEIVER_CANCEL_BY_ITEM Exception"

    invoke-static {v6, v7, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 141
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 142
    .local v2, e:Ljava/lang/Error;
    const-string v6, "ReceiverImpl"

    const-string v7, "mResponseHandler ACTION_RECEIVER_CANCEL_BY_ITEM Error"

    invoke-static {v6, v7, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0
.end method
