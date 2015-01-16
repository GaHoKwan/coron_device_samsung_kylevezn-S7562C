.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RunnableScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/util/concurrent/RunnableScheduledFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field heapIndex:I

.field outerTask:Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final period:J

.field private final sequenceNumber:J

.field final synthetic this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private time:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .parameter
    .parameter "r"
    .parameter
    .parameter "ns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;J)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, result:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 179
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 168
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 180
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 182
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V
    .locals 2
    .parameter
    .parameter "r"
    .parameter
    .parameter "ns"
    .parameter "period"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;JJ)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p3, result:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 189
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 168
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 190
    iput-wide p4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 191
    iput-wide p6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 192
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 193
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;J)V
    .locals 2
    .parameter
    .parameter
    .parameter "ns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 199
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 168
    iput-object p0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 200
    iput-wide p3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 202
    invoke-static {}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 203
    return-void
.end method

.method static synthetic access$201(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static synthetic access$301(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->runAndReset()Z

    move-result v0

    return v0
.end method

.method private setNextRunTime()V
    .locals 5

    .prologue
    .line 242
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 243
    .local v0, p:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 244
    iget-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    neg-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 250
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    .line 251
    .local v0, cancelled:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #getter for: Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z
    invoke-static {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->access$100(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    if-ltz v1, :cond_0

    .line 252
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 14
    .parameter "other"

    .prologue
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const-wide/16 v12, 0x0

    .line 210
    if-ne p1, p0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v5

    .line 212
    :cond_1
    instance-of v8, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v8, :cond_5

    move-object v4, p1

    .line 213
    check-cast v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .line 214
    .local v4, x:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    iget-wide v8, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-wide v10, v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    sub-long v2, v8, v10

    .line 215
    .local v2, diff:J
    cmp-long v5, v2, v12

    if-gez v5, :cond_2

    move v5, v6

    .line 216
    goto :goto_0

    .line 217
    :cond_2
    cmp-long v5, v2, v12

    if-lez v5, :cond_3

    move v5, v7

    .line 218
    goto :goto_0

    .line 219
    :cond_3
    iget-wide v8, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    iget-wide v10, v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    move v5, v6

    .line 220
    goto :goto_0

    :cond_4
    move v5, v7

    .line 222
    goto :goto_0

    .line 224
    .end local v2           #diff:J
    .end local v4           #x:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<*>;"
    :cond_5
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v10}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 226
    .local v0, d:J
    cmp-long v8, v0, v12

    if-eqz v8, :cond_0

    cmp-long v5, v0, v12

    if-gez v5, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    move v5, v7

    goto :goto_0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .parameter "unit"

    .prologue
    .line 206
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPeriodic()Z
    .locals 4

    .prologue
    .line 235
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 260
    .local p0, this:Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,"Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->isPeriodic()Z

    move-result v0

    .line 261
    .local v0, periodic:Z
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->cancel(Z)Z

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    if-nez v0, :cond_2

    .line 264
    #calls: Ljava/util/concurrent/FutureTask;->run()V
    invoke-static {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->access$201(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)V

    goto :goto_0

    .line 265
    :cond_2
    #calls: Ljava/util/concurrent/FutureTask;->runAndReset()Z
    invoke-static {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->access$301(Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->setNextRunTime()V

    .line 267
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reExecutePeriodic(Ljava/util/concurrent/RunnableScheduledFuture;)V

    goto :goto_0
.end method
