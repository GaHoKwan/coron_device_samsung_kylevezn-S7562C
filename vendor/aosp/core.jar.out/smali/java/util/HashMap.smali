.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$1;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$Values;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapEntry;
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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry; = null

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entryForNullKey:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 999
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/HashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 126
    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 128
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "capacity"

    .prologue
    .line 138
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 139
    if-gez p1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 145
    sget-object v1, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v1, [Ljava/util/HashMap$HashMapEntry;

    move-object v0, v1

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    .line 146
    .local v0, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    .line 159
    .end local v0           #tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    .line 152
    const/4 p1, 0x4

    .line 158
    :goto_1
    invoke-direct {p0, p1}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    .line 153
    :cond_2
    const/high16 v1, 0x4000

    if-le p1, v1, :cond_3

    .line 154
    const/high16 p1, 0x4000

    goto :goto_1

    .line 156
    :cond_3
    invoke-static {p1}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_1
.end method

.method public constructor <init>(IF)V
    .locals 3
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 174
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 176
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
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
    .line 195
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 196
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 197
    return-void
.end method

.method static synthetic access$600(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static capacityForInitSize(I)I
    .locals 2
    .parameter "size"

    .prologue
    .line 216
    shr-int/lit8 v1, p0, 0x1

    add-int v0, v1, p0

    .line 219
    .local v0, result:I
    const/high16 v1, -0x4000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    const/high16 v0, 0x4000

    goto :goto_0
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v7, 0x0

    .line 442
    if-nez p1, :cond_1

    .line 443
    iget-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 444
    .local v1, entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_0

    .line 445
    const/4 v6, 0x0

    invoke-virtual {p0, v7, p2, v6, v7}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 446
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 467
    .end local v1           #entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    return-void

    .line 448
    .restart local v1       #entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    iput-object p2, v1, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 453
    .end local v1           #entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v3

    .line 454
    .local v3, hash:I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 455
    .local v5, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v4, v3, v6

    .line 456
    .local v4, index:I
    aget-object v2, v5, v4

    .line 457
    .local v2, first:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 458
    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v3, :cond_2

    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 459
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 465
    :cond_3
    invoke-virtual {p0, p1, p2, v3, v2}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    aput-object v6, v5, v4

    .line 466
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    goto :goto_0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 836
    if-nez p1, :cond_1

    .line 837
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 838
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 849
    :cond_0
    :goto_0
    return v4

    .line 841
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 842
    .local v1, hash:I
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 843
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 844
    .local v2, index:I
    aget-object v0, v3, v2

    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 845
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 846
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method private doubleCapacity()[Ljava/util/HashMap$HashMapEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 570
    .local v9, oldTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v8, v9

    .line 571
    .local v8, oldCapacity:I
    const/high16 v10, 0x4000

    if-ne v8, v10, :cond_1

    move-object v6, v9

    .line 606
    :cond_0
    return-object v6

    .line 574
    :cond_1
    mul-int/lit8 v5, v8, 0x2

    .line 575
    .local v5, newCapacity:I
    invoke-direct {p0, v5}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    .line 576
    .local v6, newTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    if-eqz v10, :cond_0

    .line 580
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 585
    aget-object v1, v9, v3

    .line 586
    .local v1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_3

    .line 580
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    :cond_3
    iget v10, v1, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v2, v10, v8

    .line 590
    .local v2, highBit:I
    const/4 v0, 0x0

    .line 591
    .local v0, broken:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    or-int v10, v3, v2

    aput-object v1, v6, v10

    .line 592
    iget-object v4, v1, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .local v4, n:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v4, :cond_6

    .line 593
    iget v10, v4, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v7, v10, v8

    .line 594
    .local v7, nextHighBit:I
    if-eq v7, v2, :cond_4

    .line 595
    if-nez v0, :cond_5

    .line 596
    or-int v10, v3, v7

    aput-object v4, v6, v10

    .line 599
    :goto_3
    move-object v0, v1

    .line 600
    move v2, v7

    .line 592
    :cond_4
    move-object v1, v4

    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 598
    :cond_5
    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_3

    .line 603
    .end local v7           #nextHighBit:I
    :cond_6
    if-eqz v0, :cond_2

    .line 604
    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method private ensureCapacity(I)V
    .locals 11
    .parameter "numMappings"

    .prologue
    .line 522
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result v2

    .line 523
    .local v2, newCapacity:I
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 524
    .local v9, oldTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v7, v9

    .line 525
    .local v7, oldCapacity:I
    if-gt v2, v7, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_2

    .line 529
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    .line 534
    :cond_2
    invoke-direct {p0, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    .line 535
    .local v6, newTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    if-eqz v10, :cond_0

    .line 536
    add-int/lit8 v4, v2, -0x1

    .line 537
    .local v4, newMask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v7, :cond_0

    .line 538
    aget-object v0, v9, v1

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_3

    .line 539
    iget-object v8, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 540
    .local v8, oldNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v3, v10, v4

    .line 541
    .local v3, newIndex:I
    aget-object v5, v6, v3

    .line 542
    .local v5, newNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    aput-object v0, v6, v3

    .line 543
    iput-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 544
    move-object v0, v8

    .line 545
    goto :goto_2

    .line 537
    .end local v3           #newIndex:I
    .end local v5           #newNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v8           #oldNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private makeTable(I)[Ljava/util/HashMap$HashMapEntry;
    .locals 3
    .parameter "newCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    .line 557
    .local v0, newTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 558
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    .line 559
    return-object v0
.end method

.method private putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 414
    .local v0, entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->addNewEntryForNullKey(Ljava/lang/Object;)V

    .line 416
    iget v2, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->size:I

    .line 417
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    .line 418
    const/4 v1, 0x0

    .line 423
    :goto_0
    return-object v1

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    .line 421
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 422
    .local v1, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1019
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1020
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1021
    .local v0, capacity:I
    if-gez v0, :cond_0

    .line 1022
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1024
    :cond_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    .line 1025
    const/4 v0, 0x4

    .line 1031
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    .line 1033
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1034
    .local v3, size:I
    if-gez v3, :cond_3

    .line 1035
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1026
    .end local v3           #size:I
    :cond_1
    const/high16 v5, 0x4000

    if-le v0, v5, :cond_2

    .line 1027
    const/high16 v0, 0x4000

    goto :goto_0

    .line 1029
    :cond_2
    invoke-static {v0}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_0

    .line 1038
    .restart local v3       #size:I
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    .line 1039
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1040
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1041
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1042
    .local v4, val:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1044
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #val:Ljava/lang/Object;,"TV;"
    :cond_4
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 857
    if-nez p1, :cond_2

    .line 858
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 859
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 889
    :goto_0
    return v5

    .line 862
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 863
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    .line 864
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 865
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    goto :goto_0

    .line 869
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 870
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 871
    .local v4, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 872
    .local v2, index:I
    aget-object v0, v4, v2

    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 873
    .local v3, prev:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_6

    .line 874
    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v7, v1, :cond_5

    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 875
    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    .line 876
    goto :goto_0

    .line 878
    :cond_3
    if-nez v3, :cond_4

    .line 879
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v6, v4, v2

    .line 883
    :goto_2
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    .line 884
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 885
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    goto :goto_0

    .line 881
    :cond_4
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v6, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 873
    :cond_5
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_6
    move v5, v6

    .line 889
    goto :goto_0
.end method

.method private removeNullKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 643
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-object v1

    .line 646
    :cond_0
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 647
    iget v1, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/HashMap;->modCount:I

    .line 648
    iget v1, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/HashMap;->size:I

    .line 649
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    .line 650
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 985
    add-int/lit8 p0, p0, -0x1

    .line 988
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 989
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 990
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 991
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 992
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 994
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static secondaryHash(I)I
    .locals 2
    .parameter "h"

    .prologue
    .line 973
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 974
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1006
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "loadFactor"

    const/high16 v4, 0x3f40

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    .line 1007
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1009
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1010
    iget v3, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1011
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1012
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1013
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1015
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 3
    .parameter
    .parameter
    .parameter "hash"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    new-instance v1, Ljava/util/HashMap$HashMapEntry;

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v2, v2, p4

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    aput-object v1, v0, p4

    .line 477
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x0

    .line 485
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    iput-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 486
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 665
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 668
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 669
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 671
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 235
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    .line 242
    iput-object v3, v1, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 243
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/HashMap;->size:I

    .line 244
    iput-object v3, v1, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 245
    iput-object v3, v1, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 246
    iput-object v3, v1, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 248
    invoke-virtual {v1}, Ljava/util/HashMap;->init()V

    .line 249
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 250
    return-object v1

    .line 236
    .end local v1           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .locals 1
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, first:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    return-object v0
.end method

.method final constructorPutAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 8
    .parameter "key"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 322
    if-nez p1, :cond_2

    .line 323
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 323
    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 328
    .local v2, hash:I
    ushr-int/lit8 v6, v2, 0x14

    ushr-int/lit8 v7, v2, 0xc

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    .line 329
    ushr-int/lit8 v6, v2, 0x7

    ushr-int/lit8 v7, v2, 0x4

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    .line 331
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 332
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v0, v3, v6

    .line 333
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    .line 334
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 335
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_0

    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 333
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :cond_4
    move v4, v5

    .line 339
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 352
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;
    array-length v2, v3

    .line 353
    .local v2, len:I
    if-nez p1, :cond_5

    .line 354
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 355
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/HashMap$HashMapEntry;
    :goto_1
    if-eqz v0, :cond_2

    .line 356
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 372
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;
    :cond_0
    :goto_2
    return v4

    .line 355
    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;
    :cond_3
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_4

    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v6, v6, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    :cond_4
    move v4, v5

    goto :goto_2

    .line 365
    .end local v1           #i:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 366
    aget-object v0, v3, v1

    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;
    :goto_4
    if-eqz v0, :cond_6

    .line 367
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 366
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_4

    .line 365
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 372
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;
    :cond_7
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_8

    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v6, v6, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_8
    move v4, v5

    goto :goto_2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 719
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 720
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0       #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$EntrySet;

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 292
    if-nez p1, :cond_2

    .line 293
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 294
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-object v4

    .line 294
    :cond_1
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 299
    .local v2, hash:I
    ushr-int/lit8 v5, v2, 0x14

    ushr-int/lit8 v6, v2, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 300
    ushr-int/lit8 v5, v2, 0x7

    ushr-int/lit8 v6, v2, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 302
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 303
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v2

    aget-object v0, v3, v5

    .line 304
    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 306
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_3

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 307
    :cond_3
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_4
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method init()V
    .locals 0

    .prologue
    .line 261
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 271
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 682
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0       #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$KeySet;

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
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
    .line 386
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 387
    invoke-direct {p0, p2}, Ljava/util/HashMap;->putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 409
    :goto_0
    return-object v3

    .line 390
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 391
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 392
    .local v4, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 393
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 394
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    .line 396
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 397
    .local v3, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 393
    .end local v3           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 403
    :cond_2
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 404
    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    iget v6, p0, Ljava/util/HashMap;->threshold:I

    if-le v5, v6, :cond_3

    .line 405
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    move-result-object v4

    .line 406
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 408
    :cond_3
    invoke-virtual {p0, p1, p2, v1, v2}, Ljava/util/HashMap;->addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 409
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
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
    .line 507
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;->ensureCapacity(I)V

    .line 508
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 509
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 619
    invoke-direct {p0}, Ljava/util/HashMap;->removeNullKey()Ljava/lang/Object;

    move-result-object v5

    .line 638
    :goto_0
    return-object v5

    .line 621
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 622
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 623
    .local v4, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 624
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 625
    .local v3, prev:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 626
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    if-nez v3, :cond_1

    .line 628
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v5, v4, v2

    .line 632
    :goto_2
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 633
    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/HashMap;->size:I

    .line 634
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    .line 635
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 630
    :cond_1
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v5, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 625
    :cond_2
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 638
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 280
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 708
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0       #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$Values;

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
