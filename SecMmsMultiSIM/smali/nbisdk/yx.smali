.class public abstract Lnbisdk/yx;
.super Lnbisdk/aa;


# instance fields
.field private EF:Lnbisdk/ap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aa;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/qa;Lnbisdk/ap;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aa;-><init>()V

    iput-object p2, p0, Lnbisdk/yx;->EF:Lnbisdk/ap;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    invoke-super {p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/yx;->EF:Lnbisdk/ap;

    invoke-interface {v0, p1}, Lnbisdk/ap;->a(Lnbisdk/ag;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;I)V

    iget-object v0, p0, Lnbisdk/yx;->EF:Lnbisdk/ap;

    invoke-interface {v0, p1, p2}, Lnbisdk/ap;->a(Lnbisdk/ag;I)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    iget-object v0, p0, Lnbisdk/yx;->EF:Lnbisdk/ap;

    invoke-interface {v0, p1, p2}, Lnbisdk/ap;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 4

    const-string v0, "coupon-error"

    invoke-static {p2, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "load-image-error"

    invoke-static {p2, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/navbuilder/nb/NBException;

    const-string v2, "code"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lnbisdk/yx;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/yx;->EF:Lnbisdk/ap;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lnbisdk/ql;->aF(I)Lnbisdk/ql;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnbisdk/ap;->a(Lnbisdk/ag;Lnbisdk/ql;)V

    goto :goto_0
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "coupon"

    return-object v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    invoke-super {p0, p1}, Lnbisdk/aa;->d(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/yx;->EF:Lnbisdk/ap;

    invoke-interface {v0, p1}, Lnbisdk/ap;->d(Lnbisdk/ag;)V

    return-void
.end method
