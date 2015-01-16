.class public Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/locks/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 1821
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1830
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1832
    .local v1, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-eq v2, v3, :cond_0

    .line 1833
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1834
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1836
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/lang/Thread;I)V

    .line 1837
    .local v0, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v1, :cond_1

    .line 1838
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1841
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1842
    return-object v0

    .line 1840
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .locals 1
    .parameter "node"

    .prologue
    .line 1984
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 2
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    .line 1853
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1854
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1855
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1857
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez p1, :cond_0

    .line 1858
    :cond_2
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 3
    .parameter "first"

    .prologue
    const/4 v2, 0x0

    .line 1865
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1867
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1868
    .local v0, next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1869
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 1870
    move-object p1, v0

    .line 1871
    if-nez p1, :cond_0

    .line 1872
    return-void
.end method

.method private reportInterruptAfterWait(I)V
    .locals 1
    .parameter "interruptMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1995
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1996
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1997
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1998
    #calls: Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->access$000()V

    .line 1999
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 5

    .prologue
    .line 1889
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1890
    .local v1, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x0

    .line 1891
    .local v2, trail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_3

    .line 1892
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1893
    .local v0, next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    .line 1894
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1895
    if-nez v2, :cond_1

    .line 1896
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1899
    :goto_1
    if-nez v0, :cond_0

    .line 1900
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1904
    :cond_0
    :goto_2
    move-object v1, v0

    .line 1905
    goto :goto_0

    .line 1898
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_1

    .line 1903
    :cond_2
    move-object v2, v1

    goto :goto_2

    .line 1906
    .end local v0           #next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final await()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2016
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2017
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 2018
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 2019
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    .line 2020
    .local v2, savedState:I
    const/4 v0, 0x0

    .line 2021
    .local v0, interruptMode:I
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2022
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 2023
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2026
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 2027
    const/4 v0, 0x1

    .line 2028
    :cond_3
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v3, :cond_4

    .line 2029
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2030
    :cond_4
    if-eqz v0, :cond_5

    .line 2031
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2032
    :cond_5
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .parameter "time"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2139
    if-nez p3, :cond_0

    .line 2140
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 2141
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 2142
    .local v3, nanosTimeout:J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2143
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 2144
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v5

    .line 2145
    .local v5, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v8

    .line 2146
    .local v8, savedState:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2147
    .local v1, lastTime:J
    const/4 v9, 0x0

    .line 2148
    .local v9, timedout:Z
    const/4 v0, 0x0

    .line 2149
    .local v0, interruptMode:I
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2150
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-gtz v10, :cond_6

    .line 2151
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v9

    .line 2162
    :cond_2
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, -0x1

    if-eq v0, v10, :cond_3

    .line 2163
    const/4 v0, 0x1

    .line 2164
    :cond_3
    iget-object v10, v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v10, :cond_4

    .line 2165
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2166
    :cond_4
    if-eqz v0, :cond_5

    .line 2167
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2168
    :cond_5
    if-nez v9, :cond_8

    const/4 v10, 0x1

    :goto_1
    return v10

    .line 2154
    :cond_6
    const-wide/16 v10, 0x3e8

    cmp-long v10, v3, v10

    if-ltz v10, :cond_7

    .line 2155
    invoke-static {p0, v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 2156
    :cond_7
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2158
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 2159
    .local v6, now:J
    sub-long v10, v6, v1

    sub-long/2addr v3, v10

    .line 2160
    move-wide v1, v6

    .line 2161
    goto :goto_0

    .line 2168
    .end local v6           #now:J
    :cond_8
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public final awaitNanos(J)J
    .locals 9
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2050
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2051
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 2052
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 2053
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v6

    .line 2054
    .local v6, savedState:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2055
    .local v1, lastTime:J
    const/4 v0, 0x0

    .line 2056
    .local v0, interruptMode:I
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2057
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gtz v7, :cond_5

    .line 2058
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 2069
    :cond_1
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    .line 2070
    const/4 v0, 0x1

    .line 2071
    :cond_2
    iget-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v7, :cond_3

    .line 2072
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2073
    :cond_3
    if-eqz v0, :cond_4

    .line 2074
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2075
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    sub-long v7, p1, v7

    return-wide v7

    .line 2061
    :cond_5
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 2062
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2065
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2066
    .local v4, now:J
    sub-long v7, v4, v1

    sub-long/2addr p1, v7

    .line 2067
    move-wide v1, v4

    .line 2068
    goto :goto_0
.end method

.method public final awaitUninterruptibly()V
    .locals 4

    .prologue
    .line 1954
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 1955
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    .line 1956
    .local v2, savedState:I
    const/4 v0, 0x0

    .line 1957
    .local v0, interrupted:Z
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1958
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1959
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1960
    const/4 v0, 0x1

    goto :goto_0

    .line 1962
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 1963
    :cond_2
    #calls: Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->access$000()V

    .line 1964
    :cond_3
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .locals 8
    .parameter "deadline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2095
    if-nez p1, :cond_0

    .line 2096
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 2097
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2098
    .local v0, abstime:J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2099
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 2100
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 2101
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v4

    .line 2102
    .local v4, savedState:I
    const/4 v5, 0x0

    .line 2103
    .local v5, timedout:Z
    const/4 v2, 0x0

    .line 2104
    .local v2, interruptMode:I
    :cond_2
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_7

    .line 2106
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v5

    .line 2113
    :cond_3
    :goto_0
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    .line 2114
    const/4 v2, 0x1

    .line 2115
    :cond_4
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v6, :cond_5

    .line 2116
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2117
    :cond_5
    if-eqz v2, :cond_6

    .line 2118
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2119
    :cond_6
    if-nez v5, :cond_8

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 2109
    :cond_7
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 2110
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2119
    :cond_8
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected final getWaitQueueLength()I
    .locals 4

    .prologue
    .line 2211
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2212
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 2213
    :cond_0
    const/4 v0, 0x0

    .line 2214
    .local v0, n:I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, w:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 2215
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 2216
    add-int/lit8 v0, v0, 0x1

    .line 2214
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 2218
    :cond_2
    return v0
.end method

.method protected final getWaitingThreads()Ljava/util/Collection;
    .locals 5
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
    .line 2231
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2232
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 2233
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v2, w:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 2235
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 2236
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 2237
    .local v1, t:Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 2238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    .end local v1           #t:Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 2241
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    .prologue
    .line 2192
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2193
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 2194
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, w:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 2195
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 2196
    const/4 v1, 0x1

    .line 2198
    :goto_1
    return v1

    .line 2194
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 2198
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z
    .locals 1
    .parameter "sync"

    .prologue
    .line 2180
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final signal()V
    .locals 2

    .prologue
    .line 1919
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1920
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1921
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1922
    .local v0, first:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1923
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1924
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    .prologue
    .line 1934
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1935
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1936
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1937
    .local v0, first:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1938
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1939
    :cond_1
    return-void
.end method
