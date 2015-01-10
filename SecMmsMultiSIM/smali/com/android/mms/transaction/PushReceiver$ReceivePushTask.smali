.class Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 127
    return-void
.end method

.method private isDataAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 91
    .local v2, ni:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 112
    .local v1, networkIsAvaliable:Z
    if-nez v2, :cond_1

    move v1, v3

    .line 115
    :goto_0
    if-eqz v1, :cond_0

    .line 116
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 117
    const/4 v3, 0x1

    .line 122
    :cond_0
    return v3

    .line 112
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method private updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 5
    .parameter "from"

    .prologue
    const/4 v4, 0x0

    .line 366
    if-nez p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    :cond_2
    :goto_1
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 383
    .local v1, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0

    .line 375
    .end local v1           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 36
    .parameter "intents"

    .prologue
    .line 131
    const/4 v3, 0x0

    aget-object v20, p1, v3

    .line 133
    .local v20, intent:Landroid/content/Intent;
    const-string v3, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver]intent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "simSlot"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 138
    .local v13, simSlot:I
    const-string v3, "data"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v29

    .line 139
    .local v29, pushData:[B
    new-instance v27, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 140
    .local v27, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v28

    .line 142
    .local v28, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v28, :cond_0

    .line 143
    const-string v3, "Mms:transaction"

    const-string v7, "[PushReceiver] Invalid PUSH data"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x0

    .line 360
    .end local v28           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_0
    return-object v3

    .line 147
    .restart local v28       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v26

    .line 148
    .local v26, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 149
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v35

    .line 150
    .local v35, type:I
    const-wide/16 v10, -0x1

    .line 152
    .local v10, threadId:J
    const-string v3, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver] Received message type of pdu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sparse-switch v35, :sswitch_data_0

    .line 350
    :try_start_0
    const-string v3, "Mms:transaction"

    const-string v7, "[PushReceiver] Received unrecognized PDU."

    invoke-static {v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    .end local v28           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    :goto_1
    const-string v3, "Mms:transaction"

    const-string v7, "[PushReceiver] PUSH Intent processed."

    invoke-static {v3, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v3, 0x0

    goto :goto_0

    .line 157
    .restart local v28       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    move/from16 v1, v35

    #calls: Lcom/android/mms/transaction/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    invoke-static {v3, v0, v1}, Lcom/android/mms/transaction/PushReceiver;->access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v10

    .line 158
    const-wide/16 v7, -0x1

    cmp-long v3, v10, v7

    if-nez v3, :cond_2

    .line 161
    const-string v3, "Mms:transaction"

    const-string v7, "threadId is -1"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 352
    .end local v28           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v19

    .line 353
    .local v19, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver] Failed to save the data from PUSH: type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-static {v3, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 165
    .end local v19           #e:Lcom/google/android/mms/MmsException;
    .restart local v28       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    :try_start_2
    const-string v12, ""

    .line 167
    .local v12, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    const/16 v3, 0x86

    move/from16 v0, v35

    if-ne v0, v3, :cond_4

    .line 169
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 170
    .local v17, deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_3

    .line 171
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v12

    .line 178
    .end local v17           #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v12}, Lcom/android/mms/util/SecurityMailboxUtils;->isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/mms/transaction/PushReceiver;->access$102(Z)Z

    .line 179
    const-string v3, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNumberVIP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 172
    :cond_4
    const/16 v3, 0x88

    move/from16 v0, v35

    if-ne v0, v3, :cond_3

    .line 173
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    .line 174
    .local v30, readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_3

    .line 175
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 186
    .end local v30           #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v13, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 188
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 189
    .local v6, values:Landroid/content/ContentValues;
    const-string v3, "thread_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    const/16 v3, 0x86

    move/from16 v0, v35

    if-ne v0, v3, :cond_7

    .line 193
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 194
    .restart local v17       #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_6

    .line 195
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v12

    .line 197
    :cond_6
    const-string v7, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground MMS delivery report status="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    check-cast v28, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local v28           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v9

    invoke-static/range {v7 .. v13}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 354
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v12           #address:Ljava/lang/String;
    .end local v17           #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1
    move-exception v19

    .line 355
    .local v19, e:Ljava/lang/RuntimeException;
    const-string v3, "Mms:transaction"

    const-string v7, "[PushReceiver] Unexpected RuntimeException."

    move-object/from16 v0, v19

    invoke-static {v3, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 202
    .end local v19           #e:Ljava/lang/RuntimeException;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v12       #address:Ljava/lang/String;
    .restart local v28       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_7
    const/16 v3, 0x88

    move/from16 v0, v35

    if-ne v0, v3, :cond_1

    .line 203
    :try_start_3
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    .line 204
    .restart local v30       #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v12

    .line 206
    const-string v7, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground MMS read report status="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    check-cast v28, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local v28           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v9

    invoke-static/range {v7 .. v13}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;I)V

    goto/16 :goto_1

    .line 215
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v12           #address:Ljava/lang/String;
    .end local v30           #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :sswitch_1
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v24, v0

    .line 217
    .local v24, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransIdEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 218
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    .line 219
    .local v15, contentLocation:[B
    const/16 v3, 0x3d

    array-length v7, v15

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v15, v7

    if-ne v3, v7, :cond_8

    .line 220
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v34

    .line 221
    .local v34, transactionId:[B
    array-length v3, v15

    move-object/from16 v0, v34

    array-length v7, v0

    add-int/2addr v3, v7

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 223
    .local v16, contentLocationWithId:[B
    const/4 v3, 0x0

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, v16

    invoke-static {v15, v3, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    const/4 v3, 0x0

    array-length v7, v15

    move-object/from16 v0, v34

    array-length v8, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-static {v0, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 231
    .end local v15           #contentLocation:[B
    .end local v16           #contentLocationWithId:[B
    .end local v34           #transactionId:[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    #calls: Lcom/android/mms/transaction/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    invoke-static {v3, v0}, Lcom/android/mms/transaction/PushReceiver;->access$200(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 233
    const-string v3, "Mms:transaction"

    const-string v7, "[PushReceiver] Discard MMS Notification by IT Policy"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 237
    :cond_9
    const/16 v21, 0x0

    .line 240
    .local v21, isSpam:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_b

    .line 241
    const/16 v32, 0x0

    .line 242
    .local v32, subject:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 243
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v32

    .line 245
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-static {v3, v7, v0}, Lcom/android/mms/ui/MessageUtils;->SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 250
    .end local v32           #subject:Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 251
    const-string v12, ""

    .line 252
    .restart local v12       #address:Ljava/lang/String;
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 253
    .local v25, notiIndFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v12

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v12}, Lcom/android/mms/util/SecurityMailboxUtils;->isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/mms/transaction/PushReceiver;->access$102(Z)Z

    .line 255
    const-string v3, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNumberVIP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 258
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 247
    .end local v12           #address:Ljava/lang/String;
    .end local v25           #notiIndFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;Lcom/google/android/mms/pdu/EncodedStringValue;)Z

    move-result v21

    goto :goto_3

    .line 262
    :cond_c
    const/4 v5, 0x0

    .line 263
    .restart local v5       #uri:Landroid/net/Uri;
    if-eqz v21, :cond_11

    .line 264
    sget-object v3, Landroid/provider/Telephony$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v1, v13, v3, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v5

    .line 268
    :goto_4
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 269
    if-eqz v21, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 270
    const/16 v21, 0x0

    .line 272
    :cond_d
    const-string v3, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSpam = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-nez v21, :cond_10

    .line 277
    const/4 v3, 0x1

    if-ne v3, v13, :cond_12

    .line 278
    new-instance v33, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/transaction/TransactionService2;

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v33, svc:Landroid/content/Intent;
    :goto_5
    const-string v3, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v3, "type"

    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 288
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v18

    .line 289
    .local v18, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v14

    .line 293
    .local v14, autoDownload:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v23

    .line 294
    .local v23, multiSimNum:I
    const/4 v3, 0x1

    if-ne v14, v3, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_e

    .line 295
    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 298
    .local v22, mDataSimSlot:I
    move/from16 v0, v22

    if-eq v13, v0, :cond_e

    .line 300
    const/4 v14, 0x0

    .line 301
    const-string v3, "Mms:transaction"

    const-string v7, "autoDownload change to false"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v22           #mDataSimSlot:I
    :cond_e
    if-nez v14, :cond_13

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v10

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v3, v10, v11, v7, v13}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 309
    if-nez v21, :cond_f

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v8, "mms"

    invoke-static {v3, v5, v7, v8}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v3, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 336
    .end local v14           #autoDownload:Z
    .end local v18           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v23           #multiSimNum:I
    .end local v33           #svc:Landroid/content/Intent;
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 337
    if-eqz v5, :cond_1

    if-eqz v21, :cond_1

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v3, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v31

    .line 339
    .local v31, result:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_1

    .line 266
    .end local v31           #result:Z
    :cond_11
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v13, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_4

    .line 280
    :cond_12
    new-instance v33, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v33       #svc:Landroid/content/Intent;
    goto/16 :goto_5

    .line 312
    .restart local v14       #autoDownload:Z
    .restart local v18       #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local v23       #multiSimNum:I
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->isDataAvailable()Z

    move-result v3

    if-nez v3, :cond_f

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v10

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v3, v10, v11, v7, v13}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v8, "mms"

    invoke-static {v3, v5, v7, v8}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 345
    .end local v5           #uri:Landroid/net/Uri;
    .end local v14           #autoDownload:Z
    .end local v18           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v21           #isSpam:Z
    .end local v23           #multiSimNum:I
    .end local v33           #svc:Landroid/content/Intent;
    :cond_14
    const-string v3, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver] Skip downloading duplicate message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
