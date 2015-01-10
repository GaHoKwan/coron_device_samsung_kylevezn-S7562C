.class public Lcom/android/mms/spam/SpamUtils;
.super Ljava/lang/Object;
.source "SpamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SpamUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJ)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "simSlot"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    .line 243
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 244
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "sim_slot"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    if-eqz p5, :cond_0

    const-string v2, "date"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    :cond_0
    const-string v2, "read"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    invoke-static {p4}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, imsi:Ljava/lang/String;
    const-string v2, "sim_imsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-eqz p7, :cond_1

    const-string v2, "status"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p8, v2

    if-eqz v2, :cond_2

    const-string v2, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static extractSpamMessageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 8
    .parameter "resolver"
    .parameter "msgUri"
    .parameter "msgType"

    .prologue
    const/4 v2, 0x0

    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 178
    :goto_0
    return-object v2

    .line 169
    :cond_0
    const/4 v7, 0x0

    .line 171
    .local v7, values:Landroid/content/ContentValues;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {v6, p2}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 175
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 178
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static extractSpamMessageInfo(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "cursor"
    .parameter "msgType"

    .prologue
    .line 153
    const-string v0, "sms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/android/mms/spam/SpamUtils;->extractSpamSmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 156
    :cond_0
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {p0}, Lcom/android/mms/spam/SpamUtils;->extractSpamMmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static extractSpamMmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 132
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 134
    const-string v1, "seen"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 135
    const-string v1, "sim_slot"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 136
    return-object v0
.end method

.method private static extractSpamSmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 81
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 83
    const-string v1, "body"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 84
    const-string v1, "date"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 85
    const-string v1, "read"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 86
    const-string v1, "sim_slot"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 87
    return-object v0
.end method

.method public static restoreSpamMessage(JLjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "msgId"
    .parameter "msgType"
    .parameter "msgInfo"

    .prologue
    .line 142
    const-string v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1, p3}, Lcom/android/mms/spam/SpamUtils;->restoreSpamSms(JLandroid/content/ContentValues;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    const-string v0, "mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {p0, p1, p3}, Lcom/android/mms/spam/SpamUtils;->restoreSpamMms(JLandroid/content/ContentValues;)Z

    move-result v0

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restoreSpamMms(JLandroid/content/ContentValues;)Z
    .locals 12
    .parameter "msgId"
    .parameter "msgInfo"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 93
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 97
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 104
    .local v9, uri:Landroid/net/Uri;
    :goto_0
    if-nez p2, :cond_0

    .line 105
    const-string v3, "mms"

    invoke-static {v1, v9, v3}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 109
    :cond_0
    if-nez p2, :cond_2

    .line 110
    const-string v3, "Mms/SpamUtils"

    const-string v4, "restoreSpamSms: nothing to restore"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 128
    :goto_1
    return v3

    .line 100
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    .line 117
    .local v7, p:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    invoke-virtual {v7, v9}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    .line 118
    .local v8, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 119
    .local v2, inboxUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-virtual {v1, v9, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    const/4 v3, 0x1

    goto :goto_1

    .line 120
    .end local v2           #inboxUri:Landroid/net/Uri;
    .end local v8           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v6

    .line 121
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/SpamUtils"

    const-string v4, "restoreSpamMms: failed to restore MMS to Inbox"

    invoke-static {v3, v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v10

    .line 122
    goto :goto_1
.end method

.method public static restoreSpamSms(JLandroid/content/ContentValues;)Z
    .locals 13
    .parameter "msgId"
    .parameter "msgInfo"

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 39
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 43
    .local v11, uri:Landroid/net/Uri;
    if-nez p2, :cond_0

    .line 44
    const-string v1, "sms"

    invoke-static {v0, v11, v1}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    const-string v1, "Mms/SpamUtils"

    const-string v2, "restoreSpamSms: nothing to restore"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return v7

    .line 57
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sim_slot"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "date"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide/16 v8, -0x1

    invoke-static/range {v0 .. v9}, Lcom/android/mms/spam/SpamUtils;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJ)Landroid/net/Uri;

    move-result-object v10

    .line 69
    .local v10, inboxUri:Landroid/net/Uri;
    if-nez v10, :cond_2

    .line 70
    const-string v1, "Mms/SpamUtils"

    const-string v2, "restoreSpamSms: failed to restore SMS to Inbox"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0, v11, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    const/4 v7, 0x1

    goto :goto_0
.end method
