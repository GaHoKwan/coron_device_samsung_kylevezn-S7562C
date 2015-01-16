.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10


# instance fields
.field elementCount:I

.field elementData:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadFactor:I

.field volatile modCount:I

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 189
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 200
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 201
    if-ltz p1, :cond_1

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 203
    if-nez p1, :cond_0

    const/4 p1, 0x1

    .end local p1
    :cond_0
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 204
    const/16 v0, 0x1d4c

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 205
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 206
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 210
    return-void

    .line 208
    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 224
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 225
    if-ltz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 227
    if-nez p1, :cond_0

    const/4 p1, 0x1

    .end local p1
    :cond_0
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 228
    const v0, 0x461c4000

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 229
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 230
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 234
    return-void

    .line 232
    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v0, 0xb

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 245
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 246
    return-void

    .line 244
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private computeMaxSize()V
    .locals 4

    .prologue
    .line 267
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v0

    int-to-long v0, v0

    iget v2, p0, Ljava/util/WeakHashMap;->loadFactor:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 268
    return-void
.end method

.method private static newEntryArray(I)[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-array v0, p0, [Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 731
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 8

    .prologue
    .line 641
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    mul-int/lit8 v3, v6, 0x2

    .line 642
    .local v3, length:I
    if-nez v3, :cond_0

    .line 643
    const/4 v3, 0x1

    .line 645
    :cond_0
    invoke-static {v3}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 646
    .local v4, newData:[Ljava/util/WeakHashMap$Entry;,"[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 647
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v6, v1

    .line 648
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 649
    iget-boolean v6, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    .line 651
    .local v2, index:I
    :goto_2
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 652
    .local v5, next:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aget-object v6, v4, v2

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 653
    aput-object v0, v4, v2

    .line 654
    move-object v0, v5

    .line 655
    goto :goto_1

    .line 649
    .end local v2           #index:I
    .end local v5           #next:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_1
    iget v6, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int v2, v6, v3

    goto :goto_2

    .line 646
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iput-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 658
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 659
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 256
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    if-lez v0, :cond_1

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 258
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 260
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 280
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v3, 0x1

    .line 528
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 529
    if-eqz p1, :cond_4

    .line 530
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v4

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    .line 531
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    .line 532
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 534
    .local v2, key:Ljava/lang/Object;,"TK;"
    if-nez v2, :cond_1

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 553
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_2
    :goto_1
    return v3

    .line 538
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 539
    goto :goto_0

    .line 542
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_4
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v4

    .restart local v1       #i:I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    .line 543
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    .line 544
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_5

    .line 545
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 546
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    if-nez v2, :cond_6

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 549
    :cond_7
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 550
    goto :goto_2

    .line 553
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 294
    new-instance v0, Ljava/util/WeakHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$1;-><init>(Ljava/util/WeakHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 474
    if-eqz p1, :cond_2

    .line 475
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 476
    .local v1, index:I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 477
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 492
    .end local v1           #index:I
    :cond_0
    :goto_1
    return-object v2

    .line 481
    .restart local v1       #index:I
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 485
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #index:I
    :cond_2
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 486
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_0

    .line 487
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_3

    .line 488
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 490
    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 496
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 497
    if-eqz p1, :cond_3

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 499
    .local v1, index:I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 500
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #index:I
    :cond_0
    :goto_1
    return-object v0

    .line 504
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v1       #index:I
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 506
    goto :goto_1

    .line 508
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #index:I
    :cond_3
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 509
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_4

    .line 510
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_0

    .line 513
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 515
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 563
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 352
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/WeakHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$2;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    .line 408
    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method poll()V
    .locals 2

    .prologue
    .line 569
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    .local v0, toRemove:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const v6, 0x7fffffff

    const/4 v3, 0x0

    .line 608
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 609
    const/4 v1, 0x0

    .line 611
    .local v1, index:I
    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    and-int/2addr v4, v6

    iget-object v5, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v5, v5

    rem-int v1, v4, v5

    .line 613
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    .line 614
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 615
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 618
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v3

    .line 619
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v4, :cond_1

    .line 620
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 623
    :cond_1
    if-nez v0, :cond_4

    .line 624
    iget v4, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 625
    iget v4, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap;->elementCount:I

    iget v5, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v4, v5, :cond_2

    .line 626
    invoke-direct {p0}, Ljava/util/WeakHashMap;->rehash()V

    .line 627
    if-nez p1, :cond_3

    move v1, v3

    .line 630
    :cond_2
    :goto_2
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v3}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 631
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v3, v3, v1

    iput-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 632
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aput-object v0, v3, v1

    .line 633
    const/4 v2, 0x0

    .line 637
    :goto_3
    return-object v2

    .line 627
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v3, v6

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    goto :goto_2

    .line 635
    :cond_4
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 636
    .local v2, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_3
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 674
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, index:I
    const/4 v2, 0x0

    .line 689
    .local v2, last:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 690
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 691
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 692
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 693
    move-object v2, v0

    .line 694
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 697
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 698
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_1

    .line 699
    move-object v2, v0

    .line 700
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 703
    :cond_1
    if-eqz v0, :cond_3

    .line 704
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 705
    if-nez v2, :cond_2

    .line 706
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 710
    :goto_2
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 711
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 713
    :goto_3
    return-object v3

    .line 708
    :cond_2
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2

    .line 713
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method removeEntry(Ljava/util/WeakHashMap$Entry;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, toRemove:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    .line 576
    .local v2, last:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v3, p1, Ljava/util/WeakHashMap$Entry;->hash:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 577
    .local v1, index:I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 580
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 581
    if-ne p1, v0, :cond_2

    .line 582
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 583
    if-nez v2, :cond_1

    .line 584
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 588
    :goto_1
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 594
    :cond_0
    return-void

    .line 586
    :cond_1
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 591
    :cond_2
    move-object v2, v0

    .line 592
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 723
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 724
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 433
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/util/WeakHashMap$3;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$3;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    .line 460
    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
