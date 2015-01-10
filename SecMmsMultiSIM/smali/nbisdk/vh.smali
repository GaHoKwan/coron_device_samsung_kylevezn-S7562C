.class public Lnbisdk/vh;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ts;


# instance fields
.field private mi:Lnbisdk/ts;


# direct methods
.method protected constructor <init>(Lnbisdk/ts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/vh;->mi:Lnbisdk/ts;

    return-void
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lnbisdk/vh;->mi:Lnbisdk/ts;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnbisdk/ts;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    return-void
.end method

.method public onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, p1, p0, v1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;I)V

    return-void
.end method

.method public onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, p1, p0, v1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;I)V

    return-void
.end method

.method public onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, p2, p0, v1, p1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;ILcom/navbuilder/nb/NBException;)V

    return-void
.end method

.method public onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, p2, p0, v1, p1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;II)V

    return-void
.end method

.method public onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, p1, p0, v1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;I)V

    return-void
.end method

.method public onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, p1, p0, v1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;I)V

    return-void
.end method
