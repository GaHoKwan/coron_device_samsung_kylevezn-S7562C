.class public Ljava/util/concurrent/CyclicBarrier;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CyclicBarrier$1;,
        Ljava/util/concurrent/CyclicBarrier$Generation;
    }
.end annotation


# instance fields
.field private final barrierCommand:Ljava/lang/Runnable;

.field private count:I

.field private generation:Ljava/util/concurrent/CyclicBarrier$Generation;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final parties:I

.field private final trip:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "parties"

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 2
    .parameter "parties"
    .parameter "barrierAction"

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    .line 128
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$1;)V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 242
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 243
    :cond_0
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    .line 244
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 245
    iput-object p2, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 246
    return-void
.end method

.method private breakBarrier()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    .line 155
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 156
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 157
    return-void
.end method

.method private dowait(ZJ)I
    .locals 9
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 165
    iget-object v4, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    .local v4, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 170
    .local v1, g:Ljava/util/concurrent/CyclicBarrier$Generation;
    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v6, :cond_0

    .line 171
    new-instance v6, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v6}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v1           #g:Ljava/util/concurrent/CyclicBarrier$Generation;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 173
    .restart local v1       #g:Ljava/util/concurrent/CyclicBarrier$Generation;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 175
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 178
    :cond_1
    iget v6, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    add-int/lit8 v3, v6, -0x1

    iput v3, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .local v3, index:I
    if-nez v3, :cond_5

    .line 180
    const/4 v5, 0x0

    .line 182
    .local v5, ranAction:Z
    :try_start_2
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 183
    .local v0, command:Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 185
    :cond_2
    const/4 v5, 0x1

    .line 186
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    const/4 v3, 0x0

    .line 189
    .end local v3           #index:I
    if-nez v5, :cond_3

    .line 190
    :try_start_3
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v0           #command:Ljava/lang/Runnable;
    .end local v5           #ranAction:Z
    :goto_0
    return v3

    .line 189
    .restart local v3       #index:I
    .restart local v5       #ranAction:Z
    :catchall_1
    move-exception v6

    if-nez v5, :cond_4

    .line 190
    :try_start_4
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    :cond_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    .end local v5           #ranAction:Z
    :cond_5
    if-nez p1, :cond_7

    .line 198
    :try_start_5
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 213
    :cond_6
    :goto_1
    :try_start_6
    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v6, :cond_9

    .line 214
    new-instance v6, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v6}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 199
    :cond_7
    cmp-long v6, p2, v7

    if-lez v6, :cond_6

    .line 200
    :try_start_7
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-wide p2

    goto :goto_1

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_8
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    if-ne v1, v6, :cond_8

    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-nez v6, :cond_8

    .line 203
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 204
    throw v2

    .line 209
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 216
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :cond_9
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eq v1, v6, :cond_a

    .line 225
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 219
    :cond_a
    if-eqz p1, :cond_5

    cmp-long v6, p2, v7

    if-gtz v6, :cond_5

    .line 220
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 221
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private nextGeneration()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 145
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 146
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$1;)V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 147
    return-void
.end method


# virtual methods
.method public await()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, toe:Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)I
    .locals 3
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0

    return v0
.end method

.method public getNumberWaiting()I
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 447
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 449
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 451
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getParties()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    return v0
.end method

.method public isBroken()Z
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 411
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 413
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    iget-boolean v1, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 430
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 432
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 433
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
