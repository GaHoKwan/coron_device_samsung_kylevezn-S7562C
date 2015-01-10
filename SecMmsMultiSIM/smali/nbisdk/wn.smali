.class public final Lnbisdk/wn;
.super Lnbisdk/lh;

# interfaces
.implements Lnbisdk/ap;


# instance fields
.field private BF:Lnbisdk/zl;

.field private BG:Lnbisdk/lp;


# direct methods
.method public constructor <init>(Lnbisdk/lp;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/lh;-><init>()V

    iput-object p1, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    invoke-interface {v0, p0}, Lnbisdk/lp;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    invoke-interface {v0, p2, p0}, Lnbisdk/lp;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    invoke-interface {v0, p2, p0}, Lnbisdk/lp;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 6

    const-wide/16 v4, 0x2

    const/4 v3, 0x2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    new-instance v1, Lnbisdk/xy;

    invoke-direct {v1}, Lnbisdk/xy;-><init>()V

    const-string v0, "proxmatch"

    invoke-virtual {p2, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bn;->l(Lnbisdk/ql;)Lnbisdk/fd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/xy;->a(Lnbisdk/fd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Internal Exception on Local Search Handling"

    invoke-static {v1, v4, v5, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-static {v0, v4, v5, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    iget-object v1, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v1, v2, p0}, Lnbisdk/lp;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-static {p2}, Lnbisdk/wn;->s(Lnbisdk/ql;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/xy;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lnbisdk/wn;->t(Lnbisdk/ql;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lnbisdk/xy;->d(Z)V

    iget-object v0, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    invoke-interface {v0, v1, p0}, Lnbisdk/lp;->a(Lnbisdk/df;Lnbisdk/lh;)V

    iget-object v0, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    invoke-interface {v0, p0}, Lnbisdk/lp;->onRequestComplete(Lcom/navbuilder/nb/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Lnbisdk/ps;)V
    .locals 2

    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    new-instance v0, Lnbisdk/zl;

    invoke-direct {v0, p1, p0}, Lnbisdk/zl;-><init>(Lnbisdk/dg;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/wn;->BF:Lnbisdk/zl;

    iget-object v0, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    invoke-interface {v0, p0}, Lnbisdk/lp;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/wn;->BF:Lnbisdk/zl;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/wn;->BF:Lnbisdk/zl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/wn;->BF:Lnbisdk/zl;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/wn;->BF:Lnbisdk/zl;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/wn;->BG:Lnbisdk/lp;

    invoke-interface {v0, p0}, Lnbisdk/lp;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method
