.class Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;
.super Ljava/util/AbstractSet;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iput-object p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 359
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    .line 360
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    const/4 v4, 0x0

    .line 367
    instance-of v5, p1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-nez v5, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .line 371
    check-cast v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 372
    .local v0, entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<***>;"
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v7

    #calls: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v5, v6, v7}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$100(Lorg/apache/harmony/luni/util/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    .line 373
    .local v1, entry2:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 377
    .local v2, value:Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 378
    .local v3, value2:Ljava/lang/Object;
    if-nez v2, :cond_2

    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 363
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I
    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$000(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    const/4 v1, 0x0

    .line 382
    instance-of v0, p1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-nez v0, :cond_0

    .line 385
    .end local p1
    :goto_0
    return v1

    .restart local p1
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v3

    #calls: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2, v0, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$200(Lorg/apache/harmony/luni/util/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 355
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I
    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$000(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    return v0
.end method
