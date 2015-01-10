.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_EXPIRY_TIME:J = 0x93a80L

.field private static final DEFAULT_MESSAGE_CLASS:Ljava/lang/String; = "personal"

.field private static final DEFAULT_PRIORITY:I = 0x81

.field private static final DEFAULT_READ_REPORT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessageSize:J

.field private final mMessageUri:Landroid/net/Uri;

.field private mPriority:I

.field private mPriorityLevel:I

.field protected final mSimSlot:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 6
    .parameter "context"
    .parameter "location"
    .parameter "messageSize"

    .prologue
    .line 80
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JI)V
    .locals 3
    .parameter "context"
    .parameter "location"
    .parameter "messageSize"
    .parameter "sendSimSlot"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/16 v1, 0x81

    iput v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriority:I

    .line 84
    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 86
    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    .line 90
    .local v0, multiSimNum:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 91
    const/4 v1, 0x2

    if-ne p5, v1, :cond_0

    .line 92
    const-string v1, "persist.radio.calldefault.simid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null message URI."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    iput p5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    goto :goto_0

    .line 97
    :cond_1
    iput v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JII)V
    .locals 6
    .parameter "context"
    .parameter "location"
    .parameter "messageSize"
    .parameter "priority"
    .parameter "sendSimSlot"

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 114
    iput p5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriority:I

    .line 115
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 11
    .parameter "context"
    .parameter "to"
    .parameter "SimSlot"
    .parameter "MsgImsi"
    .parameter "DataSwitch"
    .parameter "messageId"
    .parameter "status"

    .prologue
    .line 223
    const/4 v1, 0x1

    new-array v5, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 224
    .local v5, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v1

    .line 227
    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x12

    move/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 236
    .local v0, readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    const-string v1, "persist.sys.dataprefer.simid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 237
    .local v8, mDataSimSlot:I
    move v7, v8

    .line 238
    .local v7, mCheckSimSlot:I
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v10

    .line 240
    .local v10, multiSimNum:I
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 241
    invoke-static {p2}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, mSystemImsi:Ljava/lang/String;
    const/4 v1, 0x1

    if-le v10, v1, :cond_0

    if-eq p2, v8, :cond_0

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 245
    move v7, p2

    .line 246
    const-string v1, "Mms:transaction"

    const-string v2, "sendReadRec  DataSwitch true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v9           #mSystemImsi:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-le v10, v1, :cond_1

    .line 251
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    .line 255
    :goto_0
    const/4 v1, 0x1

    if-ne v7, v1, :cond_2

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    .end local v0           #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v7           #mCheckSimSlot:I
    .end local v8           #mDataSimSlot:I
    .end local v10           #multiSimNum:I
    :goto_1
    return-void

    .line 253
    .restart local v0       #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    .restart local v7       #mCheckSimSlot:I
    .restart local v8       #mDataSimSlot:I
    .restart local v10       #multiSimNum:I
    :cond_1
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 262
    .end local v0           #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v7           #mCheckSimSlot:I
    .end local v8           #mDataSimSlot:I
    .end local v10           #multiSimNum:I
    :catch_0
    move-exception v6

    .line 263
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "Mms:transaction"

    const-string v2, "[MmsMessageSender] Invalide header value"

    invoke-static {v1, v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 258
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    .restart local v0       #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    .restart local v7       #mCheckSimSlot:I
    .restart local v8       #mDataSimSlot:I
    .restart local v10       #multiSimNum:I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 264
    .end local v0           #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v7           #mCheckSimSlot:I
    .end local v8           #mDataSimSlot:I
    .end local v10           #multiSimNum:I
    :catch_1
    move-exception v6

    .line 265
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms:transaction"

    const-string v2, "[MmsMessageSender] Persist message failed"

    invoke-static {v1, v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 266
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v6

    .line 267
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v1, "Mms:transaction"

    const-string v2, "[MmsMessageSender] Invalid message ID value"

    invoke-static {v1, v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "to"
    .parameter "messageId"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 218
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    .line 219
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 31
    .parameter "context"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/data/ReadReportData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    .line 273
    .local v14, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 275
    .local v17, prefs:Landroid/content/SharedPreferences;
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v21, v0

    .line 278
    .local v21, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v7, 0x0

    .line 279
    .local v7, bl_TransactionService:Z
    const/4 v8, 0x0

    .line 280
    .local v8, bl_TransactionService2:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v13

    .line 281
    .local v13, multiSimNum:I
    const-string v27, "persist.sys.dataprefer.simid"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 285
    .local v26, vl_DataSimSlot:I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 287
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/ReadReportData;

    .line 288
    .local v19, readReport:Lcom/android/mms/data/ReadReportData;
    const/16 v27, 0x0

    new-instance v28, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getRecvAddress()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v28, v21, v27

    .line 292
    new-instance v18, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 295
    .local v18, readRec:Lcom/google/android/mms/pdu/SendReq;
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 296
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_0

    .line 297
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v27

    move-object/from16 v0, v18

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 299
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 300
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    .line 302
    :cond_1
    const/16 v27, 0x81

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 303
    const/16 v27, 0x81

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 304
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 305
    const/16 v27, 0x80

    move/from16 v0, p2

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 307
    const/16 v27, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getSubject()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;->makeReadReportSubject(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 308
    .local v24, subject:Ljava/lang/String;
    new-instance v27, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 309
    const/16 v27, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getRecvTime()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getMmsSize()J

    move-result-wide v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;->makeReadReport(Landroid/content/Context;IIJ)Ljava/lang/String;

    move-result-object v20

    .line 324
    .local v20, report:Ljava/lang/String;
    :goto_1
    new-instance v16, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 326
    .local v16, pduBody:Lcom/google/android/mms/pdu/PduBody;
    const-string v22, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    .line 332
    .local v22, smilDoc:Ljava/lang/String;
    new-instance v23, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 333
    .local v23, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v27, "smil.txt"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 334
    const-string v27, "smil.txt"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 335
    const-string v27, "application/smil"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 336
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 337
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 339
    new-instance v15, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 340
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v27, "attach.txt"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 341
    const-string v27, "attach.txt"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 342
    const/16 v27, 0x6a

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 343
    const-string v27, "text/plain"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 344
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 345
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 347
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 352
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v13, v0, :cond_6

    .line 353
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getSimSlot()I

    move-result v6

    .line 354
    .local v6, SimSlot:I
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getIMSI()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, MsgImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v12

    .line 357
    .local v12, mSystemImsi:Ljava/lang/String;
    move/from16 v0, v26

    if-eq v6, v0, :cond_5

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 358
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 359
    const-string v27, "Mms:transaction"

    const-string v28, "sendReadRec  DataSwitch true"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_4

    .line 362
    const/4 v8, 0x1

    .line 369
    :goto_2
    sget-object v27, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v6, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v25

    .line 373
    .end local v5           #MsgImsi:Ljava/lang/String;
    .end local v6           #SimSlot:I
    .end local v12           #mSystemImsi:Ljava/lang/String;
    .local v25, uri:Landroid/net/Uri;
    :goto_3
    sget-object v27, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 391
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v16           #pduBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v18           #readRec:Lcom/google/android/mms/pdu/SendReq;
    .end local v19           #readReport:Lcom/android/mms/data/ReadReportData;
    .end local v20           #report:Ljava/lang/String;
    .end local v22           #smilDoc:Ljava/lang/String;
    .end local v23           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #subject:Ljava/lang/String;
    .end local v25           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 392
    .local v9, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v27, "Mms:transaction"

    const-string v28, "[MmsMessageSender] Invalide header value"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    .end local v9           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_2
    :goto_4
    return-void

    .line 315
    .restart local v10       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v18       #readRec:Lcom/google/android/mms/pdu/SendReq;
    .restart local v19       #readReport:Lcom/android/mms/data/ReadReportData;
    :cond_3
    const/16 v27, 0x1

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getSubject()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;->makeReadReportSubject(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 316
    .restart local v24       #subject:Ljava/lang/String;
    new-instance v27, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 317
    const/16 v27, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getRecvTime()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ReadReportData;->getMmsSize()J

    move-result-wide v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;->makeReadReport(Landroid/content/Context;IIJ)Ljava/lang/String;

    move-result-object v20

    .restart local v20       #report:Ljava/lang/String;
    goto/16 :goto_1

    .line 364
    .restart local v5       #MsgImsi:Ljava/lang/String;
    .restart local v6       #SimSlot:I
    .restart local v12       #mSystemImsi:Ljava/lang/String;
    .restart local v15       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v16       #pduBody:Lcom/google/android/mms/pdu/PduBody;
    .restart local v22       #smilDoc:Ljava/lang/String;
    .restart local v23       #smilPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    .line 367
    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 371
    .end local v5           #MsgImsi:Ljava/lang/String;
    .end local v6           #SimSlot:I
    .end local v12           #mSystemImsi:Ljava/lang/String;
    :cond_6
    sget-object v27, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v25

    .restart local v25       #uri:Landroid/net/Uri;
    goto :goto_3

    .line 376
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    .end local v15           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v16           #pduBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v18           #readRec:Lcom/google/android/mms/pdu/SendReq;
    .end local v19           #readReport:Lcom/android/mms/data/ReadReportData;
    .end local v20           #report:Ljava/lang/String;
    .end local v22           #smilDoc:Ljava/lang/String;
    .end local v23           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #subject:Ljava/lang/String;
    .end local v25           #uri:Landroid/net/Uri;
    :cond_7
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v13, v0, :cond_9

    .line 377
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v7, v0, :cond_8

    .line 378
    new-instance v27, Landroid/content/Intent;

    const-class v28, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 379
    const-string v27, "Mms:transaction"

    const-string v28, "sendReadRec  : TransactionService1 enabled."

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_8
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_2

    .line 383
    new-instance v27, Landroid/content/Intent;

    const-class v28, Lcom/android/mms/transaction/TransactionService2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 384
    const-string v27, "Mms:transaction"

    const-string v28, "sendReadRec  : TransactionService2 enabled."

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_4

    .line 393
    .end local v11           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v9

    .line 394
    .local v9, e:Lcom/google/android/mms/MmsException;
    const-string v27, "Mms:transaction"

    const-string v28, "[MmsMessageSender] Persist message failed"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 387
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_9
    :try_start_2
    new-instance v27, Landroid/content/Intent;

    const-class v28, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 395
    .end local v11           #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v9

    .line 396
    .local v9, e:Ljava/lang/NullPointerException;
    const-string v27, "Mms:transaction"

    const-string v28, "[MmsMessageSender] Invalid message ID value"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 11
    .parameter "sendReq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    .line 164
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriorityLevel:I

    packed-switch v3, :pswitch_data_0

    .line 185
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v3, v6, v9

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 196
    :cond_0
    :goto_1
    const-string v3, "pref_key_mms_delivery_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 198
    .local v0, dr:Z
    if-eqz v0, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 201
    const-string v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 203
    .local v2, rr:Z
    if-eqz v2, :cond_6

    :goto_3
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 206
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDeliveryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDeliveryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryTime(J)V

    .line 213
    :cond_1
    return-void

    .line 170
    .end local v0           #dr:Z
    .end local v2           #rr:Z
    :pswitch_0
    const-string v3, "pref_key_mms_priority"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    .line 173
    :pswitch_1
    const-string v3, "pref_key_mms_priority"

    const/16 v6, 0x82

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    .line 190
    :cond_4
    const-wide/32 v6, 0x93a80

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    goto :goto_1

    .restart local v0       #dr:Z
    :cond_5
    move v3, v5

    .line 198
    goto :goto_2

    .restart local v2       #rr:Z
    :cond_6
    move v4, v5

    .line 203
    goto :goto_3

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public queueMessageForPending(J)Z
    .locals 1
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(J)Z
    .locals 8
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 119
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 120
    .local v0, p:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 122
    .local v1, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v3

    const/16 v4, 0x80

    if-eq v3, v4, :cond_0

    .line 123
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, v1

    .line 126
    check-cast v2, Lcom/google/android/mms/pdu/SendReq;

    .line 129
    .local v2, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 132
    const-string v3, "personal"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 137
    iget-wide v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    .line 139
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 141
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;I)V

    .line 144
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 147
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 150
    iget v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    if-ne v7, v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    const-string v3, "Mms:transaction"

    const-string v4, "[DualSIM - 2] MmsMessageSender : start TransactionService2"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return v7

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    const-string v3, "Mms:transaction"

    const-string v4, "[DualSIM - 1] MmsMessageSender : start TransactionService"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPriorityLevel(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriorityLevel:I

    .line 107
    return-void
.end method
