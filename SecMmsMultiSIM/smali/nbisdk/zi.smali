.class public final Lnbisdk/zi;
.super Lnbisdk/aa;


# instance fields
.field private Fi:Lnbisdk/bf;

.field private Fj:Lnbisdk/rl;

.field private Fk:Ljava/util/Vector;

.field private Fl:Lnbisdk/pi;

.field private Fm:Lnbisdk/ry;


# direct methods
.method constructor <init>(Lnbisdk/bf;Lnbisdk/ry;Lnbisdk/rl;)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/aa;-><init>()V

    iput-object p1, p0, Lnbisdk/zi;->Fi:Lnbisdk/bf;

    iput-object p3, p0, Lnbisdk/zi;->Fj:Lnbisdk/rl;

    iput-object p2, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-virtual {p1}, Lnbisdk/bf;->bb()Lnbisdk/pi;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/zi;->Fl:Lnbisdk/pi;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 2

    invoke-super {p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/zi;->Fj:Lnbisdk/rl;

    iget-object v1, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-interface {v0, v1}, Lnbisdk/rl;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-virtual {v0}, Lnbisdk/ry;->R()V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;I)V

    iget-object v0, p0, Lnbisdk/zi;->Fj:Lnbisdk/rl;

    iget-object v1, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-interface {v0, p2, v1}, Lnbisdk/rl;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    iget-object v0, p0, Lnbisdk/zi;->Fj:Lnbisdk/rl;

    iget-object v1, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-interface {v0, p2, v1}, Lnbisdk/rl;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-virtual {v0}, Lnbisdk/ry;->R()V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 4

    const-string v0, "sliceres"

    invoke-static {p2, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    new-instance v1, Lnbisdk/pi;

    invoke-direct {v1}, Lnbisdk/pi;-><init>()V

    const-string v2, "start"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lnbisdk/pi;->setStart(I)V

    const-string v2, "end"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lnbisdk/pi;->setEnd(I)V

    const-string v2, "total"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lnbisdk/pi;->setTotal(I)V

    iput-object v1, p0, Lnbisdk/zi;->Fl:Lnbisdk/pi;

    new-instance v0, Ljava/util/Vector;

    invoke-virtual {p2}, Lnbisdk/ql;->am()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/zi;->Fk:Ljava/util/Vector;

    const-string v0, "locmatch"

    invoke-virtual {p2, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    iget-object v2, p0, Lnbisdk/zi;->Fk:Ljava/util/Vector;

    invoke-static {v0}, Lnbisdk/bo;->p(Lnbisdk/ql;)Lnbisdk/uv;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnbisdk/gc;

    invoke-direct {v0}, Lnbisdk/gc;-><init>()V

    iget-object v1, p0, Lnbisdk/zi;->Fk:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lnbisdk/gc;->a(Ljava/util/Vector;)V

    iget-object v1, p0, Lnbisdk/zi;->Fl:Lnbisdk/pi;

    invoke-virtual {v0, v1}, Lnbisdk/gc;->b(Lnbisdk/pi;)V

    iget-object v1, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-virtual {v1}, Lnbisdk/ry;->R()V

    iget-object v1, p0, Lnbisdk/zi;->Fj:Lnbisdk/rl;

    iget-object v2, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-interface {v1, v0, v2}, Lnbisdk/rl;->a(Lnbisdk/gc;Lnbisdk/um;)V

    iget-object v0, p0, Lnbisdk/zi;->Fj:Lnbisdk/rl;

    iget-object v1, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-interface {v0, v1}, Lnbisdk/rl;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 4

    iget-object v0, p0, Lnbisdk/zi;->Fi:Lnbisdk/bf;

    invoke-virtual {v0}, Lnbisdk/bf;->ba()Lnbisdk/lc;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/bl;->b(Lnbisdk/lc;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/zi;->Fl:Lnbisdk/pi;

    new-instance v1, Lnbisdk/ze;

    const-string v2, "sliceres"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "start"

    invoke-virtual {v0}, Lnbisdk/pi;->getStart()I

    move-result v3

    invoke-static {v1, v2, v3}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v2, "end"

    invoke-virtual {v0}, Lnbisdk/pi;->getEnd()I

    move-result v3

    invoke-static {v1, v2, v3}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v2, "total"

    invoke-virtual {v0}, Lnbisdk/pi;->getTotal()I

    move-result v0

    invoke-static {v1, v2, v0}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/zi;->Fi:Lnbisdk/bf;

    invoke-virtual {v0}, Lnbisdk/bf;->bc()Lnbisdk/mi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/zi;->Fi:Lnbisdk/bf;

    invoke-virtual {v0}, Lnbisdk/bf;->bc()Lnbisdk/mi;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/bd;->a(Lnbisdk/mi;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/zi;->Fi:Lnbisdk/bf;

    invoke-virtual {v0}, Lnbisdk/bf;->ba()Lnbisdk/lc;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/zi;->Fi:Lnbisdk/bf;

    invoke-virtual {v1}, Lnbisdk/bf;->bb()Lnbisdk/pi;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/zi;->Fi:Lnbisdk/bf;

    invoke-virtual {v2}, Lnbisdk/bf;->bc()Lnbisdk/mi;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(Lnbisdk/lc;Lnbisdk/pi;Lnbisdk/mi;)V

    :cond_1
    return-void
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "geocode"

    return-object v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 2

    invoke-super {p0, p1}, Lnbisdk/aa;->d(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/zi;->Fj:Lnbisdk/rl;

    iget-object v1, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-interface {v0, v1}, Lnbisdk/rl;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/zi;->Fm:Lnbisdk/ry;

    invoke-virtual {v0}, Lnbisdk/ry;->R()V

    return-void
.end method
