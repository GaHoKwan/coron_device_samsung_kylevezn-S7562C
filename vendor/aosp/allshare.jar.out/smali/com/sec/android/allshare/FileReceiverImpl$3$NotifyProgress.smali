.class Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyProgress;
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
    name = "NotifyProgress"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/allshare/FileReceiverImpl$3;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl$3;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyProgress;->this$1:Lcom/sec/android/allshare/FileReceiverImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyEvent(Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;Landroid/os/Bundle;)V
    .locals 11
    .parameter "listener"
    .parameter "bundle"

    .prologue
    .line 518
    sget-object v8, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 520
    .local v8, error:Lcom/sec/android/allshare/ERROR;
    const-string v0, "BUNDLE_LONG_FILE_PROGRESS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 521
    .local v3, progress:J
    const-string v0, "BUNDLE_LONG_FILE_SIZE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 522
    .local v5, size:J
    const-string v0, "BUNDLE_STRING_FILE_PATH"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 523
    .local v10, path:Ljava/lang/String;
    const-string v0, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, sessionId:Ljava/lang/String;
    const-string v0, "BUNDLE_ENUM_ERROR"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 526
    .local v9, errorStr:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 527
    sget-object v8, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    .line 531
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v7, file:Ljava/io/File;
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyProgress;->this$1:Lcom/sec/android/allshare/FileReceiverImpl$3;

    iget-object v0, v0, Lcom/sec/android/allshare/FileReceiverImpl$3;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v0}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v1

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;->onProgressUpdated(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;JJLjava/io/File;Lcom/sec/android/allshare/ERROR;)V

    .line 534
    return-void

    .line 529
    .end local v7           #file:Ljava/io/File;
    :cond_0
    invoke-static {v9}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v8

    goto :goto_0
.end method
