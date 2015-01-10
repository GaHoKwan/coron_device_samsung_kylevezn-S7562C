.class public final Lnbisdk/ta;
.super Lnbisdk/gn;


# direct methods
.method public constructor <init>(Lnbisdk/ei;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/gn;-><init>(Lnbisdk/ei;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x4b

    if-ne p2, v0, :cond_0

    check-cast p5, Lnbisdk/vq;

    check-cast p1, Lnbisdk/mr;

    invoke-virtual {p0, p5, p1}, Lnbisdk/ta;->a(Lnbisdk/vq;Lnbisdk/mr;)V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lnbisdk/gn;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a(Lnbisdk/vq;Lnbisdk/mr;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    check-cast v0, Lnbisdk/ei;

    invoke-interface {v0, p1, p2}, Lnbisdk/ei;->a(Lnbisdk/vq;Lnbisdk/mr;)V

    :cond_0
    return-void
.end method
