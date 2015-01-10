.class public abstract Lnbisdk/lo;
.super Lnbisdk/dg;


# direct methods
.method constructor <init>(Lnbisdk/mi;Lnbisdk/gw;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/dg;-><init>(Lnbisdk/mi;)V

    iput-object p2, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    return-void
.end method


# virtual methods
.method public final e(Lnbisdk/gw;)V
    .locals 1

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/wc;

    invoke-virtual {v0, p1}, Lnbisdk/wc;->f(Lnbisdk/gw;)V

    return-void
.end method

.method public final k(J)V
    .locals 1

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/wc;

    invoke-virtual {v0, p1, p2}, Lnbisdk/wc;->p(J)V

    return-void
.end method

.method public final setStartTime(J)V
    .locals 1

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/wc;

    invoke-virtual {v0, p1, p2}, Lnbisdk/wc;->b(J)V

    return-void
.end method
