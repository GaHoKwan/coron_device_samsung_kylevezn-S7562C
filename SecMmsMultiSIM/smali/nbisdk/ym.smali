.class public final Lnbisdk/ym;
.super Lnbisdk/hi;

# interfaces
.implements Lnbisdk/ap;


# instance fields
.field private Ea:Lnbisdk/xq;

.field private Eb:Lnbisdk/eo;


# direct methods
.method public constructor <init>(Lnbisdk/eo;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/hi;-><init>()V

    iput-object p1, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    invoke-interface {v0, p0}, Lnbisdk/eo;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    invoke-interface {v0, p2, p0}, Lnbisdk/eo;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    invoke-interface {v0, p2, p0}, Lnbisdk/eo;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 5

    const-wide/16 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/ym;->Ea:Lnbisdk/xq;

    invoke-static {p2, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/rt;)Lnbisdk/sq;

    move-result-object v0

    invoke-static {p2}, Lnbisdk/ym;->s(Lnbisdk/ql;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/sq;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lnbisdk/ym;->t(Lnbisdk/ql;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/sq;->d(Z)V

    iget-object v1, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    invoke-interface {v1, v0, p0}, Lnbisdk/eo;->a(Lnbisdk/hc;Lnbisdk/hi;)V

    iget-object v0, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    invoke-interface {v0, p0}, Lnbisdk/eo;->onRequestComplete(Lcom/navbuilder/nb/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Internal Exception on Fuel Search Handling"

    invoke-static {v1, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    iget-object v1, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v1, v2, p0}, Lnbisdk/eo;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/ht;)V
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

    new-instance v0, Lnbisdk/xq;

    invoke-direct {v0, p1, p0}, Lnbisdk/xq;-><init>(Lnbisdk/dg;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/ym;->Ea:Lnbisdk/xq;

    iget-object v0, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    invoke-interface {v0, p0}, Lnbisdk/eo;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/ym;->Ea:Lnbisdk/xq;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ym;->Ea:Lnbisdk/xq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ym;->Ea:Lnbisdk/xq;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ym;->Ea:Lnbisdk/xq;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/md;->sx:Z

    iget-object v0, p0, Lnbisdk/ym;->Eb:Lnbisdk/eo;

    invoke-interface {v0, p0}, Lnbisdk/eo;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method
