.class public final Lnbisdk/n;
.super Lnbisdk/nq;


# direct methods
.method public constructor <init>(Lnbisdk/eo;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/nq;-><init>(Lcom/navbuilder/nb/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0x1f

    if-ne p2, v0, :cond_1

    check-cast p5, Lnbisdk/hc;

    check-cast p1, Lnbisdk/hi;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FuelSearch got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lnbisdk/hc;->getResultCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " results."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    check-cast v0, Lnbisdk/eo;

    invoke-interface {v0, p5, p1}, Lnbisdk/eo;->a(Lnbisdk/hc;Lnbisdk/hi;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Lnbisdk/nq;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    goto :goto_0
.end method
