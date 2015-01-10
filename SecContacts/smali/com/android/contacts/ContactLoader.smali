.class public Lcom/android/contacts/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactLoader$1;,
        Lcom/android/contacts/ContactLoader$BuddyChatOnQuery;,
        Lcom/android/contacts/ContactLoader$MyChatOnQuery;,
        Lcom/android/contacts/ContactLoader$BlackQuery;,
        Lcom/android/contacts/ContactLoader$GroupQuery;,
        Lcom/android/contacts/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/ContactLoader$SecGalQuery;,
        Lcom/android/contacts/ContactLoader$ContactQuery;,
        Lcom/android/contacts/ContactLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/ContactLoader$Result;


# instance fields
.field private mContact:Lcom/android/contacts/ContactLoader$Result;

.field private mLoadGroupMetaData:Z

.field private mLoadInvitableAccountTypes:Z

.field private mLoadStreamItems:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverBlackMsg:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverBlackVideoCall:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverVib:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mPostViewNotification:Z

.field private mRequestedUri:Landroid/net/Uri;

.field private mVibUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-class v0, Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/ContactLoader;->DEBUG:Z

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/ContactLoader;->sCachedResult:Lcom/android/contacts/ContactLoader$Result;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "context"
    .parameter "lookupUri"
    .parameter "postViewNotification"

    .prologue
    const/4 v3, 0x0

    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .locals 1
    .parameter "context"
    .parameter "lookupUri"
    .parameter "loadGroupMetaData"
    .parameter "loadStreamItems"
    .parameter "loadInvitableAccountTypes"
    .parameter "postViewNotification"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 123
    iput-object p2, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 124
    iput-object p2, p0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 125
    iput-boolean p3, p0, Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z

    .line 126
    iput-boolean p4, p0, Lcom/android/contacts/ContactLoader;->mLoadStreamItems:Z

    .line 127
    iput-boolean p5, p0, Lcom/android/contacts/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 128
    iput-boolean p6, p0, Lcom/android/contacts/ContactLoader;->mPostViewNotification:Z

    .line 129
    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1347
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1361
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :pswitch_1
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1363
    :goto_0
    :pswitch_2
    return-void

    .line 1355
    :pswitch_3
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1358
    :pswitch_4
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private loadAccountInfo(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    .line 1472
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1474
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/contacts/ContactLoader$Result;->access$800(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    .line 1475
    .local v4, entity:Landroid/content/Entity;
    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 1476
    .local v3, entValues:Landroid/content/ContentValues;
    const-string v7, "account_type"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, accountType:Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .local v2, dataSet:Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v6

    .line 1479
    .local v6, type:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v6}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v7

    if-eqz v7, :cond_1

    #calls: Lcom/android/contacts/ContactLoader$Result;->setAreWritableAccount(Z)V
    invoke-static {p1, v8}, Lcom/android/contacts/ContactLoader$Result;->access$900(Lcom/android/contacts/ContactLoader$Result;Z)V

    .line 1480
    :cond_1
    const-string v7, "plus"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    #calls: Lcom/android/contacts/ContactLoader$Result;->setIsGooglePlus(Z)V
    invoke-static {p1, v8}, Lcom/android/contacts/ContactLoader$Result;->access$1000(Lcom/android/contacts/ContactLoader$Result;Z)V

    goto :goto_0

    .line 1482
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #entValues:Landroid/content/ContentValues;
    .end local v4           #entity:Landroid/content/Entity;
    .end local v6           #type:Lcom/android/contacts/model/AccountType;
    :cond_2
    return-void
.end method

.method private loadBlackListData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 1455
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/ContactLoader$BlackQuery;->BlACK_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactLoader$BlackQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "reject_checked=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1457
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1461
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1463
    .local v7, data:Ljava/lang/String;
    #calls: Lcom/android/contacts/ContactLoader$Result;->addBlackListData(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/contacts/ContactLoader$Result;->access$700(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1466
    .end local v7           #data:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 21
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 1047
    const-string v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1048
    .local v3, entityUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1050
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1051
    sget-object v2, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    const-string v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader$Result;->access$200(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v18

    .line 1094
    :goto_0
    return-object v18

    .line 1056
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1057
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader$Result;->access$200(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 1094
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1062
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/contacts/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v18

    .line 1066
    .local v18, result:Lcom/android/contacts/ContactLoader$Result;
    const-wide/16 v8, -0x1

    .line 1067
    .local v8, currentRawContactId:J
    const/4 v15, 0x0

    .line 1068
    .local v15, entity:Landroid/content/Entity;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v14

    .line 1069
    .local v14, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v20

    .line 1070
    .local v20, statuses:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Lcom/android/contacts/util/DataStatus;>;"
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1071
    const/16 v2, 0xe

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1072
    .local v16, rawContactId:J
    cmp-long v2, v16, v8

    if-eqz v2, :cond_2

    .line 1075
    move-wide/from16 v8, v16

    .line 1076
    new-instance v15, Landroid/content/Entity;

    .end local v15           #entity:Landroid/content/Entity;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/contacts/ContactLoader;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1077
    .restart local v15       #entity:Landroid/content/Entity;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_2
    const/16 v2, 0x1c

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1080
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/contacts/ContactLoader;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v11

    .line 1081
    .local v11, data:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1083
    const/16 v2, 0x36

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x38

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1085
    :cond_3
    new-instance v19, Lcom/android/contacts/util/DataStatus;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 1086
    .local v19, status:Lcom/android/contacts/util/DataStatus;
    const/16 v2, 0x1c

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1087
    .local v12, dataId:J
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v13, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1070
    .end local v11           #data:Landroid/content/ContentValues;
    .end local v12           #dataId:J
    .end local v19           #status:Lcom/android/contacts/util/DataStatus;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1094
    .end local v8           #currentRawContactId:J
    .end local v14           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v15           #entity:Landroid/content/Entity;
    .end local v16           #rawContactId:J
    .end local v18           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v20           #statuses:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Lcom/android/contacts/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v8       #currentRawContactId:J
    .restart local v14       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v15       #entity:Landroid/content/Entity;
    .restart local v18       #result:Lcom/android/contacts/ContactLoader$Result;
    .restart local v20       #statuses:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Lcom/android/contacts/util/DataStatus;>;"
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 41
    .parameter "cursor"
    .parameter "contactUri"

    .prologue
    .line 1186
    const-string v1, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1188
    .local v38, directoryParameter:Ljava/lang/String;
    if-nez v38, :cond_5

    const-wide/16 v8, 0x0

    .line 1191
    .local v8, directoryId:J
    :goto_0
    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1192
    .local v11, contactId:J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1193
    .local v10, lookupKey:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1194
    .local v13, nameRawContactId:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1195
    .local v15, displayNameSource:I
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1196
    .local v19, displayName:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1197
    .local v20, altDisplayName:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1198
    .local v21, phoneticName:Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1199
    .local v16, photoId:J
    const/16 v1, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1200
    .local v18, photoUri:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v22, 0x1

    .line 1201
    .local v22, starred:Z
    :goto_1
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v23, 0x0

    .line 1204
    .local v23, presence:Ljava/lang/Integer;
    :goto_2
    const/16 v1, 0x3e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/16 v24, 0x1

    .line 1205
    .local v24, sendToVoicemail:Z
    :goto_3
    const/16 v1, 0x3f

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1206
    .local v25, customRingtone:Ljava/lang/String;
    const/16 v1, 0x43

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1207
    .local v31, customAlerttone:Ljava/lang/String;
    const/16 v1, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const/16 v26, 0x1

    .line 1209
    .local v26, isUserProfile:Z
    :goto_4
    const/16 v1, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v27, 0x0

    .line 1214
    .local v27, isSim:Z
    :goto_5
    const-string v1, "vnd.sec.contact.sim2"

    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int v27, v27, v1

    .line 1216
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    const/16 v1, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v27, 0x0

    .line 1224
    :cond_0
    :goto_6
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1

    cmp-long v1, v8, v1

    if-nez v1, :cond_e

    .line 1225
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1232
    .local v7, lookupUri:Landroid/net/Uri;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0277

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1233
    .local v28, customRingtoneName:Ljava/lang/String;
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1234
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    .line 1235
    .local v40, ringtoneUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v40

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v39

    .line 1236
    .local v39, ringtone:Landroid/media/Ringtone;
    if-eqz v39, :cond_2

    .line 1237
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 1242
    .end local v39           #ringtone:Landroid/media/Ringtone;
    .end local v40           #ringtoneUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0277

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1243
    .local v32, customAlerttoneName:Ljava/lang/String;
    if-eqz v31, :cond_3

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1244
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    .line 1245
    .local v36, alerttoneUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v36

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v35

    .line 1246
    .local v35, alerttone:Landroid/media/Ringtone;
    if-eqz v35, :cond_3

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v35

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    .line 1251
    .end local v35           #alerttone:Landroid/media/Ringtone;
    .end local v36           #alerttoneUri:Landroid/net/Uri;
    :cond_3
    const-string v34, "vibration_name"

    .line 1252
    .local v34, VIBRATION_NAME:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vibration_name"

    aput-object v2, v3, v1

    .line 1254
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d02c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1255
    .local v29, customVibrationName:Ljava/lang/String;
    const/16 v1, 0x42

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1256
    .local v30, customVibrationUri:Ljava/lang/String;
    if-eqz v30, :cond_4

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 1259
    .local v37, c:Landroid/database/Cursor;
    if-eqz v37, :cond_f

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_f

    .line 1260
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    .line 1261
    const-string v1, "vibration_name"

    move-object/from16 v0, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1265
    :goto_8
    if-eqz v37, :cond_4

    .line 1266
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 1269
    .end local v37           #c:Landroid/database/Cursor;
    :cond_4
    new-instance v4, Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    const/16 v33, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v33}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/ContactLoader$1;)V

    return-object v4

    .line 1188
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #lookupUri:Landroid/net/Uri;
    .end local v8           #directoryId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    .end local v11           #contactId:J
    .end local v13           #nameRawContactId:J
    .end local v15           #displayNameSource:I
    .end local v16           #photoId:J
    .end local v18           #photoUri:Ljava/lang/String;
    .end local v19           #displayName:Ljava/lang/String;
    .end local v20           #altDisplayName:Ljava/lang/String;
    .end local v21           #phoneticName:Ljava/lang/String;
    .end local v22           #starred:Z
    .end local v23           #presence:Ljava/lang/Integer;
    .end local v24           #sendToVoicemail:Z
    .end local v25           #customRingtone:Ljava/lang/String;
    .end local v26           #isUserProfile:Z
    .end local v27           #isSim:Z
    .end local v28           #customRingtoneName:Ljava/lang/String;
    .end local v29           #customVibrationName:Ljava/lang/String;
    .end local v30           #customVibrationUri:Ljava/lang/String;
    .end local v31           #customAlerttone:Ljava/lang/String;
    .end local v32           #customAlerttoneName:Ljava/lang/String;
    .end local v34           #VIBRATION_NAME:Ljava/lang/String;
    :cond_5
    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto/16 :goto_0

    .line 1200
    .restart local v8       #directoryId:J
    .restart local v10       #lookupKey:Ljava/lang/String;
    .restart local v11       #contactId:J
    .restart local v13       #nameRawContactId:J
    .restart local v15       #displayNameSource:I
    .restart local v16       #photoId:J
    .restart local v18       #photoUri:Ljava/lang/String;
    .restart local v19       #displayName:Ljava/lang/String;
    .restart local v20       #altDisplayName:Ljava/lang/String;
    .restart local v21       #phoneticName:Ljava/lang/String;
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1201
    .restart local v22       #starred:Z
    :cond_7
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    goto/16 :goto_2

    .line 1204
    .restart local v23       #presence:Ljava/lang/Integer;
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 1207
    .restart local v24       #sendToVoicemail:Z
    .restart local v25       #customRingtone:Ljava/lang/String;
    .restart local v31       #customAlerttone:Ljava/lang/String;
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 1209
    .restart local v26       #isUserProfile:Z
    :cond_a
    const-string v1, "vnd.sec.contact.sim"

    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    goto/16 :goto_5

    .line 1217
    .restart local v27       #isSim:Z
    :cond_b
    const-string v1, "vnd.sec.contact.sim"

    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "vnd.sec.contact.sim2"

    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const/16 v27, 0x1

    goto/16 :goto_6

    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 1228
    :cond_e
    move-object/from16 v7, p2

    .restart local v7       #lookupUri:Landroid/net/Uri;
    goto/16 :goto_7

    .line 1263
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v28       #customRingtoneName:Ljava/lang/String;
    .restart local v29       #customVibrationName:Ljava/lang/String;
    .restart local v30       #customVibrationUri:Ljava/lang/String;
    .restart local v32       #customAlerttoneName:Ljava/lang/String;
    .restart local v34       #VIBRATION_NAME:Ljava/lang/String;
    .restart local v37       #c:Landroid/database/Cursor;
    :cond_f
    const/16 v30, 0x0

    goto :goto_8
.end method

.method private loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1312
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1314
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1315
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1316
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1317
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1318
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1319
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1320
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1321
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1322
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1323
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1324
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1325
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1326
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1327
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1328
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1329
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1330
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1331
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1332
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1333
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1334
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1335
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1336
    const/16 v1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1337
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1338
    const/16 v1, 0x35

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1339
    const/16 v1, 0x37

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1340
    const/16 v1, 0x41

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1342
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 16
    .parameter "result"

    .prologue
    .line 1366
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v7

    .line 1368
    .local v7, directoryId:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v14, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1371
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1375
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, displayName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1378
    .local v10, packageName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1379
    .local v13, typeResourceId:I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1380
    .local v3, accountType:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1381
    .local v4, accountName:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1382
    .local v5, exportSupport:I
    const/4 v2, 0x0

    .line 1383
    .local v2, directoryType:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 1386
    .local v11, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 1387
    .local v12, resources:Landroid/content/res/Resources;
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    .line 1394
    :try_start_2
    #calls: Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactLoader$Result;->access$600(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1398
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #directoryType:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #exportSupport:I
    .end local v10           #packageName:Ljava/lang/String;
    .end local v13           #typeResourceId:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1388
    .restart local v1       #displayName:Ljava/lang/String;
    .restart local v2       #directoryType:Ljava/lang/String;
    .restart local v3       #accountType:Ljava/lang/String;
    .restart local v4       #accountName:Ljava/lang/String;
    .restart local v5       #exportSupport:I
    .restart local v10       #packageName:Ljava/lang/String;
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    .restart local v13       #typeResourceId:I
    :catch_0
    move-exception v9

    .line 1389
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v0, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Contact directory resource not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1398
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #directoryType:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #exportSupport:I
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v13           #typeResourceId:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadGalData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 16
    .parameter "result"

    .prologue
    .line 1404
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1405
    .local v1, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    const-string v4, "entities"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1406
    .local v2, entityUri:Landroid/net/Uri;
    sget-object v3, Lcom/android/contacts/ContactLoader$SecGalQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1408
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1409
    sget-object v3, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    const-string v4, "No cursor returned in loadGalData"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :goto_0
    return-void

    .line 1414
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1415
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1419
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1420
    const/16 v3, 0xb

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1421
    .local v13, galPhoto:Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 1422
    const/4 v14, 0x0

    .line 1425
    .local v14, galPhotoDataByte:[B
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v13, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    .line 1426
    move-object/from16 v0, p1

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, v14}, Lcom/android/contacts/ContactLoader$Result;->access$300(Lcom/android/contacts/ContactLoader$Result;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1430
    const/4 v14, 0x0

    .line 1431
    const/4 v13, 0x0

    .line 1435
    .end local v14           #galPhotoDataByte:[B
    :cond_2
    :goto_2
    const/4 v3, 0x7

    :try_start_3
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1436
    .local v12, galCompany:Ljava/lang/String;
    const/16 v3, 0x8

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1438
    .local v15, galTitle:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    .line 1439
    .local v10, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 1440
    .local v11, entity:Landroid/content/Entity;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1441
    .local v8, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1442
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v3, "data1"

    invoke-virtual {v8, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v3, "data4"

    invoke-virtual {v8, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v3, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1419
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1449
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v10           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v11           #entity:Landroid/content/Entity;
    .end local v12           #galCompany:Ljava/lang/String;
    .end local v13           #galPhoto:Ljava/lang/String;
    .end local v15           #galTitle:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1427
    .restart local v13       #galPhoto:Ljava/lang/String;
    .restart local v14       #galPhotoDataByte:[B
    :catch_0
    move-exception v9

    .line 1428
    .local v9, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1430
    const/4 v14, 0x0

    .line 1431
    const/4 v13, 0x0

    .line 1432
    goto :goto_2

    .line 1430
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    const/4 v14, 0x0

    .line 1431
    const/4 v13, 0x0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1449
    .end local v13           #galPhoto:Ljava/lang/String;
    .end local v14           #galPhotoDataByte:[B
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 26
    .parameter "result"

    .prologue
    .line 1489
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    .local v21, selection:Ljava/lang/StringBuilder;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v22, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->access$800(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity;

    .line 1492
    .local v14, entity:Landroid/content/Entity;
    invoke-virtual {v14}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 1495
    .local v24, values:Landroid/content/ContentValues;
    const-string v2, "vnd.sec.contact.agg.account_name"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1496
    .local v3, accountName:Ljava/lang/String;
    const-string v2, "vnd.sec.contact.agg.account_type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1497
    .local v4, accountType:Ljava/lang/String;
    const-string v2, "data_set"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1498
    .local v5, dataSet:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1499
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1500
    const-string v2, " OR "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    :cond_1
    const-string v2, "(account_name=? AND account_type=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    if-eqz v5, :cond_2

    .line 1508
    const-string v2, " AND data_set=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    :goto_1
    const-string v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1511
    :cond_2
    const-string v2, " AND data_set IS NULL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1516
    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #dataSet:Ljava/lang/String;
    .end local v14           #entity:Landroid/content/Entity;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    .local v16, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/GroupMetaData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1520
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .local v13, emergencyGroupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v11, :cond_4

    .line 1524
    sget-object v2, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    const-string v25, "No cursor returned in loadGroupMetaData"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #setter for: Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$1102(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1576
    .end local v17           #i$:Ljava/util/Iterator;
    :goto_2
    return-void

    .line 1530
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1531
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1532
    .restart local v3       #accountName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1533
    .restart local v4       #accountType:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1534
    .restart local v5       #dataSet:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1535
    .local v6, groupId:J
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1536
    .local v8, title:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v9, 0x0

    .line 1539
    .local v9, defaultGroup:Z
    :goto_4
    const/4 v2, 0x7

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v10, 0x0

    .line 1544
    .local v10, favorites:Z
    :goto_5
    const-string v2, "ICE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1545
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    :cond_5
    new-instance v2, Lcom/android/contacts/GroupMetaData;

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1552
    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #dataSet:Ljava/lang/String;
    .end local v6           #groupId:J
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #defaultGroup:Z
    .end local v10           #favorites:Z
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1536
    .restart local v3       #accountName:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    .restart local v5       #dataSet:Ljava/lang/String;
    .restart local v6       #groupId:J
    .restart local v8       #title:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x6

    :try_start_1
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 1539
    .restart local v9       #defaultGroup:Z
    :cond_8
    const/4 v2, 0x7

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 1552
    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #dataSet:Ljava/lang/String;
    .end local v6           #groupId:J
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #defaultGroup:Z
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1556
    const/4 v2, 0x0

    move-object/from16 v0, p1

    #setter for: Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z
    invoke-static {v0, v2}, Lcom/android/contacts/ContactLoader$Result;->access$1202(Lcom/android/contacts/ContactLoader$Result;Z)Z

    .line 1557
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity;

    .line 1558
    .restart local v14       #entity:Landroid/content/Entity;
    invoke-virtual {v14}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_c
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Entity$NamedContentValues;

    .line 1559
    .local v23, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v23

    iget-object v15, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1560
    .local v15, entryValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1562
    .local v20, mimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    #getter for: Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->access$1200(Lcom/android/contacts/ContactLoader$Result;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1564
    const-string v2, "data1"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 1565
    .local v6, groupId:Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 1566
    .local v12, emergencyGroupId:Ljava/lang/Long;
    if-ne v12, v6, :cond_d

    .line 1567
    const/4 v2, 0x1

    move-object/from16 v0, p1

    #setter for: Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z
    invoke-static {v0, v2}, Lcom/android/contacts/ContactLoader$Result;->access$1202(Lcom/android/contacts/ContactLoader$Result;Z)Z

    goto :goto_6

    .line 1575
    .end local v6           #groupId:Ljava/lang/Long;
    .end local v12           #emergencyGroupId:Ljava/lang/Long;
    .end local v14           #entity:Landroid/content/Entity;
    .end local v15           #entryValues:Landroid/content/ContentValues;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #mimeType:Ljava/lang/String;
    .end local v23           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #setter for: Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$1102(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto/16 :goto_2
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 9
    .parameter "contactData"

    .prologue
    .line 1157
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1158
    .local v3, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1159
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 1161
    .local v2, invitables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1162
    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v4

    .line 1166
    .local v4, resultMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 1167
    .local v0, entity:Landroid/content/Entity;
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 1168
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "data_set"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v5

    .line 1171
    .local v5, type:Lcom/android/contacts/model/AccountTypeWithDataSet;
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1174
    .end local v0           #entity:Landroid/content/Entity;
    .end local v5           #type:Lcom/android/contacts/model/AccountTypeWithDataSet;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1179
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #invitables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    .end local v4           #resultMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    :cond_1
    #setter for: Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;
    invoke-static {p1, v3}, Lcom/android/contacts/ContactLoader$Result;->access$402(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1180
    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 21
    .parameter "contactData"

    .prologue
    .line 1105
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v15

    .line 1106
    .local v15, photoUri:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 1108
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const-string v20, "r"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 1110
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    const/16 v18, 0x4000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 1111
    .local v3, buffer:[B
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v9

    .line 1112
    .local v9, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, size:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1116
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1120
    .end local v16           #size:I
    :catchall_0
    move-exception v18

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1121
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1124
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v18

    .line 1130
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoId()J

    move-result-wide v13

    .line 1131
    .local v13, photoId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gtz v18, :cond_3

    .line 1151
    .end local v13           #photoId:J
    :cond_1
    :goto_1
    return-void

    .line 1118
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v8       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v16       #size:I
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$300(Lcom/android/contacts/ContactLoader$Result;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1120
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1121
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1136
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v16           #size:I
    .restart local v13       #photoId:J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 1137
    .local v6, entity:Landroid/content/Entity;
    invoke-virtual {v6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 1138
    .local v17, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1139
    .local v7, entryValues:Landroid/content/ContentValues;
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1140
    .local v4, dataId:J
    cmp-long v18, v4, v13

    if-nez v18, :cond_5

    .line 1141
    const-string v18, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1143
    .local v12, mimeType:Ljava/lang/String;
    const-string v18, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1146
    const-string v18, "data15"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$300(Lcom/android/contacts/ContactLoader$Result;[B)V

    goto :goto_2
.end method

.method private loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1282
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1284
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1285
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1286
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1287
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1288
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1289
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1290
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1291
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1292
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1293
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1294
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1295
    const/16 v1, 0x1a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1296
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1297
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1298
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1299
    const/16 v1, 0x3f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1300
    const/16 v1, 0x42

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1301
    const/16 v1, 0x43

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1303
    return-object v0
.end method

.method private loadStreamItems(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 25
    .parameter "result"

    .prologue
    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "stream_items"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1587
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v24, Landroid/util/LongSparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/LongSparseArray;-><init>()V

    .line 1589
    .local v24, streamItemsById:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Lcom/android/contacts/util/StreamItemEntry;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v23, streamItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/util/StreamItemEntry;>;"
    if-eqz v9, :cond_1

    .line 1592
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1593
    new-instance v19, Lcom/android/contacts/util/StreamItemEntry;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/android/contacts/util/StreamItemEntry;-><init>(Landroid/database/Cursor;)V

    .line 1594
    .local v19, streamItem:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v3

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1595
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1599
    .end local v19           #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_0

    .line 1600
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 1599
    :cond_1
    if-eqz v9, :cond_2

    .line 1600
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1605
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1606
    .local v17, start:J
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/util/StreamItemEntry;

    .line 1607
    .restart local v19       #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/util/StreamItemEntry;->decodeHtml(Landroid/content/Context;)V

    goto :goto_1

    .line 1609
    .end local v19           #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1610
    .local v10, end:J
    sget-boolean v3, Lcom/android/contacts/ContactLoader;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 1611
    sget-object v3, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoded HTML for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items, took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v10, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1617
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1620
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/util/StreamItemEntry;

    .line 1621
    .local v12, entry:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "photo"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1628
    .local v15, siCursor:Landroid/database/Cursor;
    :goto_3
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1629
    new-instance v3, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-direct {v3, v15}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v12, v3}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1632
    :catchall_1
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1636
    .end local v12           #entry:Lcom/android/contacts/util/StreamItemEntry;
    .end local v15           #siCursor:Landroid/database/Cursor;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 1637
    .local v7, streamItemIdArr:[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1638
    .local v22, streamItemPhotoSelection:Ljava/lang/StringBuilder;
    const-string v3, "stream_item_id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_8

    .line 1640
    if-lez v13, :cond_7

    .line 1641
    const-string v3, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    :cond_7
    const-string v3, "?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 1639
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1646
    :cond_8
    const-string v3, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$StreamItems;->CONTENT_PHOTO_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "stream_item_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1652
    .local v16, sipCursor:Landroid/database/Cursor;
    :cond_9
    :goto_5
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1653
    const-string v3, "stream_item_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1655
    .local v20, streamItemId:J
    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/util/StreamItemEntry;

    .line 1656
    .restart local v19       #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    if-eqz v19, :cond_9

    .line 1657
    new-instance v3, Lcom/android/contacts/util/StreamItemPhotoEntry;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    .line 1661
    .end local v19           #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    .end local v20           #streamItemId:J
    :catchall_2
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1667
    .end local v7           #streamItemIdArr:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #sipCursor:Landroid/database/Cursor;
    .end local v22           #streamItemPhotoSelection:Ljava/lang/StringBuilder;
    :cond_b
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1668
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    #setter for: Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$1302(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1669
    return-void
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 7

    .prologue
    .line 1739
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1740
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 1741
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1742
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1743
    iget-object v5, p0, Lcom/android/contacts/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1746
    iget-object v5, p0, Lcom/android/contacts/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1747
    const-string v5, "account_type"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1748
    const-string v6, "data_set"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1749
    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 1751
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v5

    .line 1752
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 1753
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1754
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1755
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1756
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    const-string v0, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    sget-object v3, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    const-string v4, "Error sending message to source-app"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1770
    :cond_1
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1848
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 1849
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1850
    iput-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_1

    .line 1854
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1855
    iput-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1858
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1860
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackVideoCall:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_2

    .line 1861
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackVideoCall:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1862
    iput-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackVideoCall:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1865
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackMsg:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_3

    .line 1866
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackMsg:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1867
    iput-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackMsg:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1871
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverVib:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_4

    .line 1872
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserverVib:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1873
    iput-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverVib:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1875
    :cond_4
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1673
    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->unregisterObserver()V

    .line 1676
    invoke-virtual {p0}, Landroid/content/Loader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    .line 1682
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1683
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 1684
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mVibUri:Landroid/net/Uri;

    .line 1687
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1688
    sget-object v0, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 1690
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1692
    :cond_2
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1695
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_3

    .line 1696
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1698
    :cond_3
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/ContactLoader$BlackQuery;->BlACK_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1701
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1703
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackVideoCall:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_4

    .line 1704
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackVideoCall:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1706
    :cond_4
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackVideoCall:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1709
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackMsg:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_5

    .line 1710
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackMsg:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1712
    :cond_5
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverBlackMsg:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1716
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mVibUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 1717
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverVib:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_7

    .line 1718
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverVib:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1720
    :cond_7
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mVibUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverVib:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1725
    :cond_8
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_9

    .line 1727
    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 1731
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    invoke-super {p0, v0}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1684
    :cond_a
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, Lcom/android/contacts/ContactLoader$Result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader;->deliverResult(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lcom/android/contacts/ContactLoader$Result;
    .locals 9

    .prologue
    .line 956
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 957
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 958
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v6}, Lcom/android/contacts/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 960
    .local v5, uriCurrentFormat:Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/ContactLoader;->sCachedResult:Lcom/android/contacts/ContactLoader$Result;

    .line 961
    .local v0, cachedResult:Lcom/android/contacts/ContactLoader$Result;
    const/4 v6, 0x0

    sput-object v6, Lcom/android/contacts/ContactLoader;->sCachedResult:Lcom/android/contacts/ContactLoader$Result;

    .line 965
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 969
    new-instance v3, Lcom/android/contacts/ContactLoader$Result;

    iget-object v6, p0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v0, v7}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/ContactLoader$1;)V

    .line 970
    .local v3, result:Lcom/android/contacts/ContactLoader$Result;
    const/4 v4, 0x1

    .line 975
    .local v4, resultIsCached:Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 976
    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 977
    if-nez v4, :cond_0

    .line 978
    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 979
    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadGalData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 986
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/contacts/ContactLoader;->mLoadStreamItems:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    .line 987
    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadStreamItems(Lcom/android/contacts/ContactLoader$Result;)V

    .line 989
    :cond_1
    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 990
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadBlackListData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 991
    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadAccountInfo(Lcom/android/contacts/ContactLoader$Result;)V

    .line 994
    iget-boolean v6, p0, Lcom/android/contacts/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getInvitableAccountTypes()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_3

    .line 995
    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadInvitableAccountTypes(Lcom/android/contacts/ContactLoader$Result;)V

    .line 1001
    .end local v0           #cachedResult:Lcom/android/contacts/ContactLoader$Result;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v4           #resultIsCached:Z
    .end local v5           #uriCurrentFormat:Landroid/net/Uri;
    :cond_3
    :goto_2
    return-object v3

    .line 972
    .restart local v0       #cachedResult:Lcom/android/contacts/ContactLoader$Result;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #uriCurrentFormat:Landroid/net/Uri;
    :cond_4
    invoke-direct {p0, v2, v5}, Lcom/android/contacts/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    .line 973
    .restart local v3       #result:Lcom/android/contacts/ContactLoader$Result;
    const/4 v4, 0x0

    .restart local v4       #resultIsCached:Z
    goto :goto_0

    .line 981
    :cond_5
    iget-boolean v6, p0, Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v6, :cond_0

    .line 982
    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_0

    .line 983
    invoke-direct {p0, v3}, Lcom/android/contacts/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 999
    .end local v0           #cachedResult:Lcom/android/contacts/ContactLoader$Result;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v4           #resultIsCached:Z
    .end local v5           #uriCurrentFormat:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1000
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/contacts/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading the contact: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    iget-object v6, p0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ContactLoader$Result;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v6, v1}, Lcom/android/contacts/ContactLoader$Result;->access$100(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    goto :goto_2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->loadInBackground()Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 1936
    invoke-super {p0}, Landroid/content/Loader;->onReset()V

    .line 1937
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 1938
    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->unregisterObserver()V

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    .line 1940
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactLoader;->deliverResult(Lcom/android/contacts/ContactLoader$Result;)V

    .line 1924
    :cond_0
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_2

    .line 1925
    :cond_1
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 1927
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 1931
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 1932
    return-void
.end method
