.class public Lcom/android/contacts/editor/AggregationSuggestionEngine;
.super Landroid/os/HandlerThread;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
    }
.end annotation


# instance fields
.field private isAddToICE:Z

.field private isAddToSpeedDial:Z

.field private mContactId:J

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDataCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

.field private mMainHandler:Landroid/os/Handler;

.field private mSuggestedContactIds:[J

.field private mSuggestionsUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 125
    const-string v0, "AggregationSuggestions"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 112
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 117
    iput-boolean v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->isAddToICE:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->isAddToSpeedDial:Z

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    .line 133
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 248
    invoke-virtual {p2, p3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    return-void
.end method

.method private buildAggregationSuggestionUri(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/net/Uri;
    .locals 6
    .parameter "values"

    .prologue
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v1, nameSb:Ljava/lang/StringBuilder;
    const-string v3, "data4"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 212
    const-string v3, "data2"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 213
    const-string v3, "data5"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 214
    const-string v3, "data3"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 215
    const-string v3, "data6"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 218
    const-string v3, "data1"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 221
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v2, phoneticNameSb:Ljava/lang/StringBuilder;
    const-string v3, "data9"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 223
    const-string v3, "data8"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 224
    const-string v3, "data7"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 228
    const/4 v3, 0x0

    .line 244
    :goto_0
    return-object v3

    .line 231
    :cond_1
    invoke-static {}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;->builder()Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    invoke-virtual {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v0

    .line 235
    .local v0, builder:Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    const-string v3, "name"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 239
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    const-string v3, "name"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 244
    :cond_3
    invoke-virtual {v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private loadAggregationSuggestions(Landroid/net/Uri;)V
    .locals 13
    .parameter "uri"

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 312
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 314
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 316
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    if-eqz v8, :cond_0

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-nez v8, :cond_2

    .line 346
    if-eqz v8, :cond_0

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 322
    :cond_2
    :try_start_1
    invoke-direct {p0, v8}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->updateSuggestedContactIds(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 323
    .local v6, changed:Z
    if-nez v6, :cond_3

    .line 346
    if-eqz v8, :cond_0

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 327
    :cond_3
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v1, "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/nickname\',\'vnd.android.cursor.item/photo\') AND contact_id IN ("

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .local v12, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v7, v1

    .line 329
    .local v7, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v7, :cond_5

    .line 330
    if-lez v11, :cond_4

    .line 331
    const/16 v1, 0x2c

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    aget-wide v1, v1, v11

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 335
    :cond_5
    const/16 v1, 0x29

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 340
    .local v9, dataCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 346
    if-eqz v8, :cond_0

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 341
    .end local v6           #changed:Z
    .end local v7           #count:I
    .end local v9           #dataCursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 342
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v1, "AggregationSuggestionEngine"

    const-string v2, "loadAggregationSuggestions: "

    invoke-static {v1, v2, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    if-eqz v8, :cond_0

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 343
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v10

    .line 344
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v1, "AggregationSuggestionEngine"

    const-string v2, "loadAggregationSuggestions: "

    invoke-static {v1, v2, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 346
    if-eqz v8, :cond_0

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 346
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private updateSuggestedContactIds(Landroid/database/Cursor;)Z
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 352
    const/4 v3, 0x0

    .line 354
    .local v3, count:I
    if-nez p1, :cond_1

    move v0, v5

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 360
    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v6, v6

    if-eq v3, v6, :cond_4

    const/4 v0, 0x1

    .line 361
    .local v0, changed:Z
    :goto_1
    if-nez v0, :cond_3

    .line 362
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 363
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 364
    .local v1, contactId:J
    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v6, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-gez v6, :cond_2

    .line 365
    const/4 v0, 0x1

    .line 371
    .end local v1           #contactId:J
    :cond_3
    if-eqz v0, :cond_0

    .line 372
    new-array v6, v3, [J

    iput-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 373
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 374
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 375
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 376
    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v6, v4

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #changed:Z
    .end local v4           #i:I
    :cond_4
    move v0, v5

    .line 360
    goto :goto_1

    .line 378
    .restart local v0       #changed:Z
    .restart local v4       #i:I
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    goto :goto_0
.end method


# virtual methods
.method public containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z
    .locals 4
    .parameter "suggestion"
    .parameter "rawContactId"

    .prologue
    .line 473
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 475
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 476
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    iget-wide v2, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 477
    const/4 v2, 0x1

    .line 481
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    .line 475
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected deliverNotification(Landroid/database/Cursor;)V
    .locals 1
    .parameter "dataCursor"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 389
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;->onAggregationSuggestionChange()V

    .line 392
    :cond_1
    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSuggestedContactCount()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 408
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 409
    const/16 v20, 0x0

    .line 410
    .local v20, suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    const-wide/16 v6, -0x1

    .line 411
    .local v6, currentContactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 412
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 414
    .local v4, contactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 415
    .local v18, rawContactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "vnd.sec.contact.sim"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 417
    .local v12, isSimContact:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "vnd.sec.contact.sim2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 419
    .local v11, isSim2Contact:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->isAddToICE:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->isAddToSpeedDial:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    if-nez v12, :cond_0

    if-nez v11, :cond_0

    .line 420
    :cond_1
    cmp-long v22, v4, v6

    if-eqz v22, :cond_2

    .line 421
    new-instance v20, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .end local v20           #suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    invoke-direct/range {v20 .. v20}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;-><init>()V

    .line 422
    .restart local v20       #suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    .line 425
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    .line 426
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    move-wide v6, v4

    .line 430
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z

    move-result v22

    if-nez v22, :cond_3

    .line 431
    new-instance v17, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    invoke-direct/range {v17 .. v17}, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;-><init>()V

    .line 432
    .local v17, rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0xb

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountName:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->dataSet:Ljava/lang/String;

    .line 436
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v17           #rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, mimetype:Ljava/lang/String;
    const-string v22, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 443
    .local v21, superprimary:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    if-nez v21, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 445
    :cond_4
    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 447
    .end local v8           #data:Ljava/lang/String;
    .end local v21           #superprimary:I
    :cond_5
    const-string v22, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 449
    .restart local v8       #data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 450
    .restart local v21       #superprimary:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    if-nez v21, :cond_6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 452
    :cond_6
    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 454
    .end local v8           #data:Ljava/lang/String;
    .end local v21           #superprimary:I
    :cond_7
    const-string v22, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 456
    .restart local v8       #data:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 457
    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    goto/16 :goto_0

    .line 459
    .end local v8           #data:Ljava/lang/String;
    :cond_8
    const-string v22, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 461
    .local v9, dataId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 462
    .local v15, photoId:J
    cmp-long v22, v9, v15

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    goto/16 :goto_0

    .line 469
    .end local v4           #contactId:J
    .end local v6           #currentContactId:J
    .end local v9           #dataId:J
    .end local v11           #isSim2Contact:Z
    .end local v12           #isSimContact:Z
    .end local v14           #mimetype:Ljava/lang/String;
    .end local v15           #photoId:J
    .end local v18           #rawContactId:J
    .end local v20           #suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    :cond_9
    return-object v13
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 260
    :pswitch_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->loadAggregationSuggestions(Landroid/net/Uri;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNameChange(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->buildAggregationSuggestionUri(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    .line 184
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;Lcom/android/contacts/editor/AggregationSuggestionEngine$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 187
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->scheduleSuggestionLookup()V

    .line 195
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 164
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 168
    :cond_1
    return-void
.end method

.method public quit()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->pause()V

    .line 173
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 178
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    return-void
.end method

.method protected scheduleSuggestionLookup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 199
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 206
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setContactId(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 149
    iput-wide p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 152
    :cond_0
    return-void
.end method

.method public setIsAddToICE(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->isAddToICE:Z

    .line 399
    return-void
.end method

.method public setIsAddToSpeedDial(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->isAddToSpeedDial:Z

    .line 404
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    .line 156
    return-void
.end method
