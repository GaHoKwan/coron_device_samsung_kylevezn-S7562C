.class public Lcom/nbi/map/data/WeatherPlace;
.super Lcom/nbi/map/data/Place;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private xM:Lnbisdk/ll;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lnbisdk/ll;

    iput-object p1, p0, Lcom/nbi/map/data/WeatherPlace;->xM:Lnbisdk/ll;

    return-void
.end method


# virtual methods
.method public addWeatherForecast(Lcom/nbi/map/data/WeatherForecast;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nbi/map/data/WeatherPlace;->xM:Lnbisdk/ll;

    invoke-virtual {p1}, Lcom/nbi/map/data/WeatherForecast;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/qr;

    invoke-virtual {v1, v0}, Lnbisdk/ll;->a(Lnbisdk/qr;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "weatherForecast is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherPlace;->xM:Lnbisdk/ll;

    return-object v0
.end method

.method public getWeatherCondition()Lcom/nbi/map/data/WeatherCondition;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/WeatherCondition;

    iget-object v1, p0, Lcom/nbi/map/data/WeatherPlace;->xM:Lnbisdk/ll;

    invoke-virtual {v1}, Lnbisdk/ll;->js()Lnbisdk/wx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/WeatherCondition;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getWeatherForecastCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherPlace;->xM:Lnbisdk/ll;

    invoke-virtual {v0}, Lnbisdk/ll;->getWeatherForecastCount()I

    move-result v0

    return v0
.end method

.method public getWeatherForecastFor(I)Lcom/nbi/map/data/WeatherForecast;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/WeatherForecast;

    iget-object v1, p0, Lcom/nbi/map/data/WeatherPlace;->xM:Lnbisdk/ll;

    invoke-virtual {v1, p1}, Lnbisdk/ll;->aN(I)Lnbisdk/qr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/WeatherForecast;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
