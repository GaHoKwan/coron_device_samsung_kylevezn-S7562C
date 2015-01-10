.class public Lcom/nbi/search/weather/WeatherSearchRequest;
.super Lcom/nbi/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private gj:Lnbisdk/rd;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/Coordinates;ILcom/nbi/search/weather/WeatherSearchListener;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    invoke-static {p3}, Lnbisdk/lv;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lnbisdk/du;

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lnbisdk/ew;-><init>(DD)V

    invoke-direct {v1, v0}, Lnbisdk/du;-><init>(Lnbisdk/mi;)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/dg;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/nbi/search/weather/b;

    invoke-direct {v0, p0, p4}, Lcom/nbi/search/weather/b;-><init>(Lcom/nbi/search/weather/WeatherSearchRequest;Lcom/nbi/search/weather/WeatherSearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v2, Lnbisdk/mq;

    invoke-direct {v2, v0}, Lnbisdk/mq;-><init>(Lnbisdk/d;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v2, v0}, Lnbisdk/bj;->a(Lnbisdk/mq;Lcom/navbuilder/nb/e;)Lnbisdk/et;

    move-result-object v0

    new-instance v2, Lnbisdk/rd;

    invoke-direct {v2, v0, v1}, Lnbisdk/rd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nbi/search/weather/WeatherSearchRequest;->gj:Lnbisdk/rd;

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {v1, v6, v6, v7}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v6, v7, v6}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, v6, v6, v6}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p3}, Lnbisdk/lv;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedConfiguration is incorrect."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/weather/WeatherSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/weather/WeatherSearchRequest;->gj:Lnbisdk/rd;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/weather/WeatherSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/weather/WeatherSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/et;

    iget-object v1, p0, Lcom/nbi/search/weather/WeatherSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v1}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/du;

    invoke-virtual {v0, v1}, Lnbisdk/et;->a(Lnbisdk/du;)V

    return-void
.end method
