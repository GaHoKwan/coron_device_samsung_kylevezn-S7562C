.class public abstract Lnbisdk/v;
.super Lnbisdk/x;


# direct methods
.method protected constructor <init>(Lnbisdk/dz;Lnbisdk/ev;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lnbisdk/x;-><init>(Lnbisdk/dz;Lnbisdk/ev;Z)V

    new-instance v0, Lnbisdk/ae;

    iget-object v1, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-direct {v0, p0, v1, p3}, Lnbisdk/ae;-><init>(Lnbisdk/v;Lnbisdk/gv;Z)V

    iput-object v0, p0, Lnbisdk/x;->aM:Lnbisdk/s;

    return-void
.end method


# virtual methods
.method public final L()V
    .locals 0

    return-void
.end method

.method protected final declared-synchronized M()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/x;->aH:Z

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/x;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lnbisdk/v;->N()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnbisdk/kt; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lnbisdk/v;->O()V

    iget-boolean v0, p0, Lnbisdk/x;->aH:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnbisdk/v;->M()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final N()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    invoke-virtual {v0}, Lnbisdk/ag;->aI()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v3, Lnbisdk/ao;

    invoke-virtual {v0}, Lnbisdk/ag;->am()I

    invoke-direct {v3, p0}, Lnbisdk/ao;-><init>(Lnbisdk/v;)V

    :try_start_0
    invoke-virtual {v0, v3}, Lnbisdk/ag;->a(Lnbisdk/ar;)V

    invoke-virtual {v0}, Lnbisdk/ag;->aK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Lcom/navbuilder/nb/NBException;

    const/16 v5, 0x7d0

    invoke-direct {v4, v5, v1}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-virtual {v0, v4}, Lnbisdk/ag;->e(Lcom/navbuilder/nb/NBException;)V

    invoke-virtual {p0, v0}, Lnbisdk/x;->c(Lnbisdk/ag;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected final O()V
    .locals 4

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lnbisdk/ag;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0x7d2

    invoke-direct {v2, v3}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-virtual {v0, v2}, Lnbisdk/ag;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/navbuilder/nb/NBException;)V
    .locals 0

    return-void
.end method
