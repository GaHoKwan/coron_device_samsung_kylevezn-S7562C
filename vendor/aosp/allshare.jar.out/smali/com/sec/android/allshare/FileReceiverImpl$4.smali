.class Lcom/sec/android/allshare/FileReceiverImpl$4;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/FileReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/FileReceiverImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V
    .locals 6
    .parameter "receiver"
    .parameter "sessionID"
    .parameter "file"
    .parameter "err"

    .prologue
    .line 644
    const-string v3, "FileReceiverImpl"

    const-string v4, "onCompleted()"

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v1, 0x0

    .line 649
    .local v1, listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v3, p2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v2

    .line 651
    .local v2, tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-virtual {v2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v1

    .line 654
    if-eqz v1, :cond_1

    .line 655
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;->onCompleted(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V

    .line 660
    :goto_0
    invoke-virtual {v2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->completed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    const-string v3, "FileReceiverImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All of FileTransfer was completed ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v3, p2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$200(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 671
    .end local v2           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_0
    :goto_1
    return-void

    .line 657
    .restart local v2       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_1
    const-string v3, "FileReceiverImpl"

    const-string v4, "onCompleted listener is null!"

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    .end local v2           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :catch_0
    move-exception v0

    .line 667
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FileReceiverImpl"

    const-string v4, "FileReceiverImpl Fail to get SessionKeyInfoMap : NullPointerException"

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onFailed(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V
    .locals 5
    .parameter "receiver"
    .parameter "sessionID"
    .parameter "file"
    .parameter "err"

    .prologue
    .line 610
    const-string v3, "FileReceiverImpl"

    const-string v4, "onFailed()"

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x0

    .line 616
    .local v1, listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v3, p2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v2

    .line 618
    .local v2, tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-virtual {v2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v1

    .line 621
    if-eqz v1, :cond_1

    .line 622
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;->onFailed(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V

    .line 626
    :goto_0
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->isCancelRequest()Z
    invoke-static {v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$600(Lcom/sec/android/allshare/FileReceiverImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->removed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v3, p2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$200(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 630
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->releaseCancelRequest()V
    invoke-static {v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$700(Lcom/sec/android/allshare/FileReceiverImpl;)V

    .line 640
    .end local v2           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_0
    :goto_1
    return-void

    .line 624
    .restart local v2       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_1
    const-string v3, "FileReceiverImpl"

    const-string v4, "onFailed listener is null!"

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    .end local v2           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FileReceiverImpl"

    const-string v4, "FileReceiverImpl Fail to get SessionKeyInfoMap : NullPointerException"

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 631
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v2       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->isCancelRequest()Z
    invoke-static {v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$600(Lcom/sec/android/allshare/FileReceiverImpl;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 633
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v3, p2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$200(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onProgressUpdated(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;JJLjava/io/File;Lcom/sec/android/allshare/ERROR;)V
    .locals 11
    .parameter "receiver"
    .parameter "sessionID"
    .parameter "receivedSize"
    .parameter "totalSize"
    .parameter "file"
    .parameter "err"

    .prologue
    .line 584
    const-string v1, "FileReceiverImpl"

    const-string v2, "onProgressUpdated()"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    .line 591
    .local v0, listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$4;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v1, p2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v10

    .line 593
    .local v10, tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-virtual {v10}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 597
    invoke-interface/range {v0 .. v8}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;->onProgressUpdated(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;JJLjava/io/File;Lcom/sec/android/allshare/ERROR;)V

    .line 606
    .end local v10           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :goto_0
    return-void

    .line 600
    .restart local v10       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_0
    const-string v1, "FileReceiverImpl"

    const-string v2, "onProgressUpdated listener is null!"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    .end local v10           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :catch_0
    move-exception v9

    .line 603
    .local v9, e:Ljava/lang/NullPointerException;
    const-string v1, "FileReceiverImpl"

    const-string v2, "FileReceiverImpl Fail to get SessionKeyInfoMap : NullPointerException"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
