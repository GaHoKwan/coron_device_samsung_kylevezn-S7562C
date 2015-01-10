.class public Lcom/android/contacts/model/EntityDeltaList;
.super Ljava/util/ArrayList;
.source "EntityDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDeltaList;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "EntityDeltaList"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/model/EntityDeltaList;->VERBOSE_LOGGING:Z

    .line 425
    new-instance v0, Lcom/android/contacts/model/EntityDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/EntityDeltaList$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .locals 9
    .parameter
    .parameter "index1"
    .parameter "index2"
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, 0x0

    .line 256
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 258
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 260
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 261
    .local v3, rawContactId1:Ljava/lang/Long;
    aget v0, p4, p2

    .line 262
    .local v0, backRef1:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 263
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 270
    :goto_0
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 271
    .local v4, rawContactId2:Ljava/lang/Long;
    aget v1, p4, p3

    .line 272
    .local v1, backRef2:I
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 273
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 280
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v1           #backRef2:I
    .end local v4           #rawContactId2:Ljava/lang/Long;
    :cond_0
    return-void

    .line 264
    :cond_1
    if-ltz v0, :cond_0

    .line 265
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 274
    .restart local v1       #backRef2:I
    .restart local v4       #rawContactId2:Ljava/lang/Long;
    :cond_2
    if-ltz v1, :cond_0

    .line 275
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 3
    .parameter
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 243
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 244
    if-eq v1, v2, :cond_0

    .line 245
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    .line 243
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method private static diffToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "[\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 217
    .local v1, op:Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    .end local v1           #op:Landroid/content/ContentProviderOperation;
    :cond_0
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Entity;",
            ">;)",
            "Lcom/android/contacts/model/EntityDeltaList;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Entity;>;"
    new-instance v2, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v2}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 89
    .local v2, state:Lcom/android/contacts/model/EntityDeltaList;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 92
    .local v0, before:Landroid/content/Entity;
    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta;->fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    .line 93
    .local v1, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0           #before:Landroid/content/Entity;
    .end local v1           #entity:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    return-object v2
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 7
    .parameter "entityUri"
    .parameter "resolver"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 72
    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    .line 76
    .local v6, iterator:Landroid/content/EntityIterator;
    :try_start_0
    invoke-static {v6}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 78
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method public static fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 1
    .parameter "delta"

    .prologue
    .line 60
    new-instance v0, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 61
    .local v0, state:Lcom/android/contacts/model/EntityDeltaList;
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/EntityDeltaList;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 6
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 104
    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/model/EntityDeltaList;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 107
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 108
    .local v4, remoteEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 111
    .local v3, rawContactId:Ljava/lang/Long;
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    .line 112
    .local v1, localEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-static {v1, v4}, Lcom/android/contacts/model/EntityDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v2

    .line 114
    .local v2, merged:Lcom/android/contacts/model/EntityDelta;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v1           #localEntity:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #merged:Lcom/android/contacts/model/EntityDelta;
    .end local v3           #rawContactId:Ljava/lang/Long;
    .end local v4           #remoteEntity:Lcom/android/contacts/model/EntityDelta;
    :cond_2
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .prologue
    .line 229
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 231
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 232
    return-object v0
.end method

.method public buildDiff(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-boolean v19, Lcom/android/contacts/model/EntityDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v19, :cond_0

    .line 131
    const-string v19, "EntityDeltaList"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "buildDiff: list="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 135
    .local v7, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v15

    .line 136
    .local v15, rawContactId:J
    const/4 v9, -0x1

    .line 139
    .local v9, firstInsertRow:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta;

    .line 140
    .local v6, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 143
    .end local v6           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 144
    .local v3, assertMark:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v4, v0, [I

    .line 146
    .local v4, backRefs:[I
    const/16 v17, 0x0

    .line 149
    .local v17, rawContactIndex:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta;

    .line 150
    .restart local v6       #delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 151
    .local v8, firstBatch:I
    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v12

    .line 152
    .local v12, isInsert:Z
    add-int/lit8 v18, v17, 0x1

    .end local v17           #rawContactIndex:I
    .local v18, rawContactIndex:I
    if-eqz v12, :cond_2

    move/from16 v19, v8

    :goto_2
    aput v19, v4, v17

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0}, Lcom/android/contacts/model/EntityDelta;->buildDiff(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .local v2, arr$:[J
    array-length v14, v2

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_3
    if-ge v11, v14, :cond_4

    aget-wide v19, v2, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 160
    .local v13, joinedRawContactId:Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 161
    .local v5, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 162
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_3

    .line 163
    const-string v19, "raw_contact_id2"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 168
    :goto_4
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 152
    .end local v2           #arr$:[J
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #i$:I
    .end local v13           #joinedRawContactId:Ljava/lang/Long;
    .end local v14           #len$:I
    :cond_2
    const/16 v19, -0x1

    goto :goto_2

    .line 165
    .restart local v2       #arr$:[J
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #i$:I
    .restart local v13       #joinedRawContactId:Ljava/lang/Long;
    .restart local v14       #len$:I
    :cond_3
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 173
    .end local v2           #arr$:[J
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #i$:I
    .end local v13           #joinedRawContactId:Ljava/lang/Long;
    .end local v14           #len$:I
    :cond_4
    if-nez v12, :cond_5

    move/from16 v17, v18

    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto :goto_1

    .line 176
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move/from16 v17, v18

    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto :goto_1

    .line 178
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_6
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_7

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 181
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 182
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 183
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_5
    move/from16 v17, v18

    .line 197
    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto/16 :goto_1

    .line 185
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_8

    .line 187
    move v9, v8

    goto :goto_5

    .line 191
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 192
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 195
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 199
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v8           #firstBatch:I
    .end local v12           #isInsert:Z
    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 200
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 204
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 205
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 207
    :cond_b
    sget-boolean v19, Lcom/android/contacts/model/EntityDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v19, :cond_c

    .line 208
    const-string v19, "EntityDeltaList"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "buildDiff: ops="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v7}, Lcom/android/contacts/model/EntityDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_c
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 7

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 290
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 291
    .local v2, rawContactId:Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 292
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 295
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #rawContactId:Ljava/lang/Long;
    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 317
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    goto :goto_0
.end method

.method public getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/EntityDelta;
    .locals 2
    .parameter "context"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    .line 349
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3
    .parameter "index"

    .prologue
    .line 302
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 304
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 305
    .local v1, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 309
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v1           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOfFirstWritableRawContact(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, entityIndex:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 340
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v1           #entityIndex:I
    :goto_1
    return v1

    .line 341
    .restart local v0       #delta:Lcom/android/contacts/model/EntityDelta;
    .restart local v1       #entityIndex:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5
    .parameter "rawContactId"

    .prologue
    const/4 v3, -0x1

    .line 324
    if-nez p1, :cond_1

    move v1, v3

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 325
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 326
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 328
    .local v0, currentId:Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #currentId:Ljava/lang/Long;
    :cond_2
    move v1, v3

    .line 332
    goto :goto_0
.end method

.method public isMarkedForJoining()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 417
    .local v1, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 418
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 419
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    .line 423
    return-void

    .line 422
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0
    .parameter "rawContactIds"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "Split="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-boolean v1, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, ", Join=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v1, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, "], Values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 405
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 406
    .local v2, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 408
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 410
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 411
    iget-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    return-void

    .line 411
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
