.class public final Lnbisdk/t;
.super Lnbisdk/ns;


# direct methods
.method public constructor <init>(Lnbisdk/wa;)V
    .locals 3

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mS()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gv;->gI()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/xc;

    invoke-direct {v0, p1}, Lnbisdk/xc;-><init>(Lnbisdk/wa;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lnbisdk/dz;->a(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Lnbisdk/hh;

    invoke-direct {v0, v1}, Lnbisdk/hh;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v0}, Lnbisdk/ns;-><init>(Lnbisdk/wa;)V

    return-void

    :cond_0
    new-instance v1, Lnbisdk/xc;

    invoke-direct {v1, p1}, Lnbisdk/xc;-><init>(Lnbisdk/wa;)V

    new-instance v0, Lnbisdk/hh;

    invoke-direct {v0, v1}, Lnbisdk/hh;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method
