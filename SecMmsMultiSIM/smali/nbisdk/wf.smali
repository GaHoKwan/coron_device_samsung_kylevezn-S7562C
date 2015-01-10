.class public final Lnbisdk/wf;
.super Lnbisdk/mr;

# interfaces
.implements Lnbisdk/ap;


# instance fields
.field private Bq:Lnbisdk/xa;

.field private Br:Lnbisdk/ei;


# direct methods
.method public constructor <init>(Lnbisdk/ei;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/mr;-><init>()V

    iput-object p1, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    invoke-interface {v0, p0}, Lnbisdk/ei;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    invoke-interface {v0, p2, p0}, Lnbisdk/ei;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    invoke-interface {v0, p2, p0}, Lnbisdk/ei;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final declared-synchronized a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lnbisdk/md;->sx:Z

    new-instance v9, Lnbisdk/xm;

    invoke-direct {v9}, Lnbisdk/xm;-><init>()V

    invoke-virtual {p2}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v10

    const/4 v1, 0x0

    move v8, v1

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lnbisdk/ql;

    move-object v7, v0

    invoke-virtual {v7}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxmatch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v7}, Lnbisdk/bn;->k(Lnbisdk/ql;)Lnbisdk/pb;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;

    add-int/lit8 v1, v8, 0x1

    invoke-static {v3, v8}, Lnbisdk/bn;->a(Lnbisdk/rt;I)Lnbisdk/sp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/uz;->f(Ljava/lang/Object;)V

    invoke-virtual {v9, v2}, Lnbisdk/xm;->a(Lnbisdk/pb;)V

    move v8, v1

    goto :goto_1

    :cond_2
    const-string v2, "proxmatch-summary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "count"

    invoke-static {v7, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "time"

    invoke-virtual {v7, v1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v6

    const-wide/16 v3, 0x0

    array-length v1, v6

    const/16 v5, 0x8

    if-le v1, v5, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "beunpack input too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Internal Exception on Event Search Handling"

    const-wide/16 v3, 0x20

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    const-wide/16 v2, 0x20

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    iget-object v2, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    new-instance v3, Lcom/navbuilder/nb/NBException;

    const/16 v4, 0x42

    invoke-direct {v3, v4, v1}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v2, v3, p0}, Lnbisdk/ei;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_3
    array-length v1, v6

    add-int/lit8 v5, v1, -0x1

    const/4 v1, 0x0

    :goto_2
    if-ltz v5, :cond_4

    aget-byte v11, v6, v5

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    shl-long/2addr v11, v1

    or-long/2addr v3, v11

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "beunpack result is negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v1, "utc-offset"

    invoke-static {v7, v1}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v1, Lnbisdk/bi;

    invoke-direct/range {v1 .. v6}, Lnbisdk/bi;-><init>(IJJ)V

    const-string v2, "category"

    invoke-static {v7, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/g;->a(Lnbisdk/ql;)Lnbisdk/qc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/bi;->b(Lnbisdk/qc;)V

    new-instance v2, Lnbisdk/yg;

    const-string v3, "search-filter"

    invoke-static {v7, v3}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v3

    invoke-direct {v2, v3}, Lnbisdk/yg;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v1, v2}, Lnbisdk/bi;->a(Lnbisdk/gw;)V

    const-string v2, "event-content"

    invoke-virtual {v7, v2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    if-eqz v3, :cond_6

    :goto_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/ql;

    invoke-static {v2}, Lnbisdk/bm;->h(Lnbisdk/ql;)Lnbisdk/je;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/bi;->a(Lnbisdk/je;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v1}, Lnbisdk/xm;->a(Lnbisdk/bi;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "proxmatch-content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "event-content"

    invoke-static {v7, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/bm;->h(Lnbisdk/ql;)Lnbisdk/je;

    move-result-object v1

    new-instance v2, Lnbisdk/yg;

    const-string v3, "search-filter"

    invoke-static {v7, v3}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v3

    invoke-direct {v2, v3}, Lnbisdk/yg;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v1, v2}, Lnbisdk/je;->d(Lnbisdk/gw;)V

    invoke-virtual {v9, v1}, Lnbisdk/xm;->b(Lnbisdk/je;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {p2}, Lnbisdk/wf;->s(Lnbisdk/ql;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Lnbisdk/xm;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lnbisdk/wf;->t(Lnbisdk/ql;)Z

    move-result v1

    invoke-virtual {v9, v1}, Lnbisdk/xm;->d(Z)V

    iget-object v1, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    invoke-interface {v1, v9, p0}, Lnbisdk/ei;->a(Lnbisdk/vq;Lnbisdk/mr;)V

    iget-object v1, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    invoke-interface {v1, p0}, Lnbisdk/ei;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Lnbisdk/lo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    new-instance v0, Lnbisdk/xa;

    invoke-direct {v0, p1, p0}, Lnbisdk/xa;-><init>(Lnbisdk/dg;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;

    iget-object v0, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    invoke-interface {v0, p0}, Lnbisdk/ei;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized cancelRequest()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/wf;->Bq:Lnbisdk/xa;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/wf;->Br:Lnbisdk/ei;

    invoke-interface {v0, p0}, Lnbisdk/ei;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    return v0
.end method
