.class public Lcom/android/mms/spam/SpamFilter;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamFilter$SpamFilterData;,
        Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_CRITERIA:I = 0x4

.field public static final COLUMN_INDEX_ENABLE:I = 0x2

.field public static final COLUMN_INDEX_FILTER:I = 0x3

.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_TYPE:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CRITERIA:Ljava/lang/String; = "criteria"

.field public static final CRITERIA_ENDWITH:I = 0x2

.field public static final CRITERIA_EXACTLY_SAME:I = 0x0

.field public static final CRITERIA_INCLUDE:I = 0x3

.field public static final CRITERIA_STARTWITH:I = 0x1

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final FILTER:Ljava/lang/String; = "filter"

.field public static final MESSAGEBLOCK_MODE:Ljava/lang/String; = "messageblock_mode"

.field public static final MESSAGEBLOCK_MODE_ALL_NUMBERS:I = 0x1

.field public static final MESSAGEBLOCK_MODE_DEFAULT_VALUE:I = 0x2

.field public static final MESSAGEBLOCK_MODE_OFF:I = 0x0

.field public static final MESSAGEBLOCK_MODE_ONLY_BLACK_LIST:I = 0x2

.field public static final SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SPAM_MMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SPAM_SMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SpamFilter"

.field public static final TYPE:Ljava/lang/String; = "filter_type"

.field public static final TYPE_NUMBER:I = 0x0

.field public static final TYPE_STRING:I = 0x1

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://mms-sms/spam-filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "content://mms-sms/spam-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://spamsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://spamsms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://spammms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;ILjava/lang/String;)I
    .locals 17
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    .line 116
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v14, idsBuilder:Ljava/lang/StringBuilder;
    const-string v1, "Mms/SpamFilter"

    const-string v2, "SpamFilter delete()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    :cond_0
    const/4 v15, 0x0

    .line 178
    :cond_1
    :goto_0
    return v15

    .line 122
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 125
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 126
    const-string v1, "Mms/SpamFilter"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v15, 0x0

    goto :goto_0

    .line 131
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-nez v1, :cond_5

    .line 132
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 133
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 134
    .local v13, id:I
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 135
    .local v12, filter_type:I
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, filter_string:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 138
    .local v10, criteria:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, REMOVE_WHERE:Ljava/lang/String;
    move/from16 v0, p1

    if-ne v12, v0, :cond_4

    if-nez v10, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 141
    .local v15, row:I
    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v9, :cond_1

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    const/4 v9, 0x0

    goto :goto_0

    .line 147
    .end local v8           #REMOVE_WHERE:Ljava/lang/String;
    .end local v10           #criteria:I
    .end local v11           #filter_string:Ljava/lang/String;
    .end local v12           #filter_type:I
    .end local v13           #id:I
    .end local v15           #row:I
    :cond_5
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 150
    :cond_6
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 151
    .restart local v13       #id:I
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 152
    .restart local v12       #filter_type:I
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 153
    .restart local v11       #filter_string:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 155
    .restart local v10       #criteria:I
    move/from16 v0, p1

    if-ne v12, v0, :cond_7

    if-nez v10, :cond_7

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " , "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 161
    const-string v1, "-1"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 163
    .restart local v8       #REMOVE_WHERE:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 164
    .restart local v15       #row:I
    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    if-eqz v9, :cond_1

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 170
    .end local v8           #REMOVE_WHERE:Ljava/lang/String;
    .end local v10           #criteria:I
    .end local v11           #filter_string:Ljava/lang/String;
    .end local v12           #filter_type:I
    .end local v13           #id:I
    .end local v15           #row:I
    :cond_8
    if-eqz v9, :cond_9

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    const/4 v9, 0x0

    .line 175
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 176
    .local v16, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 177
    .restart local v15       #row:I
    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v15           #row:I
    .end local v16           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_a

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    const/4 v9, 0x0

    :cond_a
    throw v1
.end method

.method public static deleteAll(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 99
    const-string v1, "Mms/SpamFilter"

    const-string v2, "SpamFilter deleteAll()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, count:I
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->clear()V

    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;ILjava/lang/String;ZI)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "filter"
    .parameter "enable"
    .parameter "criteria"

    .prologue
    const/4 v3, 0x1

    .line 81
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    const/4 v6, 0x0

    .line 95
    :goto_0
    return-object v6

    .line 86
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v7, values:Landroid/content/ContentValues;
    const-string v2, "filter_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v2, "filter"

    invoke-virtual {v7, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "enable"

    if-ne p3, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v2, "criteria"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 92
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, id:I
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move v2, p1

    move v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 94
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    goto :goto_0

    .line 89
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v1           #id:I
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
