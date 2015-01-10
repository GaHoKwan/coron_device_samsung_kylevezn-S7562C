.class public final Lnbisdk/qp;
.super Lnbisdk/fb;


# instance fields
.field private vL:Lnbisdk/jp;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 1

    invoke-direct {p0, p1}, Lnbisdk/fb;-><init>(Lnbisdk/ds;)V

    new-instance v0, Lnbisdk/oq;

    invoke-direct {v0, p0}, Lnbisdk/oq;-><init>(Lnbisdk/qp;)V

    iput-object v0, p0, Lnbisdk/qp;->vL:Lnbisdk/jp;

    return-void
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lnbisdk/fb;->lL()Lnbisdk/ph;

    move-result-object v1

    iput-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v2, p0, Lnbisdk/qp;->vL:Lnbisdk/jp;

    invoke-super {p0}, Lnbisdk/fb;->lJ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnbisdk/ph;->a(Lnbisdk/jp;Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final ao()Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lnbisdk/qp;->e()Z

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-interface {v0}, Lnbisdk/ph;->requestLocationFix()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    const/16 v1, 0x2346

    invoke-interface {v0, v1}, Lnbisdk/ph;->onLocationError(I)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
