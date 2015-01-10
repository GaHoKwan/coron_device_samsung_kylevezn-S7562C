.class public Lcom/android/phone/callsettings/CallSettingsProvider;
.super Landroid/content/ContentProvider;
.source "CallSettingsProvider.java"


# instance fields
.field private autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

.field autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

.field private autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

.field autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

.field private autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

.field autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

.field private callreminder:Lcom/android/phone/callsettings/CallReminderDB;

.field callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

.field private ipcall:Lcom/android/phone/callsettings/IpCallDB;

.field private ipcallSim2:Lcom/android/phone/callsettings/IpCallDBSim2;

.field ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

.field ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

.field private ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

.field ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

.field private registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

.field registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

.field private rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

.field rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 140
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 151
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private appendRowId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "selection"
    .parameter "id"

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1082
    const-string v0, "CallSettingsProvider"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v4, 0x1

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, count:I
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    const/4 v2, 0x0

    .line 411
    :goto_0
    return v2

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 406
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 410
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v2, v0

    .line 411
    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 294
    goto :goto_1

    .line 300
    .end local v1           #id:Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 301
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_videocall_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_videocall_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 307
    goto :goto_1

    .line 312
    .end local v1           #id:Ljava/lang/String;
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 313
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_outgoingcall_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_outgoingcall_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 319
    goto/16 :goto_1

    .line 325
    .end local v1           #id:Ljava/lang/String;
    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 326
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 328
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 332
    goto/16 :goto_1

    .line 337
    .end local v1           #id:Ljava/lang/String;
    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_5

    .line 338
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "call_reminder"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 340
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "call_reminder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 343
    goto/16 :goto_1

    .line 348
    .end local v1           #id:Ljava/lang/String;
    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    .line 349
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_ussd"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 351
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_ussd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 355
    goto/16 :goto_1

    .line 360
    .end local v1           #id:Ljava/lang/String;
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_7

    .line 361
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_reply_msg"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 363
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 364
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_reply_msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 367
    goto/16 :goto_1

    .line 373
    .end local v1           #id:Ljava/lang/String;
    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 374
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 376
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 380
    goto/16 :goto_1

    .line 384
    .end local v1           #id:Ljava/lang/String;
    :sswitch_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 385
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_cdma"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 387
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 388
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_cdma"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 391
    goto/16 :goto_1

    .line 395
    .end local v1           #id:Ljava/lang/String;
    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_a

    .line 396
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_sim2"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 398
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_sim2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 402
    goto/16 :goto_1

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_9
        0x12 -> :sswitch_9
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method public getDatabase(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 172
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    .line 174
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 184
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    .line 186
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 196
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 197
    :catch_3
    move-exception v0

    .line 198
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 208
    :try_start_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder:Lcom/android/phone/callsettings/CallReminderDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 209
    :catch_4
    move-exception v0

    .line 210
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 223
    :try_start_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 224
    :catch_5
    move-exception v0

    .line 225
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 236
    :try_start_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall:Lcom/android/phone/callsettings/IpCallDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 237
    :catch_6
    move-exception v0

    .line 238
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 247
    :try_start_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 248
    :catch_7
    move-exception v0

    .line 249
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 258
    :try_start_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallSim2:Lcom/android/phone/callsettings/IpCallDBSim2;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 259
    :catch_8
    move-exception v0

    .line 260
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_5
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_8
        0x12 -> :sswitch_8
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.com.android.phone.callsettings"

    .line 446
    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.com.android.phone.callsettings"

    goto :goto_0

    .line 417
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x12 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 458
    const/4 v3, 0x0

    .line 460
    .local v3, newUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 649
    :goto_0
    return-object v4

    .line 464
    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 647
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v4, v3

    .line 649
    goto :goto_0

    .line 470
    :sswitch_0
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 471
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 474
    :cond_1
    const-string v5, "reject_match"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, MATCH_EQUAL:I
    const-string v5, "reject_match"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    .end local v0           #MATCH_EQUAL:I
    :cond_2
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 483
    .local v1, id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 485
    goto :goto_1

    .line 493
    .end local v1           #id:J
    :sswitch_1
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 494
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_3
    const-string v5, "reject_match"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 498
    const/4 v0, 0x0

    .line 499
    .restart local v0       #MATCH_EQUAL:I
    const-string v5, "reject_match"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    .end local v0           #MATCH_EQUAL:I
    :cond_4
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_videocall_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 506
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 508
    goto/16 :goto_1

    .line 515
    .end local v1           #id:J
    :sswitch_2
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_5

    .line 516
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 519
    :cond_5
    const-string v5, "reject_match"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 520
    const/4 v0, 0x0

    .line 521
    .restart local v0       #MATCH_EQUAL:I
    const-string v5, "reject_match"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    .end local v0           #MATCH_EQUAL:I
    :cond_6
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_outgoingcall_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 528
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 530
    goto/16 :goto_1

    .line 538
    .end local v1           #id:J
    :sswitch_3
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    .line 539
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 543
    :cond_7
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_msg"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 546
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 548
    goto/16 :goto_1

    .line 554
    .end local v1           #id:J
    :sswitch_4
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xf

    if-eq v5, v6, :cond_8

    .line 555
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 558
    :cond_8
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "call_reminder"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 561
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 562
    goto/16 :goto_1

    .line 569
    .end local v1           #id:J
    :sswitch_5
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_9

    .line 570
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 574
    :cond_9
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "register_ussd"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 577
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 579
    goto/16 :goto_1

    .line 586
    .end local v1           #id:J
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_a

    .line 587
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    :cond_a
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "register_reply_msg"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 594
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERREPLYMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 596
    goto/16 :goto_1

    .line 603
    .end local v1           #id:J
    :sswitch_7
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_b

    .line 604
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    :cond_b
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ip_call"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 611
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 613
    goto/16 :goto_1

    .line 618
    .end local v1           #id:J
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_c

    .line 619
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 623
    :cond_c
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ip_call_cdma"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 626
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 628
    goto/16 :goto_1

    .line 633
    .end local v1           #id:J
    :sswitch_9
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_d

    .line 634
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 638
    :cond_d
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ip_call_sim2"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 641
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_SIM2_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 643
    goto/16 :goto_1

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_9
        0x12 -> :sswitch_9
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 655
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 657
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_num"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 658
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_num/#"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 660
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_videocall_num"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 661
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_videocall_num/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 663
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_outgoingcall_num"

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 664
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_outgoingcall_num/#"

    const/16 v4, 0x65

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 666
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_msg"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 667
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_msg/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 670
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "call_reminder"

    const/16 v4, 0xf

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 671
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "call_reminder/#"

    const/16 v4, 0x10

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 674
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_ussd"

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 675
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_ussd/#"

    const/16 v4, 0xc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 677
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_reply_msg"

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 678
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_reply_msg/#"

    const/16 v4, 0xe

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 681
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 682
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 683
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call_sim2"

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 684
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call_sim2/#"

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 685
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call_cdma"

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 686
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call_cdma/#"

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 689
    new-instance v1, Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    .line 690
    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    .line 697
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, buildcarrier:Ljava/lang/String;
    new-instance v1, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    .line 700
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    .line 702
    new-instance v1, Lcom/android/phone/callsettings/CallReminderDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/CallReminderDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder:Lcom/android/phone/callsettings/CallReminderDB;

    .line 704
    new-instance v1, Lcom/android/phone/callsettings/RegisterUssdDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/RegisterUssdDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

    .line 707
    new-instance v1, Lcom/android/phone/callsettings/IpCallDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/IpCallDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall:Lcom/android/phone/callsettings/IpCallDB;

    .line 708
    new-instance v1, Lcom/android/phone/callsettings/IpCallDBSim2;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/IpCallDBSim2;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallSim2:Lcom/android/phone/callsettings/IpCallDBSim2;

    .line 709
    new-instance v1, Lcom/android/phone/callsettings/IpCallCdmaDB;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/IpCallCdmaDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

    .line 711
    const/4 v1, 0x0

    return v1
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 772
    const-string v0, "LOWMEMORY"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    .line 773
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 775
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 780
    :cond_0
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 785
    const/4 v8, 0x0

    .line 787
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x0

    .line 925
    :goto_0
    return-object v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 921
    :goto_1
    if-eqz v8, :cond_1

    .line 922
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    move-object v0, v8

    .line 925
    goto :goto_0

    .line 794
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 795
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 796
    .local v9, id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 801
    .end local v9           #id:J
    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_num"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 803
    goto :goto_1

    .line 807
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 808
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 809
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 814
    .end local v9           #id:J
    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_videocall_num"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 816
    goto :goto_1

    .line 820
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 821
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 822
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 827
    .end local v9           #id:J
    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_outgoingcall_num"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 829
    goto/16 :goto_1

    .line 833
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 834
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 835
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 837
    .end local v9           #id:J
    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_msg"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 839
    goto/16 :goto_1

    .line 844
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 845
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 846
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 848
    .end local v9           #id:J
    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "call_reminder"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 850
    goto/16 :goto_1

    .line 863
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 864
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 865
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 869
    .end local v9           #id:J
    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "register_ussd"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 872
    goto/16 :goto_1

    .line 877
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_8

    .line 878
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 879
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 883
    .end local v9           #id:J
    :cond_8
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "register_reply_msg"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 886
    goto/16 :goto_1

    .line 891
    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 892
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 893
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 895
    .end local v9           #id:J
    :cond_9
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ip_call"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 897
    goto/16 :goto_1

    .line 900
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 901
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 902
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 904
    .end local v9           #id:J
    :cond_a
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ip_call_cdma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 906
    goto/16 :goto_1

    .line 909
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_b

    .line 910
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 911
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 913
    .end local v9           #id:J
    :cond_b
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ip_call_sim2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_1

    .line 791
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_9
        0x12 -> :sswitch_9
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x1

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 935
    const/4 v0, 0x0

    .line 1072
    :goto_0
    return v0

    .line 938
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1066
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 943
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 944
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1070
    .local v0, count:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 947
    .end local v0           #count:I
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 948
    .local v1, id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 951
    .restart local v0       #count:I
    goto :goto_1

    .line 957
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 958
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_videocall_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_1

    .line 961
    .end local v0           #count:I
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 962
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_videocall_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 965
    .restart local v0       #count:I
    goto :goto_1

    .line 971
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    .line 972
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_outgoingcall_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_1

    .line 975
    .end local v0           #count:I
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 976
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_outgoingcall_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 979
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 985
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 986
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_1

    .line 988
    .end local v0           #count:I
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 989
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 992
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 998
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_4
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5

    .line 999
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "call_reminder"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1001
    .end local v0           #count:I
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1002
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "call_reminder"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1005
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1011
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_5
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 1012
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_ussd"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1014
    .end local v0           #count:I
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1015
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_ussd"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1018
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1023
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_6
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    .line 1024
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_reply_msg"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1026
    .end local v0           #count:I
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1027
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_reply_msg"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1030
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1036
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_7
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    .line 1037
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1039
    .end local v0           #count:I
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1040
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1043
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1046
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_8
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    .line 1047
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_cdma"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1049
    .end local v0           #count:I
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1050
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_cdma"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1053
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1056
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_9
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_a

    .line 1057
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_sim2"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_1

    .line 1059
    .end local v0           #count:I
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1060
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_sim2"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1063
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 938
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_9
        0x12 -> :sswitch_9
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
