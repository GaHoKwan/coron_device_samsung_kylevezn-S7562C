.class Lcom/android/mms/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static final DUMP:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/Conversation.Cache"

.field private static sInstance:Lcom/android/mms/data/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1284
    new-instance v0, Lcom/android/mms/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    .line 1294
    return-void
.end method

.method static dumpCache()V
    .locals 0

    .prologue
    .line 1359
    return-void
.end method

.method static get(J)Lcom/android/mms/data/Conversation;
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1301
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1303
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    monitor-exit v1

    return-object v0

    .line 1304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 7
    .parameter "list"

    .prologue
    const/4 v3, 0x0

    .line 1312
    sget-object v4, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v4

    .line 1313
    :try_start_0
    const-string v5, "Mms/Conversation.Cache"

    const-string v6, "get(ContactList)"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v4

    move-object v0, v3

    .line 1325
    :goto_0
    return-object v0

    .line 1316
    :cond_0
    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1318
    .local v1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1319
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1320
    monitor-exit v4

    goto :goto_0

    .line 1323
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    .end local v1           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 1325
    goto :goto_0
.end method

.method static getInstance()Lcom/android/mms/data/Conversation$Cache;
    .locals 1

    .prologue
    .line 1287
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1375
    .local p0, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v2, "Mms/Conversation.Cache"

    const-string v3, "keepOnly()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v3

    .line 1379
    :try_start_0
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1381
    .local v1, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1383
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1385
    .local v0, key:Ljava/lang/Long;
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1386
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1389
    .end local v0           #key:Ljava/lang/Long;
    .end local v1           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    return-void
.end method

.method static put(Lcom/android/mms/data/Conversation;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 1334
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 1336
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1338
    .local v0, threadId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    .line 1339
    const-string v1, "Mms/Conversation.Cache"

    const-string v3, "invalid threadID ignore put conversation cache"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :goto_0
    monitor-exit v2

    .line 1347
    return-void

    .line 1340
    :cond_0
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1341
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache already contains "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->access$600(Lcom/android/mms/data/Conversation;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1346
    .end local v0           #threadId:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1344
    .restart local v0       #threadId:Ljava/lang/Long;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static remove(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1350
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1352
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    monitor-exit v1

    .line 1354
    return-void

    .line 1353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
