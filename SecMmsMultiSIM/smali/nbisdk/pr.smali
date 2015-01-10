.class public final Lnbisdk/pr;
.super Lnbisdk/nq;


# direct methods
.method public constructor <init>(Lnbisdk/jy;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/nq;-><init>(Lcom/navbuilder/nb/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Lnbisdk/nq;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    check-cast p5, Lnbisdk/kr;

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    check-cast v0, Lnbisdk/jy;

    invoke-interface {v0, p5}, Lnbisdk/jy;->a(Lnbisdk/kr;)V

    goto :goto_0

    :pswitch_1
    check-cast p5, Lnbisdk/kr;

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    check-cast v0, Lnbisdk/jy;

    invoke-interface {v0, p5}, Lnbisdk/jy;->b(Lnbisdk/kr;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
