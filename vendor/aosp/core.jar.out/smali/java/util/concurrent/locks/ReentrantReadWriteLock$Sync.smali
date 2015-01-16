.class abstract Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    }
.end annotation


# static fields
.field static final EXCLUSIVE_MASK:I = 0xffff

.field static final MAX_COUNT:I = 0xffff

.field static final SHARED_SHIFT:I = 0x10

.field static final SHARED_UNIT:I = 0x10000

.field private static final serialVersionUID:J = 0x57ace0c53f412bb9L


# instance fields
.field private transient cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

.field private transient firstReader:Ljava/lang/Thread;

.field private transient firstReaderHoldCount:I

.field private transient readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 312
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    .line 313
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    .line 314
    return-void
.end method

.method static exclusiveCount(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 244
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 634
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    .line 636
    return-void
.end method

.method static sharedCount(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 242
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;
    .locals 2

    .prologue
    .line 418
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string v1, "attempt to unlock read lock, not locked by current thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final fullTryAcquireShared(Ljava/lang/Thread;)I
    .locals 8
    .parameter "current"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 479
    .local v0, c:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v4, p1, :cond_2

    .line 519
    :goto_0
    return v2

    .line 484
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v4, p1, :cond_3

    .line 501
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v4

    const v5, 0xffff

    if-ne v4, v5, :cond_6

    .line 502
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum lock count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_3
    if-nez v1, :cond_5

    .line 490
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 491
    if-eqz v1, :cond_4

    iget-wide v4, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 492
    :cond_4
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 493
    .restart local v1       #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iget v4, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v4, :cond_5

    .line 494
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 497
    :cond_5
    iget v4, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v4, :cond_2

    goto :goto_0

    .line 503
    :cond_6
    const/high16 v4, 0x1

    add-int/2addr v4, v0

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 504
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 505
    iput-object p1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 506
    iput v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    :goto_1
    move v2, v3

    .line 519
    goto :goto_0

    .line 507
    :cond_7
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v2, p1, :cond_8

    .line 508
    iget v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_1

    .line 510
    :cond_8
    if-nez v1, :cond_9

    .line 511
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 512
    :cond_9
    if-eqz v1, :cond_a

    iget-wide v4, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_c

    .line 513
    :cond_a
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 516
    .restart local v1       #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_b
    :goto_2
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 517
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    goto :goto_1

    .line 514
    :cond_c
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v2, :cond_b

    .line 515
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method final getCount()I
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    return v0
.end method

.method final getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method final getReadHoldCount()I
    .locals 7

    .prologue
    .line 611
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 612
    const/4 v0, 0x0

    .line 624
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 615
    .local v1, current:Ljava/lang/Thread;
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v3, v1, :cond_2

    .line 616
    iget v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 618
    :cond_2
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 619
    .local v2, rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v2, :cond_3

    iget-wide v3, v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 620
    iget v0, v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    goto :goto_0

    .line 622
    :cond_3
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    iget v0, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 623
    .local v0, count:I
    if-nez v0, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0
.end method

.method final getReadLockCount()I
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v0

    return v0
.end method

.method final getWriteHoldCount()I
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isHeldExclusively()Z
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isWriteLocked()Z
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .locals 1

    .prologue
    .line 588
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method abstract readerShouldBlock()Z
.end method

.method protected final tryAcquire(I)Z
    .locals 6
    .parameter "acquires"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 367
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 368
    .local v0, c:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    .line 369
    .local v2, w:I
    if-eqz v0, :cond_3

    .line 371
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v1, v5, :cond_1

    :cond_0
    move v3, v4

    .line 383
    :goto_0
    return v3

    .line 373
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v4

    add-int/2addr v4, v2

    const v5, 0xffff

    if-le v4, v5, :cond_2

    .line 374
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_2
    add-int v4, v0, p1

    invoke-virtual {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writerShouldBlock()Z

    move-result v5

    if-nez v5, :cond_4

    add-int v5, v0, p1

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    move v3, v4

    .line 381
    goto :goto_0

    .line 382
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method protected final tryAcquireShared(I)I
    .locals 9
    .parameter "unused"

    .prologue
    const/4 v4, 0x1

    .line 438
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 439
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 440
    .local v0, c:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v5, v1, :cond_0

    .line 442
    const/4 v4, -0x1

    .line 462
    :goto_0
    return v4

    .line 443
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    .line 444
    .local v2, r:I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    move-result v5

    if-nez v5, :cond_6

    const v5, 0xffff

    if-ge v2, v5, :cond_6

    const/high16 v5, 0x1

    add-int/2addr v5, v0

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 447
    if-nez v2, :cond_1

    .line 448
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 449
    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 450
    :cond_1
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v5, v1, :cond_2

    .line 451
    iget v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 453
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 454
    .local v3, rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v3, :cond_3

    iget-wide v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 455
    :cond_3
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .restart local v3       #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iput-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 458
    :cond_4
    :goto_1
    iget v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    goto :goto_0

    .line 456
    :cond_5
    iget v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v5, :cond_4

    .line 457
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 462
    .end local v3           #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_6
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->fullTryAcquireShared(Ljava/lang/Thread;)I

    move-result v4

    goto :goto_0
.end method

.method final tryReadLock()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 551
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 553
    .local v1, current:Ljava/lang/Thread;
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 554
    .local v0, c:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v5, v1, :cond_1

    .line 556
    const/4 v4, 0x0

    .line 574
    :goto_0
    return v4

    .line 557
    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    .line 558
    .local v2, r:I
    const v5, 0xffff

    if-ne v2, v5, :cond_2

    .line 559
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Maximum lock count exceeded"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 560
    :cond_2
    const/high16 v5, 0x1

    add-int/2addr v5, v0

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    if-nez v2, :cond_3

    .line 562
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 563
    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 564
    :cond_3
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v5, v1, :cond_4

    .line 565
    iget v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 567
    :cond_4
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 568
    .local v3, rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v3, :cond_5

    iget-wide v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    .line 569
    :cond_5
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .restart local v3       #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iput-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 572
    :cond_6
    :goto_1
    iget v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    goto :goto_0

    .line 570
    :cond_7
    iget v5, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v5, :cond_6

    .line 571
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected final tryRelease(I)Z
    .locals 3
    .parameter "releases"

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 346
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v2

    sub-int v1, v2, p1

    .line 347
    .local v1, nextc:I
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 348
    .local v0, free:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 349
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 350
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    .line 351
    return v0

    .line 347
    .end local v0           #free:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 10
    .parameter "unused"

    .prologue
    const/4 v5, 0x1

    .line 387
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 388
    .local v2, current:Ljava/lang/Thread;
    iget-object v6, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v6, v2, :cond_2

    .line 390
    iget v6, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    if-ne v6, v5, :cond_1

    .line 391
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 407
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 408
    .local v0, c:I
    const/high16 v6, 0x1

    sub-int v3, v0, v6

    .line 409
    .local v3, nextc:I
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    if-nez v3, :cond_6

    :goto_1
    return v5

    .line 393
    .end local v0           #c:I
    .end local v3           #nextc:I
    :cond_1
    iget v6, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 395
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 396
    .local v4, rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v4, :cond_3

    iget-wide v6, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 397
    :cond_3
    iget-object v6, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 398
    .restart local v4       #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_4
    iget v1, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 399
    .local v1, count:I
    if-gt v1, v5, :cond_5

    .line 400
    iget-object v6, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 401
    if-gtz v1, :cond_5

    .line 402
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;

    move-result-object v5

    throw v5

    .line 404
    :cond_5
    iget v6, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    goto :goto_0

    .line 413
    .end local v1           #count:I
    .end local v4           #rh:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    .restart local v0       #c:I
    .restart local v3       #nextc:I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method final tryWriteLock()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 530
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 531
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 532
    .local v0, c:I
    if-eqz v0, :cond_2

    .line 533
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    .line 534
    .local v2, w:I
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v1, v4, :cond_1

    .line 542
    .end local v2           #w:I
    :cond_0
    :goto_0
    return v3

    .line 536
    .restart local v2       #w:I
    :cond_1
    const v4, 0xffff

    if-ne v2, v4, :cond_2

    .line 537
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 539
    .end local v2           #w:I
    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 542
    const/4 v3, 0x1

    goto :goto_0
.end method

.method abstract writerShouldBlock()Z
.end method
