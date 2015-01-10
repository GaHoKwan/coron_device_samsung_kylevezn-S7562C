.class public Lnbisdk/nq;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ts;


# instance fields
.field protected uc:Lcom/navbuilder/nb/d;


# direct methods
.method public constructor <init>(Lcom/navbuilder/nb/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p1}, Lcom/navbuilder/nb/d;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p1}, Lcom/navbuilder/nb/d;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p3, p1}, Lcom/navbuilder/nb/d;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p4, p1}, Lcom/navbuilder/nb/d;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p1}, Lcom/navbuilder/nb/d;->onRequestStart(Lcom/navbuilder/nb/b;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nq;->uc:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p1}, Lcom/navbuilder/nb/d;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
