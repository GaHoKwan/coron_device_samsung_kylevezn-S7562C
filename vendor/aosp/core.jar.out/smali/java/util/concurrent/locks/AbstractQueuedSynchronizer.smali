.class public abstract Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final nextOffset:J = 0x0L

.field private static final serialVersionUID:J = 0x6655a843753f52e3L

.field static final spinForTimeoutThreshold:J = 0x3e8L

.field private static final stateOffset:J

.field private static final tailOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final waitStatusOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private volatile state:I

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 2255
    sget-object v1, Ljava/util/concurrent/locks/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    .line 2265
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->stateOffset:J

    .line 2267
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const-string v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->headOffset:J

    .line 2269
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const-string v3, "tail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tailOffset:J

    .line 2271
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    const-string v3, "waitStatus"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->waitStatusOffset:J

    .line 2273
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    const-string v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    return-void

    .line 2276
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 268
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 3
    .parameter "mode"

    .prologue
    .line 585
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 587
    .local v0, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 588
    .local v1, pred:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    .line 589
    iput-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 590
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 596
    :goto_0
    return-object v0

    .line 595
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 7
    .parameter "node"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 721
    if-nez p1, :cond_0

    .line 761
    :goto_0
    return-void

    .line 724
    :cond_0
    iput-object v6, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 727
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 728
    .local v1, pred:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_1
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-lez v4, :cond_1

    .line 729
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_1

    .line 734
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 739
    .local v2, predNext:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x1

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 742
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne p1, v4, :cond_2

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 743
    invoke-static {v1, v2, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    goto :goto_0

    .line 748
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v1, v4, :cond_5

    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .local v3, ws:I
    if-eq v3, v5, :cond_3

    if-gtz v3, :cond_5

    invoke-static {v1, v3, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_5

    .line 752
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 753
    .local v0, next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_4

    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v4, :cond_4

    .line 754
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 759
    .end local v0           #next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3           #ws:I
    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 756
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_2
.end method

.method private final compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .parameter "update"

    .prologue
    .line 2283
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->headOffset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .parameter "node"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 2309
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 2290
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z
    .locals 6
    .parameter "node"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 2299
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->waitStatusOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private doAcquireInterruptibly(I)V
    .locals 4
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 862
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 863
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 866
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 867
    .local v2, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 868
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 869
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    const/4 v0, 0x0

    .line 878
    if-eqz v0, :cond_1

    .line 879
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_1
    return-void

    .line 873
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    .end local v2           #p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 879
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_3
    throw v3
.end method

.method private doAcquireNanos(IJ)Z
    .locals 9
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 893
    .local v1, lastTime:J
    sget-object v7, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 894
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 897
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v6

    .line 898
    .local v6, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 899
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 900
    const/4 v7, 0x0

    iput-object v7, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    const/4 v0, 0x0

    .line 902
    const/4 v7, 0x1

    .line 916
    if-eqz v0, :cond_1

    .line 917
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_1
    :goto_0
    return v7

    .line 904
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-gtz v7, :cond_3

    .line 905
    const/4 v7, 0x0

    .line 916
    if-eqz v0, :cond_1

    .line 917
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_0

    .line 906
    :cond_3
    :try_start_1
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x3e8

    cmp-long v7, p2, v7

    if-lez v7, :cond_4

    .line 908
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 909
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 910
    .local v4, now:J
    sub-long v7, v4, v1

    sub-long/2addr p2, v7

    .line 911
    move-wide v1, v4

    .line 912
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 913
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 916
    .end local v4           #now:J
    .end local v6           #p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_5

    .line 917
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_5
    throw v7
.end method

.method private doAcquireShared(I)V
    .locals 6
    .parameter "arg"

    .prologue
    .line 926
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 927
    .local v2, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 929
    .local v0, failed:Z
    const/4 v1, 0x0

    .line 931
    .local v1, interrupted:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 932
    .local v3, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v3, v5, :cond_3

    .line 933
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v4

    .line 934
    .local v4, r:I
    if-ltz v4, :cond_3

    .line 935
    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    .line 936
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 937
    if-eqz v1, :cond_1

    .line 938
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :cond_1
    const/4 v0, 0x0

    .line 948
    if-eqz v0, :cond_2

    .line 949
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_2
    return-void

    .line 943
    .end local v4           #r:I
    :cond_3
    :try_start_1
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 945
    const/4 v1, 0x1

    goto :goto_0

    .line 948
    .end local v3           #p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 949
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_4
    throw v5
.end method

.method private doAcquireSharedInterruptibly(I)V
    .locals 5
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 959
    sget-object v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 960
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 963
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 964
    .local v2, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v4, :cond_2

    .line 965
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v3

    .line 966
    .local v3, r:I
    if-ltz v3, :cond_2

    .line 967
    invoke-direct {p0, v1, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    .line 968
    const/4 v4, 0x0

    iput-object v4, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    const/4 v0, 0x0

    .line 978
    if-eqz v0, :cond_1

    .line 979
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_1
    return-void

    .line 973
    .end local v3           #r:I
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 975
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v2           #p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 979
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_3
    throw v4
.end method

.method private doAcquireSharedNanos(IJ)Z
    .locals 10
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 994
    .local v1, lastTime:J
    sget-object v8, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 995
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 998
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v6

    .line 999
    .local v6, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v8, :cond_2

    .line 1000
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v7

    .line 1001
    .local v7, r:I
    if-ltz v7, :cond_2

    .line 1002
    invoke-direct {p0, v3, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    .line 1003
    const/4 v8, 0x0

    iput-object v8, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    const/4 v0, 0x0

    .line 1005
    const/4 v8, 0x1

    .line 1020
    if-eqz v0, :cond_1

    .line 1021
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .end local v7           #r:I
    :cond_1
    :goto_0
    return v8

    .line 1008
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_3

    .line 1009
    const/4 v8, 0x0

    .line 1020
    if-eqz v0, :cond_1

    .line 1021
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_0

    .line 1010
    :cond_3
    :try_start_1
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x3e8

    cmp-long v8, p2, v8

    if-lez v8, :cond_4

    .line 1012
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1013
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1014
    .local v4, now:J
    sub-long v8, v4, v1

    sub-long/2addr p2, v8

    .line 1015
    move-wide v1, v4

    .line 1016
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1017
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    .end local v4           #now:J
    .end local v6           #p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_5

    .line 1021
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_5
    throw v8
.end method

.method private doReleaseShared()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 662
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 663
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v0, v2, :cond_1

    .line 664
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 665
    .local v1, ws:I
    if-ne v1, v3, :cond_2

    .line 666
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 674
    .end local v1           #ws:I
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v2, :cond_0

    .line 677
    return-void

    .line 670
    .restart local v1       #ws:I
    :cond_2
    if-nez v1, :cond_1

    const/4 v2, -0x3

    invoke-static {v0, v4, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 564
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 565
    .local v0, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v0, :cond_1

    .line 566
    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 569
    :cond_1
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 570
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 572
    return-object v0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 1632
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1634
    .local v0, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-ne v0, p1, :cond_0

    .line 1635
    const/4 v1, 0x1

    .line 1637
    :goto_1
    return v1

    .line 1636
    :cond_0
    if-nez v0, :cond_1

    .line 1637
    const/4 v1, 0x0

    goto :goto_1

    .line 1638
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    .prologue
    .line 1386
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, h:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v2, s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v2, :cond_0

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v7, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .local v3, st:Ljava/lang/Thread;
    if-nez v3, :cond_1

    .end local v2           #s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3           #st:Ljava/lang/Thread;
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .restart local v2       #s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v2, :cond_3

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v7, :cond_3

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .restart local v3       #st:Ljava/lang/Thread;
    if-eqz v3, :cond_3

    :cond_1
    move-object v0, v3

    .line 1408
    .end local v2           #s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3           #st:Ljava/lang/Thread;
    :cond_2
    return-object v0

    .line 1400
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1401
    .local v4, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x0

    .line 1402
    .local v0, firstThread:Ljava/lang/Thread;
    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v4, v6, :cond_2

    .line 1403
    iget-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1404
    .local v5, tt:Ljava/lang/Thread;
    if-eqz v5, :cond_4

    .line 1405
    move-object v0, v5

    .line 1406
    :cond_4
    iget-object v4, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1407
    goto :goto_0
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    .prologue
    .line 813
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 814
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    return v0
.end method

.method private static selfInterrupt()V
    .locals 1

    .prologue
    .line 804
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 805
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 1
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 607
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 608
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 609
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 610
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V
    .locals 3
    .parameter "node"
    .parameter "propagate"

    .prologue
    .line 688
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 689
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 705
    if-gtz p2, :cond_0

    if-eqz v0, :cond_0

    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gez v2, :cond_2

    .line 706
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 707
    .local v1, s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 708
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    .line 710
    .end local v1           #s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    return-void
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .parameter "pred"
    .parameter "node"

    .prologue
    const/4 v1, -0x1

    .line 773
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 774
    .local v0, ws:I
    if-ne v0, v1, :cond_0

    .line 779
    const/4 v1, 0x1

    .line 797
    :goto_0
    return v1

    .line 780
    :cond_0
    if-lez v0, :cond_2

    .line 786
    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 787
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v1, :cond_1

    .line 788
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 797
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 795
    :cond_2
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    goto :goto_1
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 623
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 624
    .local v2, ws:I
    if-gez v2, :cond_0

    .line 625
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    .line 633
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 634
    .local v0, s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-lez v3, :cond_3

    .line 635
    :cond_1
    const/4 v0, 0x0

    .line 636
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 637
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v3, :cond_2

    .line 638
    move-object v0, v1

    .line 636
    :cond_2
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 640
    .end local v1           #t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    if-eqz v0, :cond_4

    .line 641
    iget-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 642
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(I)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    .line 1179
    :cond_0
    return-void
.end method

.method public final acquireInterruptibly(I)V
    .locals 1
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1197
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1199
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1200
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireInterruptibly(I)V

    .line 1201
    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z
    .locals 4
    .parameter "node"
    .parameter "arg"

    .prologue
    .line 835
    const/4 v0, 0x1

    .line 837
    .local v0, failed:Z
    const/4 v1, 0x0

    .line 839
    .local v1, interrupted:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 840
    .local v2, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 841
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 842
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    const/4 v0, 0x0

    .line 851
    if-eqz v0, :cond_1

    .line 852
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_1
    return v1

    .line 846
    :cond_2
    :try_start_1
    invoke-static {v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    const/4 v1, 0x1

    goto :goto_0

    .line 851
    .end local v2           #p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 852
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_3
    throw v3
.end method

.method public final acquireShared(I)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 1260
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1261
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireShared(I)V

    .line 1262
    :cond_0
    return-void
.end method

.method public final acquireSharedInterruptibly(I)V
    .locals 1
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1279
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1281
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 1282
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedInterruptibly(I)V

    .line 1283
    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 3

    .prologue
    .line 1441
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1           #s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final compareAndSetState(II)Z
    .locals 6
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 545
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->stateOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, 0x1

    .line 1699
    const/4 v0, 0x1

    .line 1701
    .local v0, failed:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    .line 1702
    .local v1, savedState:I
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1703
    const/4 v0, 0x0

    .line 1709
    if-eqz v0, :cond_0

    .line 1710
    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    :cond_0
    return v1

    .line 1706
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1709
    .end local v1           #savedState:I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 1710
    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    :cond_2
    throw v2
.end method

.method public final getExclusiveQueuedThreads()Ljava/util/Collection;
    .locals 4
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
    .line 1554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1556
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1557
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1558
    .local v2, t:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1559
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1562
    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method public final getQueueLength()I
    .locals 3

    .prologue
    .line 1516
    const/4 v0, 0x0

    .line 1517
    .local v0, n:I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1518
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 1519
    add-int/lit8 v0, v0, 0x1

    .line 1517
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1521
    :cond_1
    return v0
.end method

.method public final getQueuedThreads()Ljava/util/Collection;
    .locals 3
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
    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1538
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1539
    .local v2, t:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1540
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1542
    .end local v2           #t:Ljava/lang/Thread;
    :cond_1
    return-object v0
.end method

.method public final getSharedQueuedThreads()Ljava/util/Collection;
    .locals 4
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
    .line 1574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1576
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1577
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1578
    .local v2, t:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1579
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1582
    :cond_1
    return-object v0
.end method

.method protected final getState()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    return v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I
    .locals 2
    .parameter "condition"

    .prologue
    .line 1769
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1771
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;
    .locals 2
    .parameter "condition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1791
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1793
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasContended()Z
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasQueuedPredecessors()Z
    .locals 5

    .prologue
    .line 1495
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1496
    .local v2, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1498
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eq v0, v2, :cond_1

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .end local v1           #s:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    .prologue
    .line 1340
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .locals 2
    .parameter "condition"

    .prologue
    .line 1747
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1749
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0
.end method

.method protected isHeldExclusively()Z
    .locals 1

    .prologue
    .line 1160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 1611
    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1612
    :cond_0
    const/4 v0, 0x0

    .line 1623
    :goto_0
    return v0

    .line 1613
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_2

    .line 1614
    const/4 v0, 0x1

    goto :goto_0

    .line 1623
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isQueued(Ljava/lang/Thread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    .line 1422
    if-nez p1, :cond_0

    .line 1423
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1424
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 1425
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    .line 1426
    const/4 v1, 0x1

    .line 1427
    :goto_1
    return v1

    .line 1424
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1427
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .locals 1
    .parameter "condition"

    .prologue
    .line 1725
    if-nez p1, :cond_0

    .line 1726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1727
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .locals 2
    .parameter "arg"

    .prologue
    .line 1239
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryRelease(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1241
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-eqz v1, :cond_0

    .line 1242
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1243
    :cond_0
    const/4 v1, 0x1

    .line 1245
    .end local v0           #h:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final releaseShared(I)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryReleaseShared(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    .line 1321
    const/4 v0, 0x1

    .line 1323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setState(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 529
    iput p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    .line 530
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1595
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    .line 1596
    .local v1, s:I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasQueuedThreads()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "non"

    .line 1597
    .local v0, q:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "empty queue]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1596
    .end local v0           #q:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 1677
    const/4 v1, -0x2

    invoke-static {p1, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1678
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1679
    const/4 v0, 0x1

    .line 1689
    :cond_0
    return v0

    .line 1687
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    const/4 v2, 0x0

    .line 1653
    const/4 v3, -0x2

    invoke-static {p1, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1666
    :goto_0
    return v2

    .line 1662
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    .line 1663
    .local v0, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 1664
    .local v1, ws:I
    if-gtz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1665
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1666
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected tryAcquire(I)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 1054
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireNanos(IJ)Z
    .locals 1
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1224
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireNanos(IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tryAcquireShared(I)I
    .locals 1
    .parameter "arg"

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireSharedNanos(IJ)Z
    .locals 1
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1305
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedNanos(IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tryRelease(I)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 1080
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected tryReleaseShared(I)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
