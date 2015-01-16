.class Lcom/sec/android/allshare/FileReceiverImpl$5;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/FileReceiverImpl;->receive(Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/FileReceiverImpl;

.field final synthetic val$filelist:Ljava/util/ArrayList;

.field final synthetic val$responseListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

.field final synthetic val$senderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    iput-object p2, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->val$responseListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    iput-object p3, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->val$filelist:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->val$senderName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 688
    const-string v0, "FileReceiverImpl"

    const-string v1, "mRespHandler.postDelayed.mReceiveResponseListener.onReceiveResponseReceived() called.."

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->val$responseListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v1}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->val$filelist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/allshare/FileReceiverImpl$5;->val$senderName:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 692
    return-void
.end method
