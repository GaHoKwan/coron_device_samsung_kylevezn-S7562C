.class public final Lnbisdk/a;
.super Lnbisdk/nq;


# direct methods
.method public constructor <init>(Lnbisdk/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/nq;-><init>(Lcom/navbuilder/nb/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x62

    if-ne p2, v0, :cond_1

    check-cast p5, Lnbisdk/hy;

    check-cast p1, Lnbisdk/jc;

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    check-cast v0, Lnbisdk/o;

    invoke-interface {v0, p5, p1}, Lnbisdk/o;->a(Lnbisdk/hy;Lnbisdk/jc;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Lnbisdk/nq;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    goto :goto_0
.end method