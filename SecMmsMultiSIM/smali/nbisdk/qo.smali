.class public final Lnbisdk/qo;
.super Lnbisdk/yx;


# instance fields
.field private vJ:Lnbisdk/pe;


# direct methods
.method public constructor <init>(Lnbisdk/pe;Lnbisdk/ap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/yx;-><init>(Lnbisdk/qa;Lnbisdk/ap;)V

    iput-object p1, p0, Lnbisdk/qo;->vJ:Lnbisdk/pe;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ze;)V
    .locals 2

    new-instance v0, Lnbisdk/ze;

    const-string v1, "coupon-request"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v1, p0, Lnbisdk/qo;->vJ:Lnbisdk/pe;

    invoke-virtual {v1}, Lnbisdk/pe;->bc()Lnbisdk/mi;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ir;->a(Lnbisdk/ze;Lnbisdk/mi;)V

    iget-object v1, p0, Lnbisdk/qo;->vJ:Lnbisdk/pe;

    invoke-static {v0, v1}, Lnbisdk/ir;->a(Lnbisdk/ze;Lnbisdk/ih;)V

    iget-object v1, p0, Lnbisdk/qo;->vJ:Lnbisdk/pe;

    invoke-static {v0, v1}, Lnbisdk/ir;->b(Lnbisdk/ze;Lnbisdk/ih;)V

    iget-object v1, p0, Lnbisdk/qo;->vJ:Lnbisdk/pe;

    invoke-virtual {v1}, Lnbisdk/qa;->dY()Lnbisdk/gw;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ir;->a(Lnbisdk/ze;Lnbisdk/gw;)V

    return-void
.end method
