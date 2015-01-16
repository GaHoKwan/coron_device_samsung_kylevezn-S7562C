.class public Lcom/sec/android/allshare/extension/UniqueItemArray;
.super Ljava/util/ArrayList;
.source "UniqueItemArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/android/allshare/Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccessLock:Ljava/lang/Object;

.field private mCurrentItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    return-void
.end method

.method private generateKey(Lcom/sec/android/allshare/Item;)Ljava/lang/String;
    .locals 4
    .parameter "item"

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isItemContained(Lcom/sec/android/allshare/Item;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/extension/UniqueItemArray;->generateKey(Lcom/sec/android/allshare/Item;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 120
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sec/android/allshare/Item;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    const/4 v2, 0x1

    .line 127
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sec/android/allshare/Item;>;"
    :goto_0
    return v2

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/sec/android/allshare/Item;)V
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 34
    if-nez p2, :cond_0

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/sec/android/allshare/Item;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 41
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    check-cast p2, Lcom/sec/android/allshare/Item;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/allshare/extension/UniqueItemArray;->add(ILcom/sec/android/allshare/Item;)V

    return-void
.end method

.method public add(Lcom/sec/android/allshare/Item;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v0, 0x0

    .line 46
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/sec/android/allshare/Item;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/sec/android/allshare/Item;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/extension/UniqueItemArray;->add(Lcom/sec/android/allshare/Item;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/sec/android/allshare/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/sec/android/allshare/Item;>;"
    const/4 v2, 0x1

    .line 81
    if-nez p2, :cond_1

    .line 82
    const/4 v2, 0x0

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/sec/android/allshare/Item;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/Item;

    .line 92
    .local v1, item:Lcom/sec/android/allshare/Item;
    invoke-direct {p0, v1}, Lcom/sec/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/sec/android/allshare/Item;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 95
    .end local v1           #item:Lcom/sec/android/allshare/Item;
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/sec/android/allshare/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/sec/android/allshare/Item;>;"
    const/4 v2, 0x1

    .line 60
    if-nez p1, :cond_1

    .line 61
    const/4 v2, 0x0

    .line 76
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 69
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/sec/android/allshare/Item;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/Item;

    .line 71
    .local v1, item:Lcom/sec/android/allshare/Item;
    invoke-direct {p0, v1}, Lcom/sec/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/sec/android/allshare/Item;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 76
    .end local v1           #item:Lcom/sec/android/allshare/Item;
    :cond_3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
