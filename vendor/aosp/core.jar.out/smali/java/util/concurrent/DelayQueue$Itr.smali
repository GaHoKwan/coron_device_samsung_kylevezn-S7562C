.class Ljava/util/concurrent/DelayQueue$Itr;
.super Ljava/lang/Object;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/DelayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/concurrent/DelayQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "array"

    .prologue
    .line 479
    .local p0, this:Ljava/util/concurrent/DelayQueue$Itr;,"Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 481
    iput-object p2, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    .line 482
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 485
    .local p0, this:Ljava/util/concurrent/DelayQueue$Itr;,"Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 474
    .local p0, this:Ljava/util/concurrent/DelayQueue$Itr;,"Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue$Itr;->next()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/concurrent/Delayed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, this:Ljava/util/concurrent/DelayQueue$Itr;,"Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 491
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 492
    :cond_0
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 493
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/concurrent/Delayed;

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 497
    .local p0, this:Ljava/util/concurrent/DelayQueue$Itr;,"Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    if-gez v2, :cond_0

    .line 498
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 499
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    aget-object v1, v2, v3

    .line 500
    .local v1, x:Ljava/lang/Object;
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 503
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    #getter for: Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Ljava/util/concurrent/DelayQueue;->access$000(Ljava/util/concurrent/DelayQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 505
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    #getter for: Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;
    invoke-static {v2}, Ljava/util/concurrent/DelayQueue;->access$100(Ljava/util/concurrent/DelayQueue;)Ljava/util/PriorityQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    #getter for: Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Ljava/util/concurrent/DelayQueue;->access$000(Ljava/util/concurrent/DelayQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_2
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    #getter for: Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Ljava/util/concurrent/DelayQueue;->access$000(Ljava/util/concurrent/DelayQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #it:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    #getter for: Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Ljava/util/concurrent/DelayQueue;->access$000(Ljava/util/concurrent/DelayQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
