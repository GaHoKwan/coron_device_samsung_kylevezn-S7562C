.class public final Lnbisdk/at;
.super Lnbisdk/vh;

# interfaces
.implements Lnbisdk/iu;


# direct methods
.method public constructor <init>(Lnbisdk/ts;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/vh;-><init>(Lnbisdk/ts;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnbisdk/vh;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lcom/navbuilder/nb/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnbisdk/vh;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/hn;Lcom/navbuilder/nb/b;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, p2, p0, v1, p1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;ILjava/lang/Object;)V

    return-void
.end method
