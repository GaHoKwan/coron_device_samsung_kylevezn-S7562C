.class public final Lnbisdk/dj;
.super Lnbisdk/nq;


# direct methods
.method public constructor <init>(Lnbisdk/zb;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/nq;-><init>(Lcom/navbuilder/nb/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0x61

    if-ne p2, v0, :cond_1

    check-cast p5, Lnbisdk/dx;

    check-cast p1, Lnbisdk/no;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "LoadCouponImageRequest: completed."

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    check-cast v0, Lnbisdk/zb;

    invoke-interface {v0, p5, p1}, Lnbisdk/zb;->a(Lnbisdk/dx;Lnbisdk/no;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Lnbisdk/nq;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    goto :goto_0
.end method
