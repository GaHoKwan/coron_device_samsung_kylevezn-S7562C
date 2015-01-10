.class public Lcom/android/mms/util/SecurityMailboxUtils;
.super Ljava/lang/Object;
.source "SecurityMailboxUtils.java"


# static fields
.field private static final LOG_HISTORY_URI:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "Mms/SecurityMailboxUtils"

    sput-object v0, Lcom/android/mms/util/SecurityMailboxUtils;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/SecurityMailboxUtils;->LOG_HISTORY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 5
    .parameter "cursor"
    .parameter "cv"
    .parameter "fieldNames"

    .prologue
    .line 432
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 433
    .local v1, field:Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 434
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v1           #field:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getNewThreadIdForDb(J)J
    .locals 28
    .parameter "oldThreadId"

    .prologue
    .line 367
    const-wide/16 v23, 0x0

    .line 376
    .local v23, newThreadId:J
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    .line 378
    .local v2, context:Landroid/content/Context;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "*"

    aput-object v9, v5, v8

    .line 382
    .local v5, QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 385
    .local v7, query_selectionArgs:[Ljava/lang/String;
    const-string v8, "content://mms/threads-search"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 386
    .local v4, sourceDBTableUri:Landroid/net/Uri;
    const-string v6, "_id = ? "

    .line 387
    .local v6, query_selection:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 388
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 390
    .local v27, threadsCursor:Landroid/database/Cursor;
    if-eqz v27, :cond_3

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 391
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 392
    const-string v8, "recipient_ids"

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 394
    .local v26, recipients:Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 395
    const-string v8, " "

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 398
    .local v17, allRecipientIds:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v8, v0

    new-array v13, v8, [Ljava/lang/String;

    .line 399
    .local v13, selectionArgs:[Ljava/lang/String;
    const-string v12, "( _id = ? "

    .line 400
    .local v12, selectionCriteria:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v17, v9

    aput-object v9, v13, v8

    .line 401
    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v17, v8

    .line 402
    const/16 v19, 0x1

    .line 403
    .local v19, count:I
    move-object/from16 v18, v17

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v25, v18, v21

    .line 404
    .local v25, recipientId:Ljava/lang/String;
    const-string v8, ""

    move-object/from16 v0, v25

    if-eq v0, v8, :cond_0

    .line 405
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OR _id = ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 406
    aput-object v25, v13, v19

    .line 407
    add-int/lit8 v19, v19, 0x1

    .line 403
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 410
    .end local v25           #recipientId:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 411
    const-string v8, "content://mms-sms/canonical-addresses"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 412
    const/4 v14, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v8 .. v14}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 414
    .local v15, allAddressRowsCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 416
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 417
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 419
    .local v16, allAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    move/from16 v0, v20

    if-ge v0, v8, :cond_2

    .line 420
    const-string v8, "address"

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 419
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 424
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 425
    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/provider/Telephony$Threads;->getOrCreateSecurityThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v23

    .line 428
    .end local v12           #selectionCriteria:Ljava/lang/String;
    .end local v13           #selectionArgs:[Ljava/lang/String;
    .end local v15           #allAddressRowsCursor:Landroid/database/Cursor;
    .end local v16           #allAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #allRecipientIds:[Ljava/lang/String;
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v19           #count:I
    .end local v20           #i:I
    .end local v21           #i$:I
    .end local v22           #len$:I
    .end local v26           #recipients:Ljava/lang/String;
    :cond_3
    return-wide v23
.end method

.method public static isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "ctx"
    .parameter "incomingNumber"

    .prologue
    const/4 v3, 0x0

    .line 29
    const-string v0, "content://com.sec.security.mms.providers.viplistprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 30
    .local v2, uri:Landroid/net/Uri;
    move-object v8, p1

    .line 32
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 33
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v5, v0

    move-object v0, p0

    move-object v4, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 38
    .local v7, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 39
    .local v9, retVal:Z
    if-eqz v7, :cond_0

    .line 41
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const/4 v9, 0x1

    .line 46
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_0
    sget-object v0, Lcom/android/mms/util/SecurityMailboxUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNumberInVIPList return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return v9

    .line 44
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static moveConversationFromMMSTable(JJ)Z
    .locals 64
    .parameter "thread_id"
    .parameter "msgId"

    .prologue
    .line 156
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    .line 157
    .local v3, context:Landroid/content/Context;
    const/16 v40, -0x270f

    .line 159
    .local v40, dummyDBValue:I
    move-wide/from16 v62, p0

    .line 162
    .local v62, threadId:J
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v6, v9

    .line 166
    .local v6, QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 169
    .local v8, selectionArgs:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 170
    .local v5, sourceDBUri:Landroid/net/Uri;
    const-string v7, "_id = ? "

    .line 171
    .local v7, selection:Ljava/lang/String;
    const-string v9, "content://security_mms/inbox"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v61

    .line 173
    .local v61, targetDBTableUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 174
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v55

    .line 176
    .local v55, pduRowsCursor:Landroid/database/Cursor;
    if-nez v55, :cond_0

    const/4 v9, 0x0

    .line 364
    :goto_0
    return v9

    .line 177
    :cond_0
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_13

    .line 178
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const-string v9, "_id"

    move-object/from16 v0, v55

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v55

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 183
    .local v56, pdu_id:J
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-static/range {v62 .. v63}, Lcom/android/mms/util/SecurityMailboxUtils;->getNewThreadIdForDb(J)J

    move-result-wide v46

    .line 187
    .local v46, newThreadId:J
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v55

    .line 189
    if-nez v55, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 192
    :cond_1
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 193
    .local v41, fieldNames:[Ljava/lang/String;
    const/16 v38, 0x0

    .local v38, count:I
    const/16 v42, 0x0

    .local v42, index:I
    :goto_1
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    move/from16 v0, v38

    if-ge v0, v9, :cond_3

    .line 196
    move-object/from16 v0, v55

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object/from16 v0, v55

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "thread_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 198
    move-object/from16 v0, v55

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v41, v42

    .line 199
    add-int/lit8 v42, v42, 0x1

    .line 193
    :cond_2
    add-int/lit8 v38, v38, 0x1

    goto :goto_1

    .line 203
    :cond_3
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    new-instance v54, Landroid/content/ContentValues;

    invoke-direct/range {v54 .. v54}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v54, pduRowItem:Landroid/content/ContentValues;
    const-string v9, "thread_id"

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v54

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 208
    const-string v9, "reserved"

    const-string v10, "reserved"

    move-object/from16 v0, v55

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v55

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v54

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v9, "date"

    const-string v10, "date"

    move-object/from16 v0, v55

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v55

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-wide/16 v19, 0x3e8

    mul-long v15, v15, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v54

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 212
    const-string v9, "pri"

    const-string v10, "pri"

    move-object/from16 v0, v55

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v55

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v54

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    :cond_5
    move-object/from16 v0, v55

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/SecurityMailboxUtils;->addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 217
    const-string v9, "locked"

    move-object/from16 v0, v55

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v55

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 218
    .local v48, originalDBValue:I
    const-string v9, "locked"

    const/16 v10, -0x270f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v54

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-interface/range {v55 .. v55}, Landroid/database/Cursor;->close()V

    .line 222
    move-object/from16 v0, v61

    move-object/from16 v1, v54

    invoke-static {v3, v4, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v44

    .line 225
    .local v44, insertedUri:Landroid/net/Uri;
    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, -0x270f

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v9

    .line 228
    .local v14, rowIdSelectionArgs:[Ljava/lang/String;
    const-string v13, "locked = ?"

    .line 230
    .local v13, rowIdSelection:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v12, v9

    .line 233
    .local v12, Q_PROJECTION:[Ljava/lang/String;
    const-string v9, "content://security_mms/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 234
    .local v11, sourceTableName:Landroid/net/Uri;
    const/4 v15, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v9 .. v15}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .line 236
    .local v43, insertedRowIdCursor:Landroid/database/Cursor;
    if-nez v43, :cond_6

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 237
    :cond_6
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const-string v9, "_id"

    move-object/from16 v0, v43

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v43

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 239
    .local v49, partId:I
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 241
    new-instance v18, Landroid/content/ContentValues;

    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 242
    .local v18, updatedRowValues:Landroid/content/ContentValues;
    const-string v9, "locked"

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v11

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .line 243
    invoke-static/range {v15 .. v20}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v22, v9

    .line 253
    .local v22, PART_QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v9, 0x0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v24, v9

    .line 256
    .local v24, part_selectionArgs:[Ljava/lang/String;
    const-string v9, "content://mms/part"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 257
    .local v21, sourceDBPartTableUri:Landroid/net/Uri;
    const-string v23, "mid = ? "

    .line 258
    .local v23, part_selection:Ljava/lang/String;
    const-string v9, "content://security_mms/part-copy"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v60

    .line 259
    .local v60, targetDBPartTableUri:Landroid/net/Uri;
    const/16 v25, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v25}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v51

    .line 261
    .local v51, partRowCursor:Landroid/database/Cursor;
    if-nez v51, :cond_7

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 262
    :cond_7
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_b

    .line 265
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v53, v0

    .line 266
    .local v53, partTableFieldNames:[Ljava/lang/String;
    const/16 v38, 0x0

    const/16 v42, 0x0

    :goto_2
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    move/from16 v0, v38

    if-ge v0, v9, :cond_9

    .line 269
    move-object/from16 v0, v51

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    move-object/from16 v0, v51

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 272
    move-object/from16 v0, v51

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v53, v42

    .line 273
    add-int/lit8 v42, v42, 0x1

    .line 266
    :cond_8
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 277
    :cond_9
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->moveToFirst()Z

    .line 278
    const/16 v45, 0x0

    .local v45, j:I
    :goto_3
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->getCount()I

    move-result v9

    move/from16 v0, v45

    if-ge v0, v9, :cond_a

    .line 279
    new-instance v52, Landroid/content/ContentValues;

    invoke-direct/range {v52 .. v52}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v52, partRowItem:Landroid/content/ContentValues;
    const-string v9, "mid"

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    invoke-static/range {v51 .. v53}, Lcom/android/mms/util/SecurityMailboxUtils;->addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, v60

    move-object/from16 v1, v52

    invoke-static {v3, v4, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v50

    .line 287
    .local v50, partInsertedUri:Landroid/net/Uri;
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->moveToNext()Z

    .line 278
    add-int/lit8 v45, v45, 0x1

    goto :goto_3

    .line 289
    .end local v50           #partInsertedUri:Landroid/net/Uri;
    .end local v52           #partRowItem:Landroid/content/ContentValues;
    :cond_a
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->close()V

    .line 292
    const-string v9, "content://mms/part-copy"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v58

    .line 293
    .local v58, sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    move-object/from16 v0, v58

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v28, v9

    .line 306
    .local v28, ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/addr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 308
    .local v27, sourceDBAddrTableUri:Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://security_mms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/addr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v59

    .line 309
    .local v59, targetDBAddrTableUri:Landroid/net/Uri;
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-static/range {v25 .. v31}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 311
    .local v33, addrRowCursor:Landroid/database/Cursor;
    if-nez v33, :cond_d

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 296
    .end local v27           #sourceDBAddrTableUri:Landroid/net/Uri;
    .end local v28           #ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    .end local v33           #addrRowCursor:Landroid/database/Cursor;
    .end local v45           #j:I
    .end local v53           #partTableFieldNames:[Ljava/lang/String;
    .end local v58           #sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    .end local v59           #targetDBAddrTableUri:Landroid/net/Uri;
    :cond_b
    if-eqz v51, :cond_c

    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 312
    .restart local v27       #sourceDBAddrTableUri:Landroid/net/Uri;
    .restart local v28       #ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    .restart local v33       #addrRowCursor:Landroid/database/Cursor;
    .restart local v45       #j:I
    .restart local v53       #partTableFieldNames:[Ljava/lang/String;
    .restart local v58       #sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    .restart local v59       #targetDBAddrTableUri:Landroid/net/Uri;
    :cond_d
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_11

    .line 315
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v37, v0

    .line 316
    .local v37, addrTableFieldNames:[Ljava/lang/String;
    const/16 v38, 0x0

    const/16 v42, 0x0

    :goto_4
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    move/from16 v0, v38

    if-ge v0, v9, :cond_f

    .line 319
    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "msg_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 322
    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v37, v42

    .line 323
    add-int/lit8 v42, v42, 0x1

    .line 316
    :cond_e
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .line 327
    :cond_f
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/16 v45, 0x0

    :goto_5
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v9

    move/from16 v0, v45

    if-ge v0, v9, :cond_10

    .line 329
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v34, addrRowItem:Landroid/content/ContentValues;
    const-string v9, "msg_id"

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v34

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/SecurityMailboxUtils;->addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, v59

    move-object/from16 v1, v34

    invoke-static {v3, v4, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v32

    .line 339
    .local v32, addrInsertedUri:Landroid/net/Uri;
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    .line 328
    add-int/lit8 v45, v45, 0x1

    goto :goto_5

    .line 341
    .end local v32           #addrInsertedUri:Landroid/net/Uri;
    .end local v34           #addrRowItem:Landroid/content/ContentValues;
    :cond_10
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 344
    const-string v35, "msg_id = ?"

    .line 345
    .local v35, addrSelection:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v9, 0x0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v36, v9

    .line 348
    .local v36, addrSelectionArgs:[Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    invoke-static {v3, v4, v5, v7, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v39

    .line 358
    .local v39, deleteCount:I
    sget-object v9, Lcom/android/mms/util/SecurityMailboxUtils;->LOG_HISTORY_URI:Landroid/net/Uri;

    const-string v10, "messageid=? AND logtype=?"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "200"

    aput-object v17, v15, v16

    invoke-virtual {v4, v9, v10, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 351
    .end local v35           #addrSelection:Ljava/lang/String;
    .end local v36           #addrSelectionArgs:[Ljava/lang/String;
    .end local v37           #addrTableFieldNames:[Ljava/lang/String;
    .end local v39           #deleteCount:I
    :cond_11
    if-eqz v33, :cond_12

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 361
    .end local v11           #sourceTableName:Landroid/net/Uri;
    .end local v12           #Q_PROJECTION:[Ljava/lang/String;
    .end local v13           #rowIdSelection:Ljava/lang/String;
    .end local v14           #rowIdSelectionArgs:[Ljava/lang/String;
    .end local v18           #updatedRowValues:Landroid/content/ContentValues;
    .end local v21           #sourceDBPartTableUri:Landroid/net/Uri;
    .end local v22           #PART_QUERY_PROJECTION:[Ljava/lang/String;
    .end local v23           #part_selection:Ljava/lang/String;
    .end local v24           #part_selectionArgs:[Ljava/lang/String;
    .end local v27           #sourceDBAddrTableUri:Landroid/net/Uri;
    .end local v28           #ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    .end local v33           #addrRowCursor:Landroid/database/Cursor;
    .end local v38           #count:I
    .end local v41           #fieldNames:[Ljava/lang/String;
    .end local v42           #index:I
    .end local v43           #insertedRowIdCursor:Landroid/database/Cursor;
    .end local v44           #insertedUri:Landroid/net/Uri;
    .end local v45           #j:I
    .end local v46           #newThreadId:J
    .end local v48           #originalDBValue:I
    .end local v49           #partId:I
    .end local v51           #partRowCursor:Landroid/database/Cursor;
    .end local v53           #partTableFieldNames:[Ljava/lang/String;
    .end local v54           #pduRowItem:Landroid/content/ContentValues;
    .end local v56           #pdu_id:J
    .end local v58           #sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    .end local v59           #targetDBAddrTableUri:Landroid/net/Uri;
    .end local v60           #targetDBPartTableUri:Landroid/net/Uri;
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static moveConversationFromSMSTable(J)Z
    .locals 23
    .parameter "msgId"

    .prologue
    .line 69
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    .line 71
    .local v3, context:Landroid/content/Context;
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v18, "*"

    aput-object v18, v6, v9

    .line 75
    .local v6, QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v9

    .line 78
    .local v8, selectionArgs:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "content://sms/"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 79
    .local v5, sourceDBUri:Landroid/net/Uri;
    const-string v7, "_id = ? "

    .line 80
    .local v7, selection:Ljava/lang/String;
    const-string v9, "content://security_sms/inbox"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 81
    .local v15, targetDBTableUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 82
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 86
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 88
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v14, rowItem:Landroid/content/ContentValues;
    const-string v9, "thread_id"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/android/mms/util/SecurityMailboxUtils;->getNewThreadIdForDb(J)J

    move-result-wide v16

    .line 94
    .local v16, threadId:J
    const-string v9, "thread_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v9, "address"

    const-string v18, "address"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v9, "person"

    const-string v18, "person"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v9, "date"

    const-string v18, "date"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v9, "protocol"

    const-string v18, "protocol"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v9, "read"

    const-string v18, "read"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v9, "status"

    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v9, "type"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v9, "reply_path_present"

    const-string v18, "reply_path_present"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v9, "subject"

    const-string v18, "subject"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v9, "body"

    const-string v18, "body"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v9, "service_center"

    const-string v18, "service_center"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v9, "locked"

    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v9, "error_code"

    const-string v18, "error_code"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v9, "seen"

    const-string v18, "seen"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 113
    const-string v9, "reserved"

    const-string v18, "reserved"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 116
    const-string v9, "pri"

    const-string v18, "pri"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    :cond_1
    invoke-static {v3, v4, v15, v14}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 122
    .local v13, insertedUri:Landroid/net/Uri;
    invoke-static {v3, v4, v5, v7, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 125
    .local v11, deleteCount:I
    sget-object v9, Lcom/android/mms/util/SecurityMailboxUtils;->LOG_HISTORY_URI:Landroid/net/Uri;

    const-string v18, "messageid=? AND logtype=?"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "300"

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v9, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v11           #deleteCount:I
    .end local v13           #insertedUri:Landroid/net/Uri;
    .end local v14           #rowItem:Landroid/content/ContentValues;
    .end local v16           #threadId:J
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_2
    const/4 v9, 0x1

    return v9

    .line 127
    :catch_0
    move-exception v12

    .line 128
    .local v12, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v12           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v9
.end method

.method public static sendMoveCompleteBroadCast(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.mms.SecurityTelephony.Threads.action.READ_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/mms/util/SecurityMailboxUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method public static showPasswordEntryScreen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.security.mms.PASSACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, pwdIntent:Landroid/content/Intent;
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
