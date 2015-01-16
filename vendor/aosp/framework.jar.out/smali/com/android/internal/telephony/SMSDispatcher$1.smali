.class Lcom/android/internal/telephony/SMSDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x1

    .line 366
    const-string v5, "SMS"

    const-string v8, "Received blocked sms intent"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v5, "com.android.server.enterprise.restriction.SEND_BLOCKED_SMS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    const-string v5, "extra_pdu"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 369
    .local v2, pdu:[B
    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 370
    .local v7, sms:Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 373
    .local v0, phoneRestriction:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 375
    const-string/jumbo v5, "send_type"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 376
    .local v4, sendType:I
    iget-object v5, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, srcAddress:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 395
    .end local v0           #phoneRestriction:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v2           #pdu:[B
    .end local v3           #srcAddress:Ljava/lang/String;
    .end local v4           #sendType:I
    .end local v7           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    :goto_0
    return-void

    .line 380
    .restart local v0       #phoneRestriction:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v2       #pdu:[B
    .restart local v7       #sms:Landroid/telephony/SmsMessage;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v6

    .line 382
    .local v6, result:I
    if-ne v6, v9, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 384
    const-string v5, "SMS"

    const-string/jumbo v8, "update number of incoming smss"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    .line 388
    :cond_2
    iget-object v5, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 389
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10, v1}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
