.class final Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 320
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 321
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 329
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 330
    .local v6, serviceId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 333
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 335
    :try_start_0
    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SMS]Receiver handleMessage : Action ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, action:Ljava/lang/String;
    const-string v10, "errorCode"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 341
    .local v1, error:I
    const-string v10, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 342
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V
    invoke-static {v10, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v10, v6}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 419
    :goto_1
    return-void

    .line 343
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_1
    :try_start_1
    const-string v10, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 344
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v10, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v11, v6}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    throw v10

    .line 345
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_2
    :try_start_2
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 346
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V
    invoke-static {v10}, Lcom/android/mms/transaction/SmsReceiverService;->access$300(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 347
    :cond_3
    const-string v10, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 348
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    :cond_4
    const-string v10, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 350
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 351
    const-string v10, "AutoSendWhenInDomesticCoverage"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 352
    .local v5, pendingMsg:Z
    const-string v10, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage ACTION_SEND_MESSAG : pendingMsg = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    if-eqz v5, :cond_5

    .line 355
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->registerForRoamingStatusChanges()V
    invoke-static {v10}, Lcom/android/mms/transaction/SmsReceiverService;->access$500(Lcom/android/mms/transaction/SmsReceiverService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v10, v6}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_1

    .line 359
    .end local v5           #pendingMsg:Z
    :cond_5
    :try_start_3
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V
    invoke-static {v10}, Lcom/android/mms/transaction/SmsReceiverService;->access$600(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 362
    :cond_6
    const-string v10, "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 363
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 364
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleRoamingStatusChanged(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$700(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 368
    :cond_7
    const-string v10, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 369
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 370
    :cond_8
    const-string v10, "android.provider.Telephony.CB_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 371
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 372
    :cond_9
    const-string v10, "android.provider.Telephony.SET_CB_ERR_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 373
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 374
    :cond_a
    const-string v10, "android.provider.Telephony.GET_CB_ERR_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 375
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 376
    :cond_b
    const-string v10, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 377
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMACMASEnable()Z

    move-result v10

    if-nez v10, :cond_0

    .line 378
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 380
    :cond_c
    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 381
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 385
    :cond_d
    const-string v10, "android.provider.Telephony.GET_SMSC"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 386
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V
    invoke-static {v10, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 390
    :cond_e
    const-string v10, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 391
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 392
    const-string v10, "Mms/SmsReceiverService"

    const-string v11, "Discard Data sms"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v10, v6}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_1

    .line 396
    :cond_f
    :try_start_4
    invoke-static {v2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 398
    .local v4, msgs:[Landroid/telephony/SmsMessage;
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iget-object v11, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v12, 0x0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;
    invoke-static {v10, v11, v4, v1, v12}, Lcom/android/mms/transaction/SmsReceiverService;->access$1400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;

    move-result-object v3

    .line 400
    .local v3, messageUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 401
    const/4 v10, 0x0

    aget-object v7, v4, v10

    .line 402
    .local v7, sms:Landroid/telephony/SmsMessage;
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v10, v3}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    .line 403
    .local v8, threadId:J
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v12

    invoke-static {v10, v8, v9, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    goto/16 :goto_0

    .line 409
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v4           #msgs:[Landroid/telephony/SmsMessage;
    .end local v7           #sms:Landroid/telephony/SmsMessage;
    .end local v8           #threadId:J
    :cond_10
    const-string v10, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 411
    iget-object v10, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v11, 0x0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V
    invoke-static {v10, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$1500(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
