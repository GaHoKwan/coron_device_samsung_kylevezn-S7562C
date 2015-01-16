.class Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private curr:I

.field private curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private found:Z

.field private returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private returned_index:I

.field private startModCount:I

.field final synthetic this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V
    .locals 1
    .parameter

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v0, -0x1

    .line 402
    iput-object p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    .line 398
    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 403
    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I
    invoke-static {p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    .line 404
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v0, 0x1

    .line 407
    iget-boolean v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    if-eqz v1, :cond_0

    .line 421
    :goto_0
    return v0

    .line 410
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v1, v1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 413
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-nez v1, :cond_3

    .line 414
    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    :goto_1
    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    goto :goto_1

    .line 417
    :cond_2
    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 418
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 421
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eqz v1, :cond_4

    :goto_2
    iput-boolean v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I
    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v0, v1, :cond_0

    .line 426
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 432
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    .line 433
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 434
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 435
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v5, -0x1

    .line 439
    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    if-ne v2, v5, :cond_0

    .line 440
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 443
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v2, v3, :cond_1

    .line 444
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 447
    :cond_1
    const/4 v1, 0x0

    .line 448
    .local v1, p:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    aget-object v0, v2, v3

    .line 449
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eq v0, v2, :cond_2

    .line 450
    move-object v1, v0

    .line 451
    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_0

    .line 453
    :cond_2
    if-eqz v1, :cond_3

    .line 454
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v2, v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v2, v1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 458
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$010(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    .line 459
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$308(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    .line 460
    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    .line 461
    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 462
    return-void

    .line 456
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    iget-object v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v4, v4, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aput-object v4, v2, v3

    goto :goto_1
.end method
