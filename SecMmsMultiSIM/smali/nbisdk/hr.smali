.class public final Lnbisdk/hr;
.super Lnbisdk/lo;


# direct methods
.method public constructor <init>(Lnbisdk/mi;)V
    .locals 1

    new-instance v0, Lnbisdk/yq;

    invoke-direct {v0}, Lnbisdk/yq;-><init>()V

    invoke-direct {p0, p1, v0}, Lnbisdk/lo;-><init>(Lnbisdk/mi;Lnbisdk/gw;)V

    const-string v0, "event"

    iput-object v0, p0, Lnbisdk/dg;->fC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ak(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/yq;

    new-instance v1, Lnbisdk/vl;

    const-string v2, "event-type"

    invoke-direct {v1, v2, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    return-void
.end method

.method public final al(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/yq;

    new-instance v1, Lnbisdk/vl;

    const-string v2, "rating"

    invoke-direct {v1, v2, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    return-void
.end method

.method public final hw()V
    .locals 1

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/yq;

    invoke-virtual {v0}, Lnbisdk/yq;->R()V

    return-void
.end method
