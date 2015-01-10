.class final Lnbisdk/te;
.super Lnbisdk/aa;


# instance fields
.field private ya:Lnbisdk/rx;

.field private yb:Lnbisdk/xi;

.field private yc:Lnbisdk/rj;


# direct methods
.method constructor <init>(Lnbisdk/rx;Lnbisdk/rj;Lnbisdk/xi;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aa;-><init>()V

    iput-object p1, p0, Lnbisdk/te;->ya:Lnbisdk/rx;

    iput-object p3, p0, Lnbisdk/te;->yb:Lnbisdk/xi;

    iput-object p2, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    return-void
.end method

.method private R()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/te;->yb:Lnbisdk/xi;

    invoke-virtual {v0}, Lnbisdk/xi;->P()V

    iput-object v1, p0, Lnbisdk/te;->yb:Lnbisdk/xi;

    iput-object v1, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    invoke-static {v0}, Lnbisdk/ck;->r(I)V

    :cond_0
    invoke-super {p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    iget-object v1, p0, Lnbisdk/te;->yb:Lnbisdk/xi;

    invoke-virtual {v0, v1}, Lnbisdk/rj;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    invoke-direct {p0}, Lnbisdk/te;->R()V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;I)V

    iget-object v0, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    iget-object v1, p0, Lnbisdk/te;->yb:Lnbisdk/xi;

    invoke-virtual {v0, p2, v1}, Lnbisdk/rj;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lnbisdk/ck;->r(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    iget-object v0, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    iget-object v1, p0, Lnbisdk/te;->yb:Lnbisdk/xi;

    invoke-virtual {v0, p2, v1}, Lnbisdk/rj;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    invoke-direct {p0}, Lnbisdk/te;->R()V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "use-location-setting"

    invoke-static {p2, v2}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    invoke-virtual {v2, v0}, Lnbisdk/rj;->R(Z)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_6

    const-string v2, "networklocation-position"

    invoke-static {p2, v2}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "networklocation-position"

    invoke-static {p2, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    new-instance v2, Lnbisdk/dd;

    new-instance v3, Lnbisdk/ew;

    const-string v4, "lat"

    invoke-static {v1, v4}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "lon"

    invoke-static {v1, v6}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lnbisdk/ew;-><init>(DD)V

    const-string v4, "accuracy"

    invoke-static {v1, v4}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    const-string v5, "sourcetype"

    invoke-static {v1, v5}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lnbisdk/dd;-><init>(Lnbisdk/cl;ILjava/lang/String;)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lnbisdk/ck;->a(Lnbisdk/dd;)V

    :cond_0
    iget-object v1, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    invoke-virtual {v1, v2}, Lnbisdk/rj;->b(Lnbisdk/dd;)V

    move v1, v0

    :cond_1
    const-string v0, "networklocation-error"

    invoke-static {p2, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "networklocation-error"

    invoke-static {p2, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    const-string v2, "code"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    sget-boolean v2, Lnbisdk/me;->sE:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Lnbisdk/ck;->r(I)V

    :cond_2
    iget-object v0, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    const-string v2, "networklocation-error"

    invoke-static {p2, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v2

    const-string v3, "code"

    invoke-static {v2, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lnbisdk/rj;->aZ(I)V

    :cond_3
    const-string v0, "confidence-value"

    invoke-static {p2, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    const-string v0, "location-tile"

    invoke-virtual {p2, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    new-instance v4, Lnbisdk/yf;

    const-string v5, "tile-x"

    invoke-static {v0, v5}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    const-string v6, "tile-y"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    const-string v7, "db-fragment"

    invoke-virtual {v0, v7}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lnbisdk/yf;-><init>(II[B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    invoke-virtual {v2, v1}, Lnbisdk/rj;->R(Z)Z

    move-result v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    invoke-virtual {v0, v3, v1}, Lnbisdk/rj;->a(Ljava/util/Vector;Z)V

    :cond_6
    invoke-direct {p0}, Lnbisdk/te;->R()V

    return-void
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/te;->ya:Lnbisdk/rx;

    invoke-static {p1, v0}, Lnbisdk/do;->a(Lnbisdk/ze;Lnbisdk/rx;)V

    return-void
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1005

    invoke-static {v0}, Lnbisdk/ck;->r(I)V

    :cond_0
    invoke-super {p0, p1}, Lnbisdk/aa;->d(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/te;->yc:Lnbisdk/rj;

    iget-object v1, p0, Lnbisdk/te;->yb:Lnbisdk/xi;

    invoke-virtual {v0, v1}, Lnbisdk/rj;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    invoke-direct {p0}, Lnbisdk/te;->R()V

    return-void
.end method
