.class final Ljava/util/concurrent/ThreadPoolExecutor$Worker;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x552f9a9a47f02c71L


# instance fields
.field volatile completedTasks:J

.field firstTask:Ljava/lang/Runnable;

.field final synthetic this$0:Ljava/util/concurrent/ThreadPoolExecutor;

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "firstTask"

    .prologue
    .line 562
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 563
    iput-object p2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 564
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 565
    return-void
.end method


# virtual methods
.method protected isHeldExclusively()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(I)V

    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 570
    return-void
.end method

.method protected tryAcquire(I)Z
    .locals 3
    .parameter "unused"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 582
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 586
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public tryLock()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryAcquire(I)Z

    move-result v0

    return v0
.end method

.method protected tryRelease(I)Z
    .locals 1
    .parameter "unused"

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z

    return-void
.end method
