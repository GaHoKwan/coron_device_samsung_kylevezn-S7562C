.class public Lcom/nbi/map/data/WeatherPOI;
.super Lcom/nbi/map/data/POI;


# instance fields
.field private Ed:Lnbisdk/mb;


# direct methods
.method public constructor <init>(Lcom/nbi/map/data/WeatherPlace;D)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/nbi/map/data/POI;-><init>(Lcom/nbi/map/data/Place;D)V

    new-instance v1, Lnbisdk/mb;

    invoke-virtual {p1}, Lcom/nbi/map/data/WeatherPlace;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ll;

    invoke-direct {v1, v0, p2, p3}, Lnbisdk/mb;-><init>(Lnbisdk/ll;D)V

    iput-object v1, p0, Lcom/nbi/map/data/WeatherPOI;->Ed:Lnbisdk/mb;

    iget-object v1, p0, Lcom/nbi/map/data/WeatherPOI;->Ed:Lnbisdk/mb;

    invoke-virtual {p1}, Lcom/nbi/map/data/WeatherPlace;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ll;

    invoke-virtual {v1, v0}, Lnbisdk/mb;->a(Lnbisdk/ll;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbi/map/data/POI;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lnbisdk/mb;

    iput-object p1, p0, Lcom/nbi/map/data/WeatherPOI;->Ed:Lnbisdk/mb;

    return-void
.end method


# virtual methods
.method public getWeatherPlace()Lcom/nbi/map/data/WeatherPlace;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/WeatherPlace;

    iget-object v1, p0, Lcom/nbi/map/data/WeatherPOI;->Ed:Lnbisdk/mb;

    invoke-virtual {v1}, Lnbisdk/mb;->jT()Lnbisdk/ll;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/WeatherPlace;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
