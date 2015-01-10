.class public final Lnbisdk/vb;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/jy;


# direct methods
.method public constructor <init>(Lcom/nbi/map/route/RouteRequest;Lcom/nbi/map/route/RouteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/kr;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/map/route/RouteListener;

    new-instance v2, Lnbisdk/ek;

    invoke-interface {p1}, Lnbisdk/kr;->p()Lnbisdk/hg;

    move-result-object v1

    invoke-direct {v2, v1}, Lnbisdk/ek;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/map/route/RouteRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/map/route/RouteListener;->onRoute(Lcom/nbi/map/route/RouteInformation;Lcom/nbi/map/route/RouteRequest;)V

    return-void
.end method

.method public final b(Lnbisdk/kr;)V
    .locals 0

    return-void
.end method
