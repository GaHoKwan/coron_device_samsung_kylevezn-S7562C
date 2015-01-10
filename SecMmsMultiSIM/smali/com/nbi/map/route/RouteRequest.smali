.class public Lcom/nbi/map/route/RouteRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/common/NBIRequest;


# instance fields
.field private ie:Lnbisdk/c;

.field private if:Lnbisdk/h;

.field private ig:Lcom/nbi/common/NBIContext;

.field private ih:Lcom/nbi/map/route/RouteListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/Place;Lcom/nbi/map/data/Place;Lcom/nbi/map/data/RouteOptions;Lcom/nbi/map/route/RouteListener;)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    new-instance v1, Lcom/nbi/map/data/Place;

    invoke-direct {v1}, Lcom/nbi/map/data/Place;-><init>()V

    invoke-virtual {v1, p2}, Lcom/nbi/map/data/Place;->copy(Lcom/nbi/map/data/Place;)V

    new-instance v2, Lcom/nbi/map/data/Place;

    invoke-direct {v2}, Lcom/nbi/map/data/Place;-><init>()V

    invoke-virtual {v2, p3}, Lcom/nbi/map/data/Place;->copy(Lcom/nbi/map/data/Place;)V

    iput-object p1, p0, Lcom/nbi/map/route/RouteRequest;->ig:Lcom/nbi/common/NBIContext;

    iput-object p5, p0, Lcom/nbi/map/route/RouteRequest;->ih:Lcom/nbi/map/route/RouteListener;

    new-instance v3, Lnbisdk/it;

    invoke-direct {v3}, Lnbisdk/it;-><init>()V

    sget-object v0, Lnbisdk/it;->nF:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nG:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nR:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nQ:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nI:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nN:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nK:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nJ:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nO:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nP:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    sget-object v0, Lnbisdk/it;->nT:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v8}, Lnbisdk/it;->a(Ljava/lang/Integer;Z)V

    invoke-static {}, Lnbisdk/mu;->ke()Lnbisdk/mu;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnbisdk/mu;->c(S)V

    invoke-virtual {p4}, Lcom/nbi/map/data/RouteOptions;->isPedestrian()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/mu;->ke()Lnbisdk/mu;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnbisdk/mu;->K(Z)V

    :cond_0
    new-instance v4, Lnbisdk/vb;

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->ih:Lcom/nbi/map/route/RouteListener;

    invoke-direct {v4, p0, v0}, Lnbisdk/vb;-><init>(Lcom/nbi/map/route/RouteRequest;Lcom/nbi/map/route/RouteListener;)V

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->ig:Lcom/nbi/common/NBIContext;

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v5

    new-instance v6, Lnbisdk/pr;

    invoke-direct {v6, v4}, Lnbisdk/pr;-><init>(Lnbisdk/jy;)V

    invoke-static {}, Lnbisdk/mu;->ke()Lnbisdk/mu;

    move-result-object v4

    iget-object v7, p0, Lcom/nbi/map/route/RouteRequest;->ig:Lcom/nbi/common/NBIContext;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lnbisdk/fk;->a(Lcom/nbi/common/NBIContext;Ljava/lang/String;)[Lnbisdk/lm;

    move-result-object v0

    new-instance v7, Lnbisdk/wj;

    invoke-direct {v7, v6}, Lnbisdk/wj;-><init>(Lnbisdk/ts;)V

    new-instance v6, Lnbisdk/vx;

    invoke-direct {v6, v7, v5, v4, v0}, Lnbisdk/vx;-><init>(Lnbisdk/jy;Lcom/navbuilder/nb/e;Lnbisdk/mu;[Lnbisdk/lm;)V

    iput-object v6, p0, Lcom/nbi/map/route/RouteRequest;->ie:Lnbisdk/c;

    new-instance v4, Lnbisdk/h;

    invoke-virtual {v1}, Lcom/nbi/map/data/Place;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/de;

    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/de;

    invoke-virtual {p4}, Lcom/nbi/map/data/RouteOptions;->getInternalObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/br;

    invoke-direct {v4, v0, v1, v2, v3}, Lnbisdk/h;-><init>(Lnbisdk/de;Lnbisdk/de;Lnbisdk/br;Lnbisdk/it;)V

    iput-object v4, p0, Lcom/nbi/map/route/RouteRequest;->if:Lnbisdk/h;

    iget-object v1, p0, Lcom/nbi/map/route/RouteRequest;->if:Lnbisdk/h;

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->if:Lnbisdk/h;

    invoke-virtual {v0, v8}, Lnbisdk/h;->b(Z)V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "origin is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "destination is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeOptions is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->ie:Lnbisdk/c;

    invoke-virtual {v0}, Lnbisdk/c;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->ie:Lnbisdk/c;

    return-object v0
.end method

.method public getNBIContext()Lcom/nbi/common/NBIContext;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->ig:Lcom/nbi/common/NBIContext;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->ie:Lnbisdk/c;

    invoke-virtual {v0}, Lnbisdk/c;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/route/RouteRequest;->ie:Lnbisdk/c;

    iget-object v1, p0, Lcom/nbi/map/route/RouteRequest;->if:Lnbisdk/h;

    invoke-virtual {v0, v1}, Lnbisdk/c;->a(Lnbisdk/h;)V

    return-void
.end method
