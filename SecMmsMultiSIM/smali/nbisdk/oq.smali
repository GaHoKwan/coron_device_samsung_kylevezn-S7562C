.class final Lnbisdk/oq;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jp;


# instance fields
.field private synthetic uy:Lnbisdk/qp;


# direct methods
.method constructor <init>(Lnbisdk/qp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/fb;->cq:J

    iget-object v0, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    iput-object p1, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    iget-object v0, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    iget-object v1, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->d(Lnbisdk/nb;)V

    iget-object v0, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    invoke-virtual {v0}, Lnbisdk/fb;->cancel()Z

    goto :goto_0
.end method

.method public final onLocationError(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnbisdk/fb;->vj:Z

    iget-object v0, p0, Lnbisdk/oq;->uy:Lnbisdk/qp;

    invoke-static {p1}, Lnbisdk/qp;->bf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/fb;->be(I)V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 0

    return-void
.end method
