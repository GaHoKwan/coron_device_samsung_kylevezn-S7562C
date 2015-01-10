.class public final Lnbisdk/wr;
.super Lnbisdk/ef;


# instance fields
.field private BI:Lnbisdk/ml;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/ef;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/pk;)Lnbisdk/kc;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/ef;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lnbisdk/ey;->a(Lnbisdk/pk;Landroid/content/Context;)Lnbisdk/ey;

    move-result-object v0

    goto :goto_0
.end method

.method public final eL()Lnbisdk/hv;
    .locals 1

    invoke-virtual {p0}, Lnbisdk/ef;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/remote/location/c;->d(Landroid/content/Context;)Lnbisdk/hv;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnbisdk/ef;->eL()Lnbisdk/hv;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final eM()Lnbisdk/rk;
    .locals 3

    iget-object v0, p0, Lnbisdk/wr;->BI:Lnbisdk/ml;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/ml;

    invoke-virtual {p0}, Lnbisdk/ef;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-super {p0}, Lnbisdk/ef;->eM()Lnbisdk/rk;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnbisdk/ml;-><init>(Landroid/content/Context;Lnbisdk/rk;)V

    iput-object v0, p0, Lnbisdk/wr;->BI:Lnbisdk/ml;

    :cond_0
    iget-object v0, p0, Lnbisdk/wr;->BI:Lnbisdk/ml;

    return-object v0
.end method

.method public final eN()Lnbisdk/ph;
    .locals 1

    invoke-virtual {p0}, Lnbisdk/ef;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/remote/location/m;->p(Landroid/content/Context;)Lnbisdk/ph;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnbisdk/ef;->eN()Lnbisdk/ph;

    move-result-object v0

    :cond_0
    return-object v0
.end method
