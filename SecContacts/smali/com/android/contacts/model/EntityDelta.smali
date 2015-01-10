.class public Lcom/android/contacts/model/EntityDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDelta;",
            ">;"
        }
    .end annotation
.end field

.field public static mSIMNameLength:I


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    .line 1159
    new-instance v0, Lcom/android/contacts/model/EntityDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 95
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 95
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 101
    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 102
    return-void
.end method

.method private containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 5
    .parameter "entry"

    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 359
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 361
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 364
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;
    .locals 5
    .parameter "before"

    .prologue
    .line 109
    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 110
    .local v0, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 111
    iget-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 113
    .local v2, namedValues:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 115
    .end local v2           #namedValues:Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "mimeType"
    .parameter "lazyCreate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 247
    .local v0, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 248
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;
    .locals 10
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 126
    iget-object v7, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 127
    .local v7, remoteValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez p0, :cond_2

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 p0, 0x0

    .line 159
    .end local p0
    :cond_1
    return-object p0

    .line 130
    .restart local p0
    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/android/contacts/model/EntityDelta;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 141
    .restart local p0
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 144
    iget-object v8, p1, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 145
    .local v5, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 146
    .local v6, remoteEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 149
    .local v0, childId:Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 150
    .local v3, localEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v3, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 152
    .local v4, merged:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 154
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .parameter
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 405
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 3
    .parameter "entry"

    .prologue
    const/4 v2, 0x1

    .line 280
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, mimeType:Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 282
    .local v0, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v0, :cond_1

    .line 283
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    .line 285
    const/4 p1, 0x0

    .line 290
    .end local p1
    :goto_0
    return-object p1

    .line 286
    .restart local p1
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    .line 416
    .local v3, isContactInsert:Z
    if-nez v3, :cond_0

    .line 418
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 419
    .local v0, beforeId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 420
    .local v1, beforeVersion:Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 428
    .end local v0           #beforeId:Ljava/lang/Long;
    .end local v1           #beforeVersion:Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 422
    .restart local v0       #beforeId:Ljava/lang/Long;
    .restart local v1       #beforeVersion:Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 424
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 425
    const-string v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 426
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 17
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 438
    .local v7, firstIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    .line 439
    .local v11, isContactInsert:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    .line 440
    .local v10, isContactDelete:Z
    if-nez v11, :cond_2

    if-nez v10, :cond_2

    const/4 v12, 0x1

    .line 442
    .local v12, isContactUpdate:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    .line 446
    .local v4, beforeId:Ljava/lang/Long;
    if-eqz v11, :cond_0

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v15, "aggregation_mode"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 453
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, accountType:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v14, "vnd.sec.contact.sim"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 455
    invoke-virtual/range {p0 .. p2}, Lcom/android/contacts/model/EntityDelta;->buildDiffForSim(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 527
    :cond_1
    :goto_1
    return-void

    .line 440
    .end local v2           #accountType:Ljava/lang/String;
    .end local v4           #beforeId:Ljava/lang/Long;
    .end local v12           #isContactUpdate:Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 461
    .restart local v2       #accountType:Ljava/lang/String;
    .restart local v4       #beforeId:Ljava/lang/Long;
    .restart local v12       #isContactUpdate:Z
    :cond_3
    if-eqz v2, :cond_4

    const-string v14, "vnd.sec.contact.sim2"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 462
    invoke-virtual/range {p0 .. p2}, Lcom/android/contacts/model/EntityDelta;->buildDiffForSim2(Ljava/util/ArrayList;Landroid/content/Context;)V

    goto :goto_1

    .line 468
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 469
    .local v5, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 473
    .local v13, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 475
    .local v6, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v10, :cond_6

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 479
    sget-object v14, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "data"

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 490
    :cond_7
    :goto_3
    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "vnd.android.cursor.item/vibration"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "vnd.android.cursor.item/alerttone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 492
    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 493
    if-eqz v11, :cond_a

    .line 495
    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 505
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 506
    const/4 v5, 0x0

    goto :goto_2

    .line 483
    :cond_9
    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "vnd.android.cursor.item/vibration"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "vnd.android.cursor.item/alerttone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 485
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_3

    .line 498
    :cond_a
    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 500
    :cond_b
    if-eqz v11, :cond_8

    if-eqz v5, :cond_8

    .line 502
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "When parent insert, child must be also"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 510
    .end local v6           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v7, :cond_d

    const/4 v3, 0x1

    .line 511
    .local v3, addedOperations:Z
    :goto_5
    if-eqz v3, :cond_e

    if-eqz v12, :cond_e

    .line 513
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 514
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 517
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 518
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 510
    .end local v3           #addedOperations:Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 519
    .restart local v3       #addedOperations:Z
    :cond_e
    if-eqz v11, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 522
    const-string v14, "aggregation_mode"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 523
    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 524
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 525
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public buildDiffForSim(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 36
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 535
    .local v15, firstIndex:I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v9

    .line 537
    .local v9, anrConfigValue:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v5

    .line 538
    .local v5, isContactInsert:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    .line 539
    .local v6, isContactDelete:Z
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    const/4 v7, 0x1

    .line 541
    .local v7, isContactUpdate:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v10

    .line 546
    .local v10, beforeId:Ljava/lang/Long;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v4, values:Landroid/content/ContentValues;
    const/16 v33, 0x0

    .line 548
    .local v33, phoneforSim:Z
    const/16 v29, 0x0

    .line 549
    .local v29, nameforSim:Z
    const/4 v14, 0x0

    .line 552
    .local v14, emailforSim:Z
    const/4 v2, 0x4

    new-array v0, v2, [Z

    move-object/from16 v32, v0

    fill-array-data v32, :array_0

    .line 553
    .local v32, phoneforANR:[Z
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v26

    .line 555
    .local v26, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/16 v24, 0x1

    .line 556
    .local v24, isAnrFull:Z
    const/16 v18, 0x1

    .line 557
    .local v18, isAnrAFull:Z
    const/16 v20, 0x1

    .line 558
    .local v20, isAnrBFull:Z
    const/16 v22, 0x1

    .line 560
    .local v22, isAnrCFull:Z
    const/16 v25, 0x0

    .line 561
    .local v25, isAnrSupport:Z
    const/16 v19, 0x0

    .line 562
    .local v19, isAnrASupport:Z
    const/16 v21, 0x0

    .line 563
    .local v21, isAnrBSupport:Z
    const/16 v23, 0x0

    .line 565
    .local v23, isAnrCSupport:Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 566
    if-lez v9, :cond_0

    .line 567
    const/4 v2, 0x0

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v24

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v25

    .line 570
    :cond_0
    const/4 v2, 0x3

    if-le v9, v2, :cond_1

    .line 571
    const/4 v2, 0x1

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v18

    .line 572
    const/4 v2, 0x2

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v20

    .line 573
    const/4 v2, 0x3

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v22

    .line 575
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v19

    .line 576
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v21

    .line 577
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v23

    .line 595
    :cond_1
    :goto_1
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "buildDiffForSim :  isAnrFull = "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "buildDiffForSim :  isAnrAFull = "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "buildDiffForSim :  isAnrBFull = "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "buildDiffForSim :  isAnrCFull = "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v31, 0x0

    .line 602
    .local v31, phoneNumberCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 603
    .local v27, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 604
    .local v12, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v6, :cond_3

    .line 606
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v2, :cond_3

    .line 607
    const-string v2, "mimetype"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 608
    .local v34, str:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 609
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 611
    .local v28, name:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_a

    .line 612
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 615
    if-nez v28, :cond_8

    .line 616
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 617
    if-eqz v28, :cond_4

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_4

    .line 618
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 630
    :cond_4
    :goto_3
    const-string v2, "newTag"

    move-object/from16 v0, v28

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 539
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v7           #isContactUpdate:Z
    .end local v10           #beforeId:Ljava/lang/Long;
    .end local v12           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v14           #emailforSim:Z
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #isAnrAFull:Z
    .end local v19           #isAnrASupport:Z
    .end local v20           #isAnrBFull:Z
    .end local v21           #isAnrBSupport:Z
    .end local v22           #isAnrCFull:Z
    .end local v23           #isAnrCSupport:Z
    .end local v24           #isAnrFull:Z
    .end local v25           #isAnrSupport:Z
    .end local v26           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v27           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v28           #name:Ljava/lang/String;
    .end local v29           #nameforSim:Z
    .end local v31           #phoneNumberCount:I
    .end local v32           #phoneforANR:[Z
    .end local v33           #phoneforSim:Z
    .end local v34           #str:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 580
    .restart local v4       #values:Landroid/content/ContentValues;
    .restart local v7       #isContactUpdate:Z
    .restart local v10       #beforeId:Ljava/lang/Long;
    .restart local v14       #emailforSim:Z
    .restart local v18       #isAnrAFull:Z
    .restart local v19       #isAnrASupport:Z
    .restart local v20       #isAnrBFull:Z
    .restart local v21       #isAnrBSupport:Z
    .restart local v22       #isAnrCFull:Z
    .restart local v23       #isAnrCSupport:Z
    .restart local v24       #isAnrFull:Z
    .restart local v25       #isAnrSupport:Z
    .restart local v26       #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v29       #nameforSim:Z
    .restart local v32       #phoneforANR:[Z
    .restart local v33       #phoneforSim:Z
    :cond_6
    if-lez v9, :cond_7

    .line 581
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v24

    .line 582
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v25

    .line 584
    :cond_7
    const/4 v2, 0x3

    if-le v9, v2, :cond_1

    .line 585
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v18

    .line 586
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v20

    .line 587
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v22

    .line 589
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v19

    .line 590
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v21

    .line 591
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v23

    goto/16 :goto_1

    .line 621
    .restart local v12       #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v27       #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v28       #name:Ljava/lang/String;
    .restart local v31       #phoneNumberCount:I
    .restart local v34       #str:Ljava/lang/String;
    :cond_8
    if-eqz v28, :cond_4

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_4

    .line 622
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    goto :goto_3

    .line 626
    :cond_9
    if-nez v28, :cond_4

    .line 627
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto :goto_3

    .line 632
    :cond_a
    if-nez v28, :cond_b

    .line 633
    const-string v28, ""

    .line 635
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 638
    if-eqz v28, :cond_c

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_c

    .line 639
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 642
    :cond_c
    const-string v2, "tag"

    move-object/from16 v0, v28

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/16 v29, 0x1

    goto/16 :goto_2

    .line 645
    .end local v28           #name:Ljava/lang/String;
    :cond_d
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 646
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 647
    .local v30, phone:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_18

    .line 648
    if-nez v30, :cond_e

    .line 649
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 651
    :cond_e
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 652
    if-nez v31, :cond_f

    .line 653
    const-string v2, "newNumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_4
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 654
    :cond_f
    if-lez v9, :cond_10

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_10

    if-eqz v25, :cond_10

    .line 655
    const-string v2, "newAnrNumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 656
    :cond_10
    const/4 v2, 0x3

    if-le v9, v2, :cond_13

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_11

    if-nez v25, :cond_11

    if-nez v19, :cond_12

    :cond_11
    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_13

    if-eqz v19, :cond_13

    .line 659
    :cond_12
    const-string v2, "newAnrANumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 660
    :cond_13
    const/4 v2, 0x3

    if-le v9, v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_14

    if-nez v25, :cond_14

    if-nez v19, :cond_14

    if-nez v21, :cond_16

    :cond_14
    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_15

    if-nez v19, :cond_15

    if-nez v21, :cond_16

    :cond_15
    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_17

    if-eqz v21, :cond_17

    .line 664
    :cond_16
    const-string v2, "newAnrBNumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 666
    :cond_17
    const-string v2, "newAnrCNumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 670
    :cond_18
    if-nez v30, :cond_19

    .line 671
    const-string v30, ""

    .line 673
    :cond_19
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 674
    if-nez v31, :cond_1a

    .line 675
    const-string v2, "number"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const/16 v33, 0x1

    .line 696
    :goto_5
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 677
    :cond_1a
    if-lez v9, :cond_1b

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_1b

    if-nez v24, :cond_1b

    .line 679
    const-string v2, "AnrNumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v32, v2

    goto :goto_5

    .line 681
    :cond_1b
    const/4 v2, 0x3

    if-le v9, v2, :cond_1e

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_1c

    if-eqz v18, :cond_1d

    :cond_1c
    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_1e

    if-nez v18, :cond_1e

    .line 684
    :cond_1d
    const-string v2, "AnrANumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v32, v2

    goto :goto_5

    .line 686
    :cond_1e
    const/4 v2, 0x3

    if-le v9, v2, :cond_22

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_1f

    if-eqz v20, :cond_21

    :cond_1f
    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_20

    if-eqz v20, :cond_21

    :cond_20
    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_22

    if-nez v20, :cond_22

    .line 690
    :cond_21
    const-string v2, "AnrBNumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v32, v2

    goto :goto_5

    .line 693
    :cond_22
    const-string v2, "AnrCNumber"

    move-object/from16 v0, v30

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v32, v2

    goto :goto_5

    .line 698
    .end local v30           #phone:Ljava/lang/String;
    :cond_23
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 699
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 700
    .local v13, email:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_25

    .line 701
    if-nez v13, :cond_24

    .line 702
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 704
    :cond_24
    const-string v2, "newEmails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 706
    :cond_25
    if-nez v13, :cond_26

    .line 707
    const-string v13, ""

    .line 709
    :cond_26
    const-string v2, "emails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 716
    .end local v12           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #email:Ljava/lang/String;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v27           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v34           #str:Ljava/lang/String;
    :cond_27
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "buildDiffForSim : phoneNumberCount = "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v2, 0x1

    if-ne v5, v2, :cond_2e

    .line 719
    if-nez v29, :cond_28

    .line 720
    const-string v2, "tag"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_28
    if-nez v33, :cond_29

    .line 724
    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_29
    if-nez v14, :cond_2a

    .line 728
    const-string v2, "emails"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_2a
    if-lez v9, :cond_2e

    .line 732
    const/4 v2, 0x0

    aget-boolean v2, v32, v2

    if-nez v2, :cond_2b

    if-nez v24, :cond_2b

    .line 733
    const-string v2, "AnrNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_2b
    const/4 v2, 0x3

    if-le v9, v2, :cond_2e

    .line 737
    const/4 v2, 0x1

    aget-boolean v2, v32, v2

    if-nez v2, :cond_2c

    if-nez v18, :cond_2c

    .line 738
    const-string v2, "AnrANumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_2c
    const/4 v2, 0x2

    aget-boolean v2, v32, v2

    if-nez v2, :cond_2d

    if-nez v20, :cond_2d

    .line 741
    const-string v2, "AnrBNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_2d
    const/4 v2, 0x3

    aget-boolean v2, v32, v2

    if-nez v2, :cond_2e

    if-nez v22, :cond_2e

    .line 744
    const-string v2, "AnrCNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiffForSim(Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 753
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 755
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_30

    const/4 v8, 0x1

    .line 756
    .local v8, addedOperations:Z
    :goto_6
    if-eqz v8, :cond_2f

    if-eqz v7, :cond_2f

    .line 758
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 759
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 762
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 763
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_2f
    return-void

    .line 755
    .end local v8           #addedOperations:Z
    :cond_30
    const/4 v8, 0x0

    goto :goto_6

    .line 552
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public buildDiffForSim2(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 31
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 874
    .local v16, firstIndex:I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v10

    .line 876
    .local v10, anrConfigValue:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v5

    .line 877
    .local v5, isContactInsert:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    .line 878
    .local v6, isContactDelete:Z
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    const/4 v7, 0x1

    .line 880
    .local v7, isContactUpdate:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v11

    .line 881
    .local v11, beforeId:Ljava/lang/Long;
    const/4 v8, 0x1

    .line 886
    .local v8, SIM_ONE:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 887
    .local v4, values:Landroid/content/ContentValues;
    const/16 v28, 0x0

    .line 888
    .local v28, phoneforSim:Z
    const/16 v24, 0x0

    .line 889
    .local v24, nameforSim:Z
    const/4 v15, 0x0

    .line 891
    .local v15, emailforSim:Z
    const/4 v2, 0x4

    new-array v0, v2, [Z

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 892
    .local v27, phoneforANR:[Z
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v21

    .line 894
    .local v21, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/16 v19, 0x1

    .line 900
    .local v19, isAnrFull:Z
    const/16 v20, 0x0

    .line 907
    .local v20, isAnrSupport:Z
    if-lez v10, :cond_0

    .line 908
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v19

    .line 909
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported2(I)Z

    move-result v20

    .line 924
    :cond_0
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "buildDiffForSim2 : isAnrFull = "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/16 v26, 0x0

    .line 932
    .local v26, phoneNumberCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 933
    .local v22, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 934
    .local v13, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v6, :cond_2

    .line 936
    iget-object v2, v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v2, :cond_2

    .line 937
    const-string v2, "mimetype"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 938
    .local v29, str:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 939
    iget-object v2, v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 941
    .local v23, name:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_7

    .line 942
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 945
    if-nez v23, :cond_5

    .line 946
    const-string v2, "data1"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 947
    if-eqz v23, :cond_3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_3

    .line 948
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 960
    :cond_3
    :goto_2
    const-string v2, "newTag"

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 878
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v7           #isContactUpdate:Z
    .end local v8           #SIM_ONE:I
    .end local v11           #beforeId:Ljava/lang/Long;
    .end local v13           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v15           #emailforSim:Z
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #isAnrFull:Z
    .end local v20           #isAnrSupport:Z
    .end local v21           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v22           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #nameforSim:Z
    .end local v26           #phoneNumberCount:I
    .end local v27           #phoneforANR:[Z
    .end local v28           #phoneforSim:Z
    .end local v29           #str:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 951
    .restart local v4       #values:Landroid/content/ContentValues;
    .restart local v7       #isContactUpdate:Z
    .restart local v8       #SIM_ONE:I
    .restart local v11       #beforeId:Ljava/lang/Long;
    .restart local v13       #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v15       #emailforSim:Z
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v19       #isAnrFull:Z
    .restart local v20       #isAnrSupport:Z
    .restart local v21       #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v22       #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v23       #name:Ljava/lang/String;
    .restart local v24       #nameforSim:Z
    .restart local v26       #phoneNumberCount:I
    .restart local v27       #phoneforANR:[Z
    .restart local v28       #phoneforSim:Z
    .restart local v29       #str:Ljava/lang/String;
    :cond_5
    if-eqz v23, :cond_3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_3

    .line 952
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 956
    :cond_6
    if-nez v23, :cond_3

    .line 957
    const-string v2, "data1"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 962
    :cond_7
    if-nez v23, :cond_8

    .line 963
    const-string v23, ""

    .line 965
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 968
    if-eqz v23, :cond_9

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_9

    .line 969
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 972
    :cond_9
    const-string v2, "tag"

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 975
    .end local v23           #name:Ljava/lang/String;
    :cond_a
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 976
    iget-object v2, v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 977
    .local v25, phone:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_e

    .line 978
    if-nez v25, :cond_b

    .line 979
    const-string v2, "data1"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 981
    :cond_b
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 984
    if-nez v26, :cond_d

    .line 985
    const-string v2, "newNumber"

    move-object/from16 v0, v25

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_c
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 986
    :cond_d
    if-lez v10, :cond_c

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_c

    if-eqz v20, :cond_c

    .line 987
    const-string v2, "newAnrNumber"

    move-object/from16 v0, v25

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1005
    :cond_e
    if-nez v25, :cond_f

    .line 1006
    const-string v25, ""

    .line 1008
    :cond_f
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1011
    if-nez v26, :cond_11

    .line 1012
    const-string v2, "number"

    move-object/from16 v0, v25

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const/16 v28, 0x1

    .line 1033
    :cond_10
    :goto_4
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 1014
    :cond_11
    if-lez v10, :cond_10

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_10

    if-nez v19, :cond_10

    .line 1016
    const-string v2, "AnrNumber"

    move-object/from16 v0, v25

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v27, v2

    goto :goto_4

    .line 1039
    .end local v25           #phone:Ljava/lang/String;
    :cond_12
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    iget-object v2, v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1041
    .local v14, email:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_14

    .line 1042
    if-nez v14, :cond_13

    .line 1043
    const-string v2, "data1"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1045
    :cond_13
    const-string v2, "newEmails"

    invoke-virtual {v4, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1047
    :cond_14
    if-nez v14, :cond_15

    .line 1048
    const-string v14, ""

    .line 1050
    :cond_15
    const-string v2, "emails"

    invoke-virtual {v4, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1057
    .end local v13           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v14           #email:Ljava/lang/String;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v29           #str:Ljava/lang/String;
    :cond_16
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "buildDiffForSim2 : phoneNumberCount = "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1a

    .line 1060
    if-nez v24, :cond_17

    .line 1061
    const-string v2, "tag"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :cond_17
    if-nez v28, :cond_18

    .line 1065
    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_18
    if-nez v15, :cond_19

    .line 1069
    const-string v2, "emails"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_19
    if-lez v10, :cond_1a

    .line 1074
    const/4 v2, 0x0

    aget-boolean v2, v27, v2

    if-nez v2, :cond_1a

    if-nez v19, :cond_1a

    .line 1075
    const-string v2, "AnrNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "content://com.android.contacts/raw_contacts/adn2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiffForSim(Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 1097
    .local v12, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 1099
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_1c

    const/4 v9, 0x1

    .line 1100
    .local v9, addedOperations:Z
    :goto_5
    if-eqz v9, :cond_1b

    if-eqz v7, :cond_1b

    .line 1102
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 1103
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1106
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 1107
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_1b
    return-void

    .line 1099
    .end local v9           #addedOperations:Z
    :cond_1c
    const/4 v9, 0x0

    goto :goto_5

    .line 891
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "beforeId"
    .parameter "mode"

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1117
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1119
    return-object v0
.end method

.method public clearMimeEntries(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "object"

    .prologue
    const/4 v5, 0x0

    .line 338
    instance-of v6, p1, Lcom/android/contacts/model/EntityDelta;

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 339
    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 342
    .local v4, other:Lcom/android/contacts/model/EntityDelta;
    iget-object v6, v4, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 354
    .end local v4           #other:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    :goto_0
    return v5

    .line 344
    .restart local v4       #other:Lcom/android/contacts/model/EntityDelta;
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 345
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 347
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-direct {v4, v0}, Lcom/android/contacts/model/EntityDelta;->containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 352
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 295
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 296
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 297
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 298
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_2
    return-object v4
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "childId"

    .prologue
    const/4 v4, 0x0

    .line 309
    if-nez p1, :cond_0

    move-object v0, v4

    .line 322
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 316
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 317
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    move-object v0, v4

    .line 322
    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4
    .parameter "onlyVisible"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 333
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .parameter "mimeType"
    .parameter "onlyVisible"

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 260
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 268
    :cond_0
    return v1

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 263
    .local v1, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 265
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 175
    invoke-direct {p0, p1, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v3

    .line 178
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 179
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 180
    goto :goto_0

    .line 185
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/AccountType;
    .locals 4
    .parameter "context"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 232
    .local v1, entityValues:Landroid/content/ContentValues;
    const-string v3, "account_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, type:Ljava/lang/String;
    const-string v3, "data_set"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, dataSet:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    return-object v3
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta;->getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 7
    .parameter "mimeType"
    .parameter "forceSelection"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 204
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 205
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v4

    .line 207
    :cond_1
    const/4 v3, 0x0

    .line 208
    .local v3, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 209
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    .line 210
    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    move-object v3, v0

    goto :goto_1

    .line 216
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_4
    if-eqz p2, :cond_0

    .line 221
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 222
    goto :goto_0

    .line 224
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 371
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 372
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 373
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 374
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 377
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 1142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1143
    .local v2, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1144
    .local v3, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1145
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 1146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1147
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1148
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1150
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 1157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v5, "Uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    const-string v5, ", Values="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v5, ", Entries={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 389
    .local v4, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 390
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 386
    .end local v1           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    const-string v5, "null"

    goto :goto_0

    .line 394
    :cond_2
    const-string v5, "\n})\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1130
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta;->getEntryCount(Z)I

    move-result v4

    .line 1131
    .local v4, size:I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1133
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1134
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1135
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1136
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1139
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method
