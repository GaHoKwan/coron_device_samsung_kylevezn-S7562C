.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 1052
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1053
    return-void
.end method

.method private decodeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 1056
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1057
    const-string v0, "EVENT_QUIT"

    .line 1065
    :goto_0
    return-object v0

    .line 1058
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1059
    const-string v0, "EVENT_CONTINUE_MMS_CONNECTIVITY"

    goto :goto_0

    .line 1060
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1061
    const-string v0, "EVENT_TRANSACTION_REQUEST"

    goto :goto_0

    .line 1062
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1063
    const-string v0, "EVENT_HANDLE_NEXT_PENDING_TRANSACTION"

    goto :goto_0

    .line 1065
    :cond_3
    const-string v0, "unknown message.what"

    goto :goto_0
.end method

.method private decodeTransactionType(I)Ljava/lang/String;
    .locals 1
    .parameter "transactionType"

    .prologue
    .line 1069
    if-nez p1, :cond_0

    .line 1070
    const-string v0, "NOTIFICATION_TRANSACTION"

    .line 1078
    :goto_0
    return-object v0

    .line 1071
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1072
    const-string v0, "RETRIEVE_TRANSACTION"

    goto :goto_0

    .line 1073
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1074
    const-string v0, "SEND_TRANSACTION"

    goto :goto_0

    .line 1075
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1076
    const-string v0, "READREC_TRANSACTION"

    goto :goto_0

    .line 1078
    :cond_3
    const-string v0, "invalid transaction type"

    goto :goto_0
.end method

.method private processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 1
    .parameter "transaction"
    .parameter "settings"

    .prologue
    .line 1285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;Z)V

    .line 1286
    return-void
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 2
    .parameter "transaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1365
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;ILjava/lang/String;)Z
    .locals 25
    .parameter "transaction"
    .parameter "noNetwork"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1371
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v23

    .line 1372
    .local v23, type:I
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] transaction type  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1376
    .local v14, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_0

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isOutgoingMmsAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1379
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Sending MMS failed. Outgoing MMS is not allowed."

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1383
    const/4 v2, 0x0

    .line 1589
    :goto_0
    return v2

    .line 1384
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_1

    if-nez v23, :cond_2

    :cond_1
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1386
    const/4 v2, 0x0

    goto :goto_0

    .line 1391
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v24

    monitor-enter v24

    .line 1392
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/transaction/Transaction;

    .line 1393
    .local v22, t:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1394
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] Transaction already pending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string v2, "Mms:transaction"

    const-string v3, "[TransactionService] already pending: call beginMmsConnectivity..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v19

    .line 1408
    .local v19, result:I
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_4

    .line 1409
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Sending MMS succeeded."

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1415
    :cond_4
    if-nez v19, :cond_6

    .line 1416
    new-instance v21, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1419
    .local v21, settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1420
    const-string v2, "Mms:transaction"

    const-string v3, "[TransactionService]  processTransaction  empty MMSC url, bail"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1572
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #result:I
    .end local v21           #settings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v22           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1424
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #result:I
    .restart local v21       #settings:Lcom/android/mms/transaction/TransactionSettings;
    .restart local v22       #t:Lcom/android/mms/transaction/Transaction;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1429
    .end local v21           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_6
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1432
    .end local v19           #result:I
    .end local v22           #t:Lcom/android/mms/transaction/Transaction;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/transaction/Transaction;

    .line 1433
    .restart local v22       #t:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1434
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] Duplicated transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_9

    .line 1437
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Sending MMS succeeded."

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_9
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1446
    .end local v22           #t:Lcom/android/mms/transaction/Transaction;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->FdnEnabled:Z
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1447
    const/4 v12, 0x0

    .line 1448
    .local v12, bFdnMmsRestrict:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->getFdnList()[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)[Ljava/lang/String;

    move-result-object v15

    .line 1450
    .local v15, fdnList:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->isGprsCodeInFdnList([Ljava/lang/String;)Z
    invoke-static {v2, v15}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v12, 0x1

    .line 1451
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->FdnEnabled:Z
    invoke-static {v2, v3}, Lcom/android/mms/transaction/TransactionService;->access$1302(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1453
    if-eqz v12, :cond_f

    .line 1454
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 1456
    if-eqz p3, :cond_b

    .line 1457
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1458
    .local v5, values:Landroid/content/ContentValues;
    const-string v2, "resp_st"

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1461
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 1464
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    if-eqz p3, :cond_c

    .line 1465
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1468
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    if-nez v2, :cond_e

    .line 1469
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v18, v0

    .line 1470
    .local v18, noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1471
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1450
    .end local v18           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1474
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1475
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 1476
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1482
    .end local v12           #bFdnMmsRestrict:Z
    .end local v15           #fdnList:[Ljava/lang/String;
    :cond_f
    const-string v2, "persist.sys.dataprefer.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1484
    .local v17, mDataNetwork:I
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_14

    if-nez p2, :cond_14

    if-eqz v17, :cond_14

    .line 1485
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 1487
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    if-nez v2, :cond_10

    .line 1488
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v18, v0

    .line 1489
    .restart local v18       #noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1490
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1493
    .end local v18           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    if-eqz p3, :cond_11

    .line 1494
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1497
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v3, 0x1

    #setter for: Lcom/android/mms/transaction/TransactionService;->mToastType:I
    invoke-static {v2, v3}, Lcom/android/mms/transaction/TransactionService;->access$002(Lcom/android/mms/transaction/TransactionService;I)I

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1502
    :cond_12
    if-eqz p3, :cond_13

    .line 1503
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 1506
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1507
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 1508
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1518
    :cond_14
    const-string v2, "Mms:transaction"

    const-string v3, "[TransactionService] processTransaction: call beginMmsConnectivity..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v13

    .line 1531
    .local v13, connectivityResult:I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_18

    .line 1533
    if-eqz v17, :cond_16

    .line 1534
    if-eqz p3, :cond_15

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 1535
    :cond_15
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1539
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    const-string v2, "Mms:transaction"

    const-string v3, "[TransactionService] processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_17

    .line 1544
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Sending MMS succeeded."

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1548
    :cond_17
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1549
    :cond_18
    const/4 v2, 0x1

    if-le v13, v2, :cond_1c

    .line 1551
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 1552
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    if-nez v2, :cond_1a

    .line 1553
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v18, v0

    .line 1554
    .restart local v18       #noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1564
    .end local v18           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_19
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1565
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 1567
    const/4 v2, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1555
    :cond_1a
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 1556
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v20, v0

    .line 1557
    .local v20, rt:Lcom/android/mms/transaction/RetrieveTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1558
    const-string v2, "Mms:transaction"

    const-string v3, "[TransactionService1] TransactionState.FAILED transaction.getType() : Transaction.RETRIEVE_TRANSACTION"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1559
    .end local v20           #rt:Lcom/android/mms/transaction/RetrieveTransaction;
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 1560
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v22, v0

    .line 1561
    .local v22, t:Lcom/android/mms/transaction/SendTransaction;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/SendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto :goto_2

    .line 1570
    .end local v22           #t:Lcom/android/mms/transaction/SendTransaction;
    :cond_1c
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1575
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1578
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TransactionService] processTransaction: starting transaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1582
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->process()V

    .line 1584
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_1d

    .line 1585
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Sending MMS succeeded."

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1589
    :cond_1d
    const/4 v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 1088
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Handling incoming message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const/4 v14, 0x0

    .line 1092
    .local v14, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 1276
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] what="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1094
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1099
    :sswitch_1
    const/4 v7, 0x0

    .line 1100
    .local v7, mProcessingIsEmpty:Z
    const/4 v6, 0x0

    .line 1102
    .local v6, mPendingIsEmpty:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    monitor-enter v21

    .line 1103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1104
    const/4 v7, 0x1

    .line 1106
    :cond_1
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    monitor-enter v21

    .line 1108
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1109
    const/4 v6, 0x1

    .line 1111
    :cond_2
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1113
    const-string v20, "Mms:transaction"

    const-string v21, "[TransactionService] handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_3

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_3

    .line 1117
    const-string v20, "Mms:transaction"

    const-string v21, "handle EVENT_CONTINUE_MMS_CONNECTIVITY : mProcessing and mPending is empty"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :catchall_0
    move-exception v20

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    .line 1111
    :catchall_1
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20

    .line 1130
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v11

    .line 1131
    .local v11, result:I
    if-eqz v11, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_4

    .line 1132
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Extending MMS connectivity returned "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1141
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)V

    goto/16 :goto_0

    .line 1146
    .end local v6           #mPendingIsEmpty:Z
    .end local v7           #mProcessingIsEmpty:Z
    .end local v11           #result:I
    :sswitch_2
    const-string v20, "Mms:transaction"

    const-string v21, "--------delay somt time unitl now to send the pending transaction------------"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 1151
    :sswitch_3
    const-string v20, "Mms:transaction"

    const-string v21, "Expired apn change waiting."

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/transaction/TransactionSettings;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;Z)V

    goto/16 :goto_0

    .line 1157
    :sswitch_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1159
    .local v12, serviceId:I
    :try_start_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/transaction/TransactionBundle;

    .line 1162
    .local v3, args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v20, "Mms:transaction"

    const-string v21, "[TransactionService] handle EVENT_TRANSACTION_REQUEST event..."

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService]     MmscUrl="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " proxy port: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v8

    .line 1169
    .local v8, mmsc:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 1170
    new-instance v16, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v8, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1177
    .local v16, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v17

    .line 1179
    .local v17, transactionType:I
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeTransactionType(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    packed-switch v17, :pswitch_data_0

    .line 1230
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Invalid transaction type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1231
    const/4 v14, 0x0

    .line 1262
    if-nez v14, :cond_0

    .line 1263
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1267
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 1173
    .end local v16           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v17           #transactionType:I
    :cond_5
    :try_start_5
    new-instance v16, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v16       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto/16 :goto_1

    .line 1185
    .restart local v17       #transactionType:I
    :pswitch_0
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v19

    .line 1186
    .local v19, uri:Ljava/lang/String;
    if-eqz v19, :cond_6

    .line 1187
    new-instance v15, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v14           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v15, transaction:Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .line 1207
    .end local v15           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v14       #transaction:Lcom/android/mms/transaction/Transaction;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1236
    .end local v19           #uri:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v14, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;ILjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v20

    if-nez v20, :cond_9

    .line 1237
    const/4 v14, 0x0

    .line 1262
    if-nez v14, :cond_0

    .line 1263
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1267
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 1192
    .restart local v19       #uri:Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v10

    .line 1193
    .local v10, pushData:[B
    new-instance v9, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v9, v10}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 1194
    .local v9, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    .line 1196
    .local v5, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v18, 0x82

    .line 1197
    .local v18, type:I
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1198
    new-instance v15, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    check-cast v5, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v5           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v12, v1, v5}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v14           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v15       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .end local v15           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v14       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_2

    .line 1202
    .restart local v5       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_7
    const-string v20, "Mms:transaction"

    const-string v21, "[TransactionService] Invalid PUSH data."

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1203
    const/4 v14, 0x0

    .line 1262
    if-nez v14, :cond_0

    .line 1263
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1267
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 1210
    .end local v5           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v9           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v10           #pushData:[B
    .end local v18           #type:I
    .end local v19           #uri:Ljava/lang/String;
    :pswitch_1
    :try_start_7
    new-instance v15, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v14           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v15       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .line 1213
    .end local v15           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v14       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_3

    .line 1216
    :pswitch_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1217
    const-string v20, "GATE"

    const-string v21, "[TransactionService] <GATE-M>MMS_SENDING</GATE-M>"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_8
    new-instance v15, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v14           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v15       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .line 1223
    .end local v15           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v14       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_3

    .line 1225
    :pswitch_3
    new-instance v15, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v14           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v15       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .line 1228
    .end local v15           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v14       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_3

    .line 1241
    :cond_9
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Started processing of incoming message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1262
    if-nez v14, :cond_0

    .line 1263
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1267
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 1242
    .end local v3           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v8           #mmsc:Ljava/lang/String;
    .end local v16           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v17           #transactionType:I
    :catch_0
    move-exception v4

    .line 1243
    .local v4, ex:Ljava/lang/Exception;
    :try_start_8
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Exception occurred while handling message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1245
    if-eqz v14, :cond_b

    .line 1247
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    monitor-enter v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 1250
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1251
    monitor-exit v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1258
    :cond_a
    const/4 v14, 0x0

    .line 1262
    :cond_b
    :goto_4
    if-nez v14, :cond_0

    .line 1263
    const-string v20, "Mms:transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1267
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 1251
    :catchall_2
    move-exception v20

    :try_start_b
    monitor-exit v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 1253
    :catch_1
    move-exception v13

    .line 1254
    .local v13, t:Ljava/lang/Throwable;
    :try_start_d
    const-string v20, "Mms:transaction"

    const-string v21, "[TransactionService] Unexpected Throwable."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1258
    const/4 v14, 0x0

    .line 1259
    goto :goto_4

    .line 1258
    .end local v13           #t:Ljava/lang/Throwable;
    :catchall_3
    move-exception v20

    const/4 v14, 0x0

    :try_start_e
    throw v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1262
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v20

    if-nez v14, :cond_c

    .line 1263
    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1267
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v21

    if-nez v21, :cond_c

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    :cond_c
    throw v20

    .line 1273
    .end local v12           #serviceId:I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 1092
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 1183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;Z)V
    .locals 11
    .parameter "transaction"
    .parameter "settings"
    .parameter "failprocess"

    .prologue
    .line 1292
    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TransactionService] processPendingTxn: transaction="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const/4 v5, 0x0

    .line 1295
    .local v5, numProcessTransaction:I
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 1296
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 1297
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 1299
    :cond_0
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1300
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    if-eqz p1, :cond_7

    .line 1303
    if-eqz p2, :cond_1

    .line 1304
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 1311
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v7

    .line 1313
    .local v7, serviceId:I
    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TransactionService] processPendingTxn: process "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const/4 v6, 0x0

    .line 1318
    .local v6, result:Z
    const/4 v8, 0x1

    if-ne p3, v8, :cond_5

    .line 1319
    const/4 v3, 0x0

    .line 1320
    .local v3, mUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1322
    .local v4, mUriString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v2

    .line 1324
    .local v2, mState:Lcom/android/mms/transaction/TransactionState;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 1326
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1328
    :cond_3
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;ILjava/lang/String;)Z

    move-result v6

    .line 1333
    .end local v2           #mState:Lcom/android/mms/transaction/TransactionState;
    .end local v3           #mUri:Landroid/net/Uri;
    .end local v4           #mUriString:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_6

    .line 1334
    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TransactionService] Started deferred processing of transaction  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1352
    .end local v6           #result:Z
    .end local v7           #serviceId:I
    :cond_4
    :goto_1
    return-void

    .line 1300
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1330
    .restart local v6       #result:Z
    .restart local v7       #serviceId:I
    :cond_5
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v6

    goto :goto_0

    .line 1337
    :cond_6
    const/4 p1, 0x0

    .line 1339
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1340
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v8, v7}, Landroid/app/Service;->stopSelf(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1342
    .end local v6           #result:Z
    .end local v7           #serviceId:I
    :catch_0
    move-exception v1

    .line 1343
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TransactionService] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1346
    .end local v1           #e:Ljava/io/IOException;
    :cond_7
    if-nez v5, :cond_4

    .line 1347
    const-string v8, "Mms:transaction"

    const-string v9, "[TransactionService] processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1349
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_1
.end method
