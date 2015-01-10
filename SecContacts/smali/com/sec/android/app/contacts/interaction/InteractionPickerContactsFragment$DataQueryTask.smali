.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "InteractionPickerContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        "Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final DETAIL_DATA_PROJECTION:[Ljava/lang/String;

.field private isSelectAll:Z

.field private final mContext:Landroid/content/Context;

.field private mPartition:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .locals 3
    .parameter
    .parameter "target"

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 1282
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1263
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    .line 1283
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mContext:Landroid/content/Context;

    .line 1284
    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1342
    .local v0, stringBuilder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1373
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1345
    :sswitch_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1353
    :sswitch_1
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1360
    :sswitch_2
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1342
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
        0xbe -> :sswitch_1
        0x118 -> :sswitch_0
    .end sparse-switch
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "contactId"

    .prologue
    .line 1329
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 1295
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1297
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    aget-object v8, p2, v1

    .line 1298
    .local v8, targetContactId:Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p2, v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    .line 1299
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1300
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1311
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->nUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 1315
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v6

    .line 1305
    :cond_0
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1306
    .local v9, uri:Landroid/net/Uri;
    const-string v1, "entities"

    invoke-static {v9, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1307
    .local v7, entityUri:Landroid/net/Uri;
    iput-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    .line 1308
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->DETAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #entityUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    move-object v6, v4

    .line 1315
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1257
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .end local p1
    check-cast p2, [Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->doInBackground(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mPartition:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->isSelectAll:Z

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1323
    :cond_0
    if-eqz p2, :cond_1

    .line 1324
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1326
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1257
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .end local p1
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->onPostExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->isSelectAll:Z

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1290
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1257
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->onPreExecute(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    return-void
.end method
