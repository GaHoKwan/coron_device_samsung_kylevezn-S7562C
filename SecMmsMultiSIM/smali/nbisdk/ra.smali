.class public final Lnbisdk/ra;
.super Lnbisdk/aa;


# instance fields
.field private cx:Lnbisdk/lc;

.field private wE:Lnbisdk/eh;

.field private wF:Lnbisdk/td;

.field private wG:Lnbisdk/uq;


# direct methods
.method constructor <init>(Lnbisdk/td;Lnbisdk/uq;Lnbisdk/eh;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aa;-><init>()V

    iput-object p3, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    iput-object p1, p0, Lnbisdk/ra;->wF:Lnbisdk/td;

    iput-object p2, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 2

    invoke-super {p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    iget-object v1, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-interface {v0, v1}, Lnbisdk/eh;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-virtual {v0}, Lnbisdk/uq;->R()V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;I)V

    iget-object v0, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    iget-object v1, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-interface {v0, p2, v1}, Lnbisdk/eh;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    iget-object v0, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    iget-object v1, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-interface {v0, p2, v1}, Lnbisdk/eh;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-virtual {v0}, Lnbisdk/uq;->R()V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 3

    const-string v0, "location"

    invoke-static {p2, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnbisdk/bo;

    invoke-direct {v1, v0}, Lnbisdk/bo;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v1}, Lnbisdk/bo;->bJ()Lnbisdk/lc;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ra;->cx:Lnbisdk/lc;

    iget-object v0, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    new-instance v1, Lnbisdk/tc;

    iget-object v2, p0, Lnbisdk/ra;->cx:Lnbisdk/lc;

    invoke-direct {v1, v2}, Lnbisdk/tc;-><init>(Lnbisdk/lc;)V

    iget-object v2, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-interface {v0, v1, v2}, Lnbisdk/eh;->a(Lnbisdk/ex;Lnbisdk/gk;)V

    iget-object v0, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    iget-object v1, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-interface {v0, v1}, Lnbisdk/eh;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    :goto_0
    iget-object v0, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-virtual {v0}, Lnbisdk/uq;->R()V

    return-void

    :cond_0
    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/16 v1, 0x7d9

    invoke-direct {v0, v1}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-super {p0, p1, v0}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    iget-object v1, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    iget-object v2, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-interface {v1, v0, v2}, Lnbisdk/eh;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 6

    iget-object v0, p0, Lnbisdk/ra;->wF:Lnbisdk/td;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-string v1, "language"

    invoke-static {p1, v1, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "scale"

    iget-object v1, p0, Lnbisdk/ra;->wF:Lnbisdk/td;

    invoke-virtual {v1}, Lnbisdk/td;->getScale()F

    move-result v1

    invoke-static {p1, v0, v1}, Lnbisdk/hz;->a(Lnbisdk/ze;Ljava/lang/String;F)V

    new-instance v0, Lnbisdk/ze;

    const-string v1, "position"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "variant"

    const-string v2, "point"

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnbisdk/bv;

    iget-object v2, p0, Lnbisdk/ra;->wF:Lnbisdk/td;

    invoke-virtual {v2}, Lnbisdk/td;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lnbisdk/ra;->wF:Lnbisdk/td;

    invoke-virtual {v4}, Lnbisdk/td;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lnbisdk/bv;-><init>(DD)V

    invoke-virtual {v1}, Lnbisdk/bv;->cb()Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/ra;->wF:Lnbisdk/td;

    return-void
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "reverse-geocode"

    return-object v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 2

    invoke-super {p0, p1}, Lnbisdk/aa;->d(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/ra;->wE:Lnbisdk/eh;

    iget-object v1, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-interface {v0, v1}, Lnbisdk/eh;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/ra;->wG:Lnbisdk/uq;

    invoke-virtual {v0}, Lnbisdk/uq;->R()V

    return-void
.end method
