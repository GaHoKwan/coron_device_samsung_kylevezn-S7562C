.class public Lcom/android/mms/SuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionsProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.android.mms.SuggestionsProvider"

.field static final COLUMN_ADDRESS:I = 0x5

.field static final COLUMN_DISPLAY_RECIPIENT_IDS:I = 0xb

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_LISTORDER:I = 0x8

.field static final COLUMN_NORMALIZED_DATE:I = 0x0

.field static final COLUMN_RECIPIENT_IDS:I = 0x6

.field static final COLUMN_SUBJECT:I = 0x4

.field static final COLUMN_SUBJECT_CS:I = 0xa

.field static final COLUMN_TEXT:I = 0x3

.field static final COLUMN_THREAD_ID:I = 0x7

.field static final COLUMN_TYPE:I = 0x9

.field static final COLUMN_TYPE_DISCRIMINATOR:I = 0x2

.field static SUGGESTION_BLOCK:Z = false

.field private static final SUGGEST_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SuggestionsProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    sput-boolean v2, Lcom/android/mms/SuggestionsProvider;->SUGGESTION_BLOCK:Z

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 99
    sget-boolean v1, Lcom/android/mms/SuggestionsProvider;->SUGGESTION_BLOCK:Z

    if-eqz v1, :cond_0

    .line 100
    const/4 v10, 0x0

    .line 237
    :goto_0
    return-object v10

    .line 103
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/4 v10, 0x0

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, searchSuggest:Ljava/lang/String;
    const-string v1, "Mms/SuggestionsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query(),searchSuggest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "content://mms-sms/messages/bySearchSuggest?pattern=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 115
    .local v2, u:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "thread_id<>?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 124
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 125
    const-string v1, "Mms/SuggestionsProvider"

    const-string v3, "query(),return null"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v10, 0x0

    goto :goto_0

    .line 130
    :cond_2
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    invoke-direct {v10, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 133
    .local v10, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 145
    .local v9, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_d

    .line 147
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 148
    .local v22, type:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 149
    .local v21, text:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 150
    .local v20, subject:Ljava/lang/String;
    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 151
    .local v14, listorder:I
    const/16 v1, 0xa

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 152
    .local v19, sub_cs:I
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, db_address:Ljava/lang/String;
    const/16 v1, 0xb

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, recipientIds:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 172
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v17

    .line 173
    .local v17, recipients:Lcom/android/mms/data/ContactList;
    const-string v1, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 176
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0188

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 196
    :cond_4
    :goto_2
    if-nez v14, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 198
    move-object/from16 v13, v18

    .line 199
    .local v13, intentData:Ljava/lang/String;
    const-string v1, "-"

    const-string v3, ""

    invoke-virtual {v13, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 215
    :goto_3
    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/search?pattern="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 222
    if-nez v21, :cond_5

    .line 223
    const-string v21, ""

    .line 225
    :cond_5
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v7, v1, v3

    const/4 v3, 0x2

    aput-object v21, v1, v3

    const/4 v3, 0x3

    aput-object v13, v1, v3

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 146
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 179
    .end local v13           #intentData:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a000f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 181
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 182
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, number:Ljava/lang/String;
    const-string v1, "CBmessages"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0132

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 191
    .end local v15           #number:Ljava/lang/String;
    :cond_8
    :goto_4
    const-string v1, "#CMAS#"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 186
    .restart local v15       #number:Ljava/lang/String;
    :cond_9
    const-string v1, "Pushmessage"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a01bb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 200
    .end local v15           #number:Ljava/lang/String;
    :cond_a
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 201
    move-object/from16 v13, v20

    .line 202
    .restart local v13       #intentData:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a01b6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%s"

    move-object/from16 v0, v20

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 204
    .end local v13           #intentData:Ljava/lang/String;
    :cond_b
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 205
    const-string v1, "Mms/SuggestionsProvider"

    const-string v3, "text is empty"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    move-object/from16 v21, v11

    .line 209
    :cond_c
    move-object/from16 v13, v21

    .restart local v13       #intentData:Ljava/lang/String;
    goto/16 :goto_3

    .line 232
    .end local v7           #address:Ljava/lang/String;
    .end local v11           #db_address:Ljava/lang/String;
    .end local v13           #intentData:Ljava/lang/String;
    .end local v14           #listorder:I
    .end local v16           #recipientIds:Ljava/lang/String;
    .end local v17           #recipients:Lcom/android/mms/data/ContactList;
    .end local v19           #sub_cs:I
    .end local v20           #subject:Ljava/lang/String;
    .end local v21           #text:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 233
    const/4 v8, 0x0

    .line 236
    const-string v1, "Mms/SuggestionsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query(),return cursor, rows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v9           #count:I
    .end local v12           #i:I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 233
    const/4 v8, 0x0

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method
