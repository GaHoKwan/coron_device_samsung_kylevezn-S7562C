.class public final Lnbisdk/zw;
.super Lnbisdk/uj;

# interfaces
.implements Lnbisdk/ap;


# instance fields
.field private FL:Lnbisdk/jr;

.field private FM:Lnbisdk/dt;


# direct methods
.method public constructor <init>(Lnbisdk/dt;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/uj;-><init>()V

    iput-object p1, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    invoke-interface {v0, p0}, Lnbisdk/dt;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    invoke-interface {v0, p2, p0}, Lnbisdk/dt;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    invoke-interface {v0, p2, p0}, Lnbisdk/dt;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 5

    const-wide/16 v3, 0x2

    const/4 v2, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    :try_start_0
    iget-object v0, p0, Lnbisdk/zw;->FL:Lnbisdk/jr;

    invoke-virtual {v0}, Lnbisdk/jr;->iJ()Lnbisdk/gu;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dg;->em()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/zw;->FL:Lnbisdk/jr;

    invoke-static {p2, v0}, Lnbisdk/bn;->b(Lnbisdk/ql;Lnbisdk/rt;)Lnbisdk/sq;

    move-result-object v0

    invoke-static {p2}, Lnbisdk/zw;->s(Lnbisdk/ql;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/sq;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lnbisdk/zw;->t(Lnbisdk/ql;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/sq;->d(Z)V

    invoke-static {p2}, Lnbisdk/bn;->o(Lnbisdk/ql;)Lnbisdk/bd;

    :goto_0
    iget-object v1, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    invoke-interface {v1, v0, p0}, Lnbisdk/dt;->a(Lnbisdk/zn;Lnbisdk/uj;)V

    iget-object v0, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    invoke-interface {v0, p0}, Lnbisdk/dt;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lnbisdk/bn;->b(Lnbisdk/ql;Lnbisdk/uz;)Lnbisdk/sq;

    move-result-object v0

    invoke-static {p2}, Lnbisdk/zw;->s(Lnbisdk/ql;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/sq;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Internal Exception on Local Search Handling"

    invoke-static {v1, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    iget-object v1, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v1, v2, p0}, Lnbisdk/dt;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_1
.end method

.method public final a(Lnbisdk/gu;)V
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

    new-instance v0, Lnbisdk/jr;

    invoke-direct {v0, p1, p0}, Lnbisdk/jr;-><init>(Lnbisdk/gu;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/zw;->FL:Lnbisdk/jr;

    iget-object v0, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    invoke-interface {v0, p0}, Lnbisdk/dt;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/zw;->FL:Lnbisdk/jr;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/zw;->FL:Lnbisdk/jr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/zw;->FL:Lnbisdk/jr;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/zw;->FL:Lnbisdk/jr;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/zw;->FM:Lnbisdk/dt;

    invoke-interface {v0, p0}, Lnbisdk/dt;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method
