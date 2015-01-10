.class final Lnbisdk/yz;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# instance fields
.field private EP:Lnbisdk/nx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/yl;

    invoke-direct {v0, p0}, Lnbisdk/yl;-><init>(Lnbisdk/fz;)V

    iput-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lnbisdk/ru;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    invoke-virtual {v0, p1}, Lnbisdk/nx;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lnbisdk/ru;J)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time can\'t be less then 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iput-wide p2, p1, Lnbisdk/ru;->cK:J

    iget-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    invoke-virtual {v0, p1}, Lnbisdk/nx;->d(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lnbisdk/ru;

    check-cast p2, Lnbisdk/ru;

    iget-wide v0, p1, Lnbisdk/ru;->cK:J

    iget-wide v2, p2, Lnbisdk/ru;->cK:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lnbisdk/ru;->cK:J

    iget-wide v2, p2, Lnbisdk/ru;->cK:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized j(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    invoke-virtual {v0}, Lnbisdk/nx;->lb()Ljava/util/Enumeration;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ru;

    iget-object v5, v0, Lnbisdk/ru;->xt:Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lnbisdk/ru;->xt:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnbisdk/nx;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v1, v2

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final declared-synchronized pf()Lnbisdk/ru;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    invoke-virtual {v0}, Lnbisdk/nx;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ru;

    if-eqz v0, :cond_1

    iget-wide v4, v0, Lnbisdk/ru;->cK:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    invoke-virtual {v0}, Lnbisdk/nx;->la()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ru;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lnbisdk/yz;->EP:Lnbisdk/nx;

    invoke-virtual {v0}, Lnbisdk/nx;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ru;

    if-nez v0, :cond_3

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    iget-wide v4, v0, Lnbisdk/ru;->cK:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    iget-wide v4, v0, Lnbisdk/ru;->cK:J

    sub-long v2, v4, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
