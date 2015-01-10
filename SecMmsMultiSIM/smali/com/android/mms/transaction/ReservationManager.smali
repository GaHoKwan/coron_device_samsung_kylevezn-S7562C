.class public Lcom/android/mms/transaction/ReservationManager;
.super Ljava/lang/Object;
.source "ReservationManager.java"


# static fields
.field public static final ACTION_SEND_MSG_ID:Ljava/lang/String; = "MsgId"

.field public static final ACTION_SEND_MSG_TYPE:Ljava/lang/String; = "MsgSubType"

.field private static final ACTION_SEND_RESERVATION:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_RESERVATION"

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationManager"

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/mms/transaction/ReservationManager;


# instance fields
.field private mReservationBaseDeliveryTime:J

.field private mReservationBaseMessageID:J

.field private mReservationBaseMessageType:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_bAlarmSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    .line 32
    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    .line 33
    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-wide/16 v0, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    .line 36
    iput-wide v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    .line 52
    const-string v0, "Mms/ReservationManager"

    const-string v1, "ReservationManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sput-object p1, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 55
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    const-string v0, "Mms/ReservationManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/mms/transaction/ReservationManager;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/ReservationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    return-object v0
.end method

.method private makeAlarmIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;
    .locals 5
    .parameter "type"
    .parameter "msgId"

    .prologue
    .line 407
    const-string v2, "Mms/ReservationManager"

    const-string v3, "makeAlarmIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.Intent.ACTION_SEND_RESERVATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "MsgSubType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v2, "MsgId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 412
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private registerAlarm(Ljava/lang/String;JJ)V
    .locals 24
    .parameter "type"
    .parameter "messageId"
    .parameter "deliveryTime"

    .prologue
    .line 322
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm() - deliveryTime : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "complete-conversations"

    invoke-static {v2, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 326
    .local v23, uri:Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    const-string v8, "all"

    invoke-virtual {v2, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 328
    .local v3, uriContent:Landroid/net/Uri;
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "status"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "m_type"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "msg_box"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "reserved"

    aput-object v6, v4, v2

    .line 338
    .local v4, project:[Ljava/lang/String;
    const-string v5, "reserved = 1"

    .line 339
    .local v5, szWhere:Ljava/lang/String;
    const-string v7, "normalized_date ASC"

    .line 340
    .local v7, szSort:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 344
    .local v21, cursor:Landroid/database/Cursor;
    if-eqz v21, :cond_3

    .line 345
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 347
    .local v20, count:I
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm() - count = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-lez v20, :cond_3

    .line 349
    const-string v9, "sms"

    .line 350
    .local v9, szTypeInDB:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 351
    .local v10, lMsgIdInDB:J
    const-string v2, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_5

    const-string v9, "sms"

    .line 352
    :goto_0
    const-string v2, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 354
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    if-eqz v2, :cond_6

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    cmp-long v2, v14, v10

    if-eqz v2, :cond_2

    .line 356
    :cond_0
    const-wide/16 v12, 0x0

    .line 357
    .local v12, lMsgReservedDate:J
    const-string v2, "date"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 358
    const-string v2, "mms"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 361
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v15}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v8, p0

    .line 362
    invoke-virtual/range {v8 .. v13}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 363
    const-string v2, "Mms/ReservationManager"

    const-string v6, "registerAlarm - m_bAlarmSet"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v12           #lMsgReservedDate:J
    :cond_2
    :goto_1
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "szTypeInDB:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " lMsgIdInDB:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v9           #szTypeInDB:Ljava/lang/String;
    .end local v10           #lMsgIdInDB:J
    .end local v20           #count:I
    :cond_3
    if-eqz v21, :cond_4

    .line 377
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_4
    :goto_2
    return-void

    .line 351
    .restart local v9       #szTypeInDB:Ljava/lang/String;
    .restart local v10       #lMsgIdInDB:J
    .restart local v20       #count:I
    :cond_5
    :try_start_1
    const-string v9, "mms"

    goto/16 :goto_0

    .line 366
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v14, p0

    move-object v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v18, p4

    .line 367
    invoke-virtual/range {v14 .. v19}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 368
    const-string v2, "Mms/ReservationManager"

    const-string v6, "registerAlarm - else"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 373
    .end local v9           #szTypeInDB:Ljava/lang/String;
    .end local v10           #lMsgIdInDB:J
    .end local v20           #count:I
    :catch_0
    move-exception v22

    .line 374
    .local v22, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm()"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    if-eqz v21, :cond_4

    .line 377
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 376
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_7

    .line 377
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method


# virtual methods
.method public addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JI)J
    .locals 16
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"
    .parameter "deliveryTime"
    .parameter "simSlot"

    .prologue
    .line 291
    const-string v3, "Mms/ReservationManager"

    const-string v4, "addMms()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-wide/16 v5, 0x0

    .line 294
    .local v5, lMsgId:J
    const-wide/16 v13, 0x1

    .line 298
    .local v13, setReserved:J
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    .line 299
    .local v12, pb:Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 300
    const-wide/16 v3, 0x3e8

    div-long v3, p4, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 301
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 303
    sget-object v3, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 304
    .local v15, uri:Landroid/net/Uri;
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 305
    if-eqz v15, :cond_0

    .line 306
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 313
    :cond_0
    const-string v4, "mms"

    move-object/from16 v3, p0

    move-wide/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/ReservationManager;->registerAlarm(Ljava/lang/String;JJ)V

    move-wide v10, v5

    .line 314
    .end local v5           #lMsgId:J
    .end local v12           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v15           #uri:Landroid/net/Uri;
    .local v10, lMsgId:J
    :goto_0
    return-wide v10

    .line 308
    .end local v10           #lMsgId:J
    .restart local v5       #lMsgId:J
    :catch_0
    move-exception v9

    .line 309
    .local v9, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/ReservationManager"

    const-string v4, "addMms() error"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v5

    .line 310
    .end local v5           #lMsgId:J
    .restart local v10       #lMsgId:J
    goto :goto_0
.end method

.method public addSms(JLjava/lang/String;Ljava/lang/String;JI)J
    .locals 13
    .parameter "threadId"
    .parameter "semiSepRecipients"
    .parameter "smsContents"
    .parameter "deliveryTime"
    .parameter "simSlot"

    .prologue
    .line 247
    const-string v1, "Mms/ReservationManager"

    const-string v2, "addSms()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-wide/16 v3, 0x0

    .line 251
    .local v3, lMsgId:J
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    const-string v1, "address"

    move-object/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "body"

    move-object/from16 v0, p4

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v1, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v1, "reserved"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v1, "sim_slot"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    invoke-static/range {p7 .. p7}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, imsi:Ljava/lang/String;
    const-string v1, "sim_imsi"

    invoke-virtual {v12, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v5, v12}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 265
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 266
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 275
    :cond_0
    const-string v2, "sms"

    move-object v1, p0

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/transaction/ReservationManager;->registerAlarm(Ljava/lang/String;JJ)V

    move-wide v9, v3

    .line 276
    .end local v3           #lMsgId:J
    .end local v8           #imsi:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .local v9, lMsgId:J
    :goto_0
    return-wide v9

    .line 270
    .end local v9           #lMsgId:J
    .restart local v3       #lMsgId:J
    :catch_0
    move-exception v7

    .line 271
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Mms/ReservationManager"

    const-string v2, "addSms() error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v3

    .line 272
    .end local v3           #lMsgId:J
    .restart local v9       #lMsgId:J
    goto :goto_0
.end method

.method public cancelAlarm(Ljava/lang/String;J)V
    .locals 5
    .parameter "type"
    .parameter "msgId"

    .prologue
    const-wide/16 v3, -0x1

    .line 397
    const-string v1, "Mms/ReservationManager"

    const-string v2, "cancelAlarm()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/ReservationManager;->makeAlarmIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 399
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 400
    iput-wide v3, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    .line 401
    iput-wide v3, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    .line 402
    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    .line 403
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    .line 404
    return-void
.end method

.method public getReservedSendMessageCount()I
    .locals 11

    .prologue
    .line 136
    const-string v0, "Mms/ReservationManager"

    const-string v4, "getReservedSendMessageCount()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v8, 0x0

    .line 139
    .local v8, retMessageCount:I
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 140
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v10, "all"

    invoke-virtual {v0, v4, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, uriContent:Landroid/net/Uri;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "date"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "type"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "status"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "reserved"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "m_type"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "msg_box"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "reserved"

    aput-object v4, v2, v0

    .line 151
    .local v2, project:[Ljava/lang/String;
    const-string v3, "reserved = 1"

    .line 152
    .local v3, szWhere:Ljava/lang/String;
    const-string v5, "normalized_date ASC"

    .line 153
    .local v5, szSort:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 157
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 165
    :cond_0
    if-eqz v6, :cond_1

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_1
    :goto_0
    const-string v0, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getReservedSendMessageCount(): retMessageCount="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return v8

    .line 162
    :catch_0
    move-exception v7

    .line 163
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerAlarm()"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    if-eqz v6, :cond_1

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getServiceState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 421
    .local v1, isSmscapable:Z
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/mms/transaction/ReservationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 422
    iget-object v2, p0, Lcom/android/mms/transaction/ReservationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/ReservationManager"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 22

    .prologue
    .line 178
    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset()"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "complete-conversations"

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 181
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "limit"

    const-string v9, "all"

    invoke-virtual {v3, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 182
    .local v4, uriContent:Landroid/net/Uri;
    const/16 v3, 0x8

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "date"

    aput-object v7, v5, v3

    const/4 v3, 0x2

    const-string v7, "type"

    aput-object v7, v5, v3

    const/4 v3, 0x3

    const-string v7, "status"

    aput-object v7, v5, v3

    const/4 v3, 0x4

    const-string v7, "reserved"

    aput-object v7, v5, v3

    const/4 v3, 0x5

    const-string v7, "m_type"

    aput-object v7, v5, v3

    const/4 v3, 0x6

    const-string v7, "msg_box"

    aput-object v7, v5, v3

    const/4 v3, 0x7

    const-string v7, "reserved"

    aput-object v7, v5, v3

    .line 192
    .local v5, project:[Ljava/lang/String;
    const-string v6, "reserved = 1"

    .line 193
    .local v6, szWhere:Ljava/lang/String;
    const-string v8, "normalized_date ASC"

    .line 194
    .local v8, szSort:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 197
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 198
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 200
    const-string v10, "sms"

    .line 201
    .local v10, szTypeInDB:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 202
    .local v11, lMsgIdInDB:J
    const-wide/16 v17, 0x0

    .line 203
    .local v17, lDeliveryTimeInDB:J
    const-string v3, "type"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_4

    const-string v10, "sms"

    .line 204
    :goto_0
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 205
    const-string v3, "date"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 206
    const-wide/16 v13, 0x0

    .line 207
    .local v13, lDeliveryTime:J
    const-string v3, "mms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    const-wide/16 v20, 0x3e8

    mul-long v13, v17, v20

    .line 212
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    if-eqz v3, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-wide/from16 v20, v0

    cmp-long v3, v20, v11

    if-eqz v3, :cond_1

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v9, p0

    .line 215
    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 216
    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset - m_bAlarmSet"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_1
    :goto_2
    const-string v3, "Mms/ReservationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "szTypeInDB:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " lMsgIdInDB:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v10           #szTypeInDB:Ljava/lang/String;
    .end local v11           #lMsgIdInDB:J
    .end local v13           #lDeliveryTime:J
    .end local v17           #lDeliveryTimeInDB:J
    :cond_2
    if-eqz v15, :cond_3

    .line 230
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_3
    :goto_3
    return-void

    .line 203
    .restart local v10       #szTypeInDB:Ljava/lang/String;
    .restart local v11       #lMsgIdInDB:J
    .restart local v17       #lDeliveryTimeInDB:J
    :cond_4
    :try_start_1
    const-string v10, "mms"

    goto/16 :goto_0

    .line 210
    .restart local v13       #lDeliveryTime:J
    :cond_5
    move-wide/from16 v13, v17

    goto :goto_1

    .line 219
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v9, p0

    .line 220
    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 221
    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset - else"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 226
    .end local v10           #szTypeInDB:Ljava/lang/String;
    .end local v11           #lMsgIdInDB:J
    .end local v13           #lDeliveryTime:J
    .end local v17           #lDeliveryTimeInDB:J
    :catch_0
    move-exception v16

    .line 227
    .local v16, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Mms/ReservationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerAlarm()"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    if-eqz v15, :cond_3

    .line 230
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 229
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_7

    .line 230
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3
.end method

.method public resetAfterConnected()V
    .locals 4

    .prologue
    .line 73
    const-string v2, "Mms/ReservationManager"

    const-string v3, "resetAfterConnected()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->getReservedSendMessageCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 94
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 80
    .local v0, bNetworkAvailable:Z
    const/4 v1, 0x0

    .line 82
    .local v1, bSmsAvailable:Z
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 83
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v1

    .line 85
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->reset()V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/ReservationManager$1;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/ReservationManager$1;-><init>(Lcom/android/mms/transaction/ReservationManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public resetThreadAfterConnected()V
    .locals 6

    .prologue
    .line 100
    const-string v3, "Mms/ReservationManager"

    const-string v4, "resetThreadAfterConnected()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/16 v2, 0x14

    .line 102
    .local v2, iMaxLimit:I
    const/4 v1, 0x0

    .line 104
    .local v1, bSmsAvailable:Z
    const/16 v2, 0x14

    .line 105
    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v1

    .line 106
    :goto_0
    if-nez v1, :cond_0

    .line 107
    const-string v3, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cntTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bSmsAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-gez v2, :cond_2

    .line 116
    :cond_0
    const/16 v2, 0x14

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, bNetworkAvailable:Z
    :goto_1
    if-nez v0, :cond_1

    .line 119
    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 120
    const-string v3, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cntTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bNetworkAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-gez v2, :cond_3

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->reset()V

    .line 129
    return-void

    .line 109
    .end local v0           #bNetworkAvailable:Z
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 111
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v3

    goto :goto_0

    .line 122
    .restart local v0       #bNetworkAvailable:Z
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 124
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 125
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public setAlarm(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "type"
    .parameter "msgId"
    .parameter "deliveryTime"

    .prologue
    .line 383
    const-string v1, "Mms/ReservationManager"

    const-string v2, "setAlarm()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "Mms/ReservationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarm() type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deliveryTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currenttTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/ReservationManager;->makeAlarmIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 388
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4, p5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 389
    iput-wide p2, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    .line 390
    iput-wide p4, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    .line 391
    iput-object p1, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    .line 393
    return-void
.end method
