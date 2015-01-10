.class public Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceTagBroadcastReceiver.java"


# static fields
.field private static final CONTACT_ID_PROJECTION:[Ljava/lang/String;

.field public static final ID_PROJECTION:[Ljava/lang/String;

.field private static mIsProfile:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->CONTACT_ID_PROJECTION:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->ID_PROJECTION:[Ljava/lang/String;

    .line 69
    sput-boolean v2, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIsProfile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "assertAccount"

    .prologue
    const/4 v7, 0x0

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    .line 205
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=? AND data_set IS NULL AND (account_type IN (?,?,?) OR account_type IS NULL)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "com.google"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.android.exchange"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "vnd.sec.contact.phone"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 225
    const-string v2, "FaceTagBroadcastReceiver"

    const-string v3, "Insert photo succeeded."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem querying raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 228
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_1

    .line 231
    invoke-direct {p0, p1, p2, v7}, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem inserting photo into raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "cr"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    const/4 v6, 0x0

    .line 170
    .local v6, rawContactIdCursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v7, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-boolean v0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIsProfile:Z

    if-eqz v0, :cond_1

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    if-eqz v6, :cond_2

    .line 177
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 172
    :cond_1
    :try_start_1
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :cond_2
    if-eqz v6, :cond_3

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_3
    return-object v7
.end method

.method private updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 17
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "allowInsert"

    .prologue
    .line 244
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v15, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v3, "mimetype"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 249
    invoke-static/range {p2 .. p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static/range {p2 .. p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 262
    const-string v3, "FaceTagBroadcastReceiver"

    const-string v4, "Update photo succeeded."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v10

    .line 264
    .local v10, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Problem querying raw_contacts/data"

    invoke-direct {v3, v4, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 265
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 266
    .local v10, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_0

    .line 269
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 272
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v16, operations2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    .line 274
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 276
    .local v12, nCount:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "mimetype=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "vnd.android.cursor.item/photo"

    aput-object v8, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 278
    if-eqz v9, :cond_4

    .line 279
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 280
    if-lez v12, :cond_2

    .line 281
    const/4 v13, 0x0

    .line 282
    .local v13, nId:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 285
    const-string v3, "content://com.android.contacts/data"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 286
    .local v14, newURI:Landroid/net/Uri;
    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    if-nez v3, :cond_1

    .line 296
    .end local v13           #nId:I
    .end local v14           #newURI:Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 297
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_3
    const/4 v3, 0x1

    if-le v12, v3, :cond_6

    .line 302
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 303
    const-string v3, "FaceTagBroadcastReceiver"

    const-string v4, "Delete photo succeeded."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    .line 305
    const-string v3, "FaceTagBroadcastReceiver"

    const-string v4, "Insert photo succeeded."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 306
    :catch_2
    move-exception v11

    .line 307
    .local v11, error:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Problem querying raw_contacts/data"

    invoke-direct {v3, v4, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 291
    .end local v11           #error:Landroid/os/RemoteException;
    :cond_4
    :try_start_3
    const-string v3, "FaceTagBroadcastReceiver"

    const-string v4, "Cursor is null."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 293
    :catch_3
    move-exception v11

    .line 294
    .local v11, error:Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Problem query"

    invoke-direct {v3, v4, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    .end local v11           #error:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_5

    .line 297
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 308
    :catch_4
    move-exception v11

    .line 309
    .local v11, error:Landroid/content/OperationApplicationException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Problem inserting photo raw_contacts/data"

    invoke-direct {v3, v4, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 312
    .end local v11           #error:Landroid/content/OperationApplicationException;
    :cond_6
    const-string v3, "FaceTagBroadcastReceiver"

    const-string v4, "can\'t update photo"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getContactId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "lookupKey"

    .prologue
    .line 126
    const/4 v8, 0x0

    .line 127
    .local v8, result:Ljava/lang/String;
    const/4 v6, 0x0

    .line 129
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIsProfile:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    sget-object v2, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->CONTACT_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "lookup=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 141
    :cond_0
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_1
    :goto_1
    return-object v8

    .line 129
    :cond_2
    :try_start_1
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v7

    .line 139
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "FaceTagBroadcastReceiver"

    const-string v1, "Can not create contact list! "

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 141
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIntent:Landroid/content/Intent;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v9, "com.android.contacts.action.SAVE_CROPPED_PHOTO"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 77
    iget-object v9, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIntent:Landroid/content/Intent;

    const-string v10, "lookupkey"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, lookupKey:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIntent:Landroid/content/Intent;

    const-string v10, "output"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 79
    .local v5, mSaveUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 81
    .local v6, photo:Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 82
    iget-object v9, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIntent:Landroid/content/Intent;

    const-string v10, "photo"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #photo:Landroid/graphics/Bitmap;
    check-cast v6, Landroid/graphics/Bitmap;

    .line 96
    .restart local v6       #photo:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v6, :cond_0

    if-nez v4, :cond_2

    .line 97
    :cond_0
    const-string v9, "FaceTagBroadcastReceiver"

    const-string v10, "Data is invalid"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local v5           #mSaveUri:Landroid/net/Uri;
    .end local v6           #photo:Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 84
    .restart local v4       #lookupKey:Ljava/lang/String;
    .restart local v5       #mSaveUri:Landroid/net/Uri;
    .restart local v6       #photo:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    .line 86
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 87
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 92
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v2

    .line 90
    .local v2, ex:Ljava/io/IOException;
    :try_start_1
    const-string v9, "FaceTagBroadcastReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot open file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 101
    .end local v3           #inputStream:Ljava/io/InputStream;
    :cond_2
    const-string v9, "profile"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 102
    const/4 v9, 0x1

    sput-boolean v9, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIsProfile:Z

    .line 104
    :cond_3
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->getContactId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, contactId:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 106
    const-string v9, "FaceTagBroadcastReceiver"

    const-string v10, "Contact ID is null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 111
    .local v8, rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v8, :cond_5

    .line 112
    const-string v9, "FaceTagBroadcastReceiver"

    const-string v10, "RawContactIdsList is null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/Long;

    .line 116
    .local v7, rawContactIds:[Ljava/lang/Long;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7           #rawContactIds:[Ljava/lang/Long;
    check-cast v7, [Ljava/lang/Long;

    .line 118
    .restart local v7       #rawContactIds:[Ljava/lang/Long;
    invoke-virtual {p0, v7, v6}, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->setCallerId([Ljava/lang/Long;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 120
    .end local v1           #contactId:Ljava/lang/String;
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local v5           #mSaveUri:Landroid/net/Uri;
    .end local v6           #photo:Landroid/graphics/Bitmap;
    .end local v7           #rawContactIds:[Ljava/lang/Long;
    .end local v8           #rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    const-string v9, "FaceTagBroadcastReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Action is not correct : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setCallerId([Ljava/lang/Long;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "rawContactIds"
    .parameter "photo"

    .prologue
    const/4 v11, 0x1

    .line 149
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v7, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x4b

    invoke-virtual {p2, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v2, imageValues:Landroid/content/ContentValues;
    const-string v8, "data15"

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 154
    const-string v8, "is_super_primary"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Long;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 158
    .local v5, rawContactId:Ljava/lang/Long;
    sget-boolean v8, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->mIsProfile:Z

    if-eqz v8, :cond_0

    sget-object v8, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 161
    .local v6, rawContactUri:Landroid/net/Uri;
    const-string v8, "data"

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 163
    .local v4, rawContactDataUri:Landroid/net/Uri;
    invoke-direct {p0, v2, v4, v11}, Lcom/sec/android/app/contacts/util/FaceTagBroadcastReceiver;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v4           #rawContactDataUri:Landroid/net/Uri;
    .end local v6           #rawContactUri:Landroid/net/Uri;
    :cond_0
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 165
    .end local v5           #rawContactId:Ljava/lang/Long;
    :cond_1
    return-void
.end method
