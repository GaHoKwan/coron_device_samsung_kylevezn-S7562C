.class final Lnbisdk/ww;
.super Ljava/lang/Thread;


# instance fields
.field private BV:Lnbisdk/yz;

.field private cM:Lnbisdk/ir;

.field private volatile jy:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lnbisdk/yz;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatcher Thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x2000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ww;->cM:Lnbisdk/ir;

    iput-object p2, p0, Lnbisdk/ww;->BV:Lnbisdk/yz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized P()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/ww;->jy:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v1, p0, Lnbisdk/ww;->BV:Lnbisdk/yz;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lnbisdk/ww;->BV:Lnbisdk/yz;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lnbisdk/ww;->jy:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lnbisdk/ww;->BV:Lnbisdk/yz;

    invoke-virtual {v0}, Lnbisdk/yz;->pf()Lnbisdk/ru;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/ru;->P()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lnbisdk/ww;->cM:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lnbisdk/ww;->cM:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
