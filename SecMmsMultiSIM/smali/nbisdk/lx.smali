.class public final Lnbisdk/lx;
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

    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    check-cast p5, Lnbisdk/vq;

    check-cast p1, Lnbisdk/mr;

    invoke-virtual {p0, p5, p1}, Lnbisdk/lx;->a(Lnbisdk/vq;Lnbisdk/mr;)V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lnbisdk/gn;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a(Lnbisdk/vq;Lnbisdk/mr;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventSummarySearch got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/vq;->nY()I

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

    check-cast v0, Lnbisdk/ei;

    invoke-interface {v0, p1, p2}, Lnbisdk/ei;->a(Lnbisdk/vq;Lnbisdk/mr;)V

    :cond_0
    return-void
.end method
