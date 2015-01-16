.class Lcom/sec/android/allshare/FileReceiverImpl$2;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
.source "FileReceiverImpl.java"


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
.method constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private notifyListResponse(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .parameter "action"
    .parameter "bundle"

    .prologue
    .line 335
    const-string v2, "BUNDLE_ENUM_ERROR"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, errStr:Ljava/lang/String;
    const-string v2, "BUNDLE_STRING_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, name:Ljava/lang/String;
    const-string v2, "BUNDLE_STRING_SESSIONID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, sessionId:Ljava/lang/String;
    const-string v2, "BUNDLE_STRING_UNIQUEKEY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 341
    .local v13, uniqueKey:Ljava/lang/String;
    const-string v2, "FileReceiverImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sessionID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "FileReceiverImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {v8}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v6

    .line 345
    .local v6, err:Lcom/sec/android/allshare/ERROR;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v4, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const-string v2, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    const-string v2, "FileReceiverImpl"

    const-string v14, "notifyListResponse() ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getTimeKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v2, v13}, Lcom/sec/android/allshare/FileReceiverImpl;->access$300(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v12

    .line 352
    .local v12, tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->putSessionKeyInfoMap(Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V
    invoke-static {v2, v3, v12}, Lcom/sec/android/allshare/FileReceiverImpl;->access$400(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeTimeKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v2, v13}, Lcom/sec/android/allshare/FileReceiverImpl;->access$500(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 357
    const/4 v1, 0x0

    .line 360
    .local v1, listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v12

    .line 361
    invoke-virtual {v12}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v1

    .line 363
    const-string v2, "BUNDLE_STRING_ARRAYLIST_FILE_PATH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 365
    .local v9, filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 366
    .local v11, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v9           #filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #path:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 376
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v2, "FileReceiverImpl"

    const-string v14, "FileReceiverImpl Fail to get SessionKeyInfoMap : NullPointerException"

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .end local v1           #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v12           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_0
    :goto_1
    return-void

    .line 368
    .restart local v1       #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .restart local v9       #filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_1
    if-eqz v1, :cond_2

    .line 369
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_1

    .line 372
    :cond_2
    const-string v2, "FileReceiverImpl"

    const-string v14, "onReceiveResponseReceived listener is null!"

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 380
    .end local v1           #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v9           #filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_3
    const-string v2, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const-string v2, "FileReceiverImpl"

    const-string v14, "notifyListResponse() ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL"

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v1, 0x0

    .line 387
    .restart local v1       #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    :try_start_2
    const-string v2, "FileReceiverImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sessionID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v12

    .line 389
    .restart local v12       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-virtual {v12}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_4

    .line 392
    const-string v2, "AllShareResponseHandler"

    const-string v14, "listener.onCancelResponseReceived( mReceiver, sessionId, err )"

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v2

    invoke-interface {v1, v2, v3, v6}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;->onCancelResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->isCancelRequest()Z
    invoke-static {v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$600(Lcom/sec/android/allshare/FileReceiverImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->removed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$200(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->releaseCancelRequest()V
    invoke-static {v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$700(Lcom/sec/android/allshare/FileReceiverImpl;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 405
    .end local v12           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :catch_1
    move-exception v7

    .line 406
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v2, "FileReceiverImpl"

    const-string v14, "FileReceiverImpl Fail to get SessionKeyInfoMap : NullPointerException"

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v12       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_4
    :try_start_3
    const-string v2, "FileReceiverImpl"

    const-string v14, "onCancelResponseReceived listener is null!"

    invoke-static {v2, v14}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method private notifyResponse(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .parameter "action"
    .parameter "bundle"

    .prologue
    .line 413
    const-string v1, "BUNDLE_ENUM_ERROR"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, errStr:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_NAME"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, name:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, sessionId:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_UNIQUEKEY"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 418
    .local v10, uniqueKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v5

    .line 420
    .local v5, err:Lcom/sec/android/allshare/ERROR;
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_RECEIVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    const-string v1, "FileReceiverImpl"

    const-string v11, "notifyListResponse()- ACTION_FILE_RECEIVER_RECEIVE"

    invoke-static {v1, v11}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getTimeKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v1, v10}, Lcom/sec/android/allshare/FileReceiverImpl;->access$300(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v9

    .line 429
    .local v9, tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->putSessionKeyInfoMap(Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V
    invoke-static {v1, v2, v9}, Lcom/sec/android/allshare/FileReceiverImpl;->access$400(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;)V

    .line 431
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeTimeKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lcom/sec/android/allshare/FileReceiverImpl;->access$500(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v1, v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v9

    .line 435
    invoke-virtual {v9}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v0

    .line 437
    const-string v1, "BUNDLE_STRING_FILE_PATH"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, filePath:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v3, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    if-eqz v0, :cond_1

    .line 442
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v1}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 480
    .end local v0           #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v3           #fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v8           #filePath:Ljava/lang/String;
    .end local v9           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_0
    :goto_0
    return-void

    .line 445
    .restart local v0       #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .restart local v3       #fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v9       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_1
    const-string v1, "FileReceiverImpl"

    const-string v11, "onReceiveResponseReceived listener is null!"

    invoke-static {v1, v11}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v3           #fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v8           #filePath:Ljava/lang/String;
    .end local v9           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :catch_0
    move-exception v6

    .line 449
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v1, "FileReceiverImpl"

    const-string v11, "FileReceiverImpl Fail to get Session or TimeKeyInfoMap : NullPointerException"

    invoke-static {v1, v11}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    .end local v0           #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_2
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_CANCEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const-string v1, "FileReceiverImpl"

    const-string v11, "notifyListResponse()- ACTION_FILE_RECEIVER_CANCEL"

    invoke-static {v1, v11}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x0

    .line 460
    .restart local v0       #listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-static {v1, v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$000(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v9

    .line 462
    .restart local v9       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-virtual {v9}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_3

    .line 464
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mReceiver:Lcom/sec/android/allshare/media/FileReceiver;
    invoke-static {v1}, Lcom/sec/android/allshare/FileReceiverImpl;->access$100(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver;

    move-result-object v1

    invoke-interface {v0, v1, v2, v5}, Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;->onCancelResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    .line 466
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->isCancelRequest()Z
    invoke-static {v1}, Lcom/sec/android/allshare/FileReceiverImpl;->access$600(Lcom/sec/android/allshare/FileReceiverImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->removed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/allshare/FileReceiverImpl;->access$200(Lcom/sec/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$2;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #calls: Lcom/sec/android/allshare/FileReceiverImpl;->releaseCancelRequest()V
    invoke-static {v1}, Lcom/sec/android/allshare/FileReceiverImpl;->access$700(Lcom/sec/android/allshare/FileReceiverImpl;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 475
    .end local v9           #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :catch_1
    move-exception v6

    .line 476
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v1, "FileReceiverImpl"

    const-string v11, "FileReceiverImpl Fail to get SessionKeyInfoMap : NullPointerException"

    invoke-static {v1, v11}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v9       #tempSessionInfo:Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_3
    :try_start_2
    const-string v1, "FileReceiverImpl"

    const-string v11, "onCancelResponseReceived listener is null!"

    invoke-static {v1, v11}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 3
    .parameter "cvm"

    .prologue
    .line 320
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/FileReceiverImpl$2;->notifyResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 326
    :cond_0
    :goto_0
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    const-string v1, "FileReceiverImpl"

    const-string v2, "mRespHandler.handleResponseMessage() called.."

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/FileReceiverImpl$2;->notifyListResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    :cond_1
    :goto_1
    return-void

    .line 323
    :cond_2
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/FileReceiverImpl$2;->notifyResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 329
    :cond_3
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/FileReceiverImpl$2;->notifyListResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method
