.class Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyFailed;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/FileReceiverImpl$INotifyProgressEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/FileReceiverImpl$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyFailed"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/allshare/FileReceiverImpl$3;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl$3;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyFailed;->this$1:Lcom/sec/android/allshare/FileReceiverImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyEvent(Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;Landroid/os/Bundle;)V
    .locals 6
    .parameter "listener"
    .parameter "bundle"

    .prologue
    .line 567
    const-string v5, "BUNDLE_STRING_FILE_PATH"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, path:Ljava/lang/String;
    const-string v5, "BUNDLE_ENUM_ERROR"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, errStr:Ljava/lang/String;
    const-string v5, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, sessionId:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v2, file:Ljava/io/File;
    invoke-static {v1}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v0

    .line 574
    .local v0, err:Lcom/sec/android/allshare/ERROR;
    iget-object v5, p0, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyFailed;->this$1:Lcom/sec/android/allshare/FileReceiverImpl$3;

    iget-object v5, v5, Lcom/sec/android/allshare/FileReceiverImpl$3;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v5}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v5

    invoke-interface {p1, v5, v4, v2, v0}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;->onFailed(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V

    .line 575
    return-void
.end method
