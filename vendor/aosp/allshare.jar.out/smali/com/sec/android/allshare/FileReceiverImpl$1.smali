.class Lcom/sec/android/allshare/FileReceiverImpl$1;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/FileReceiverImpl;->cancel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/FileReceiverImpl;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    iput-object p2, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v1

    .line 157
    .local v1, tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-virtual {v1}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;->onCancelResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 163
    iget-object v2, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$200(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 166
    .end local v0           #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v1           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_0
    return-void
.end method
