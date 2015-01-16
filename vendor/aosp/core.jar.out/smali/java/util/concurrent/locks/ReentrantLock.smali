.class public Ljava/util/concurrent/locks/ReentrantLock;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantLock$FairSync;,
        Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantLock$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6655a82c2cc86aebL


# instance fields
.field private final sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    .line 234
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "fair"

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    .line 244
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getHoldCount()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getHoldCount()I

    move-result v0

    return v0
.end method

.method protected getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final getQueueLength()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected getQueuedThreads()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .locals 2
    .parameter "condition"

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 697
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_1

    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

    move-result v0

    return v0
.end method

.method protected getWaitingThreads(Ljava/util/concurrent/locks/Condition;)Ljava/util/Collection;
    .locals 2
    .parameter "condition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Condition;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 722
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_1

    .line 723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .parameter "thread"

    .prologue
    .line 623
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isQueued(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    .locals 2
    .parameter "condition"

    .prologue
    .line 672
    if-nez p1, :cond_0

    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 674
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_1

    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    return v0
.end method

.method public final isFair()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    return v0
.end method

.method public isHeldByCurrentThread()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isLocked()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->lock()V

    .line 262
    return-void
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireInterruptibly(I)V

    .line 312
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 736
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 737
    .local v0, o:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v1, "[Unlocked]"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Locked by thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public tryLock()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->nonfairTryAcquire(I)Z

    move-result v0

    return v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z

    .line 432
    return-void
.end method
