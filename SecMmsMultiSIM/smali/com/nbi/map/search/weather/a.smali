.class final Lcom/nbi/map/search/weather/a;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/d;


# direct methods
.method public constructor <init>(Lcom/nbi/map/search/weather/WeatherSearchRequest;Lcom/nbi/map/search/weather/WeatherSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/mm;Lnbisdk/et;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/map/search/weather/WeatherSearchListener;

    new-instance v2, Lcom/nbi/map/search/weather/b;

    invoke-direct {v2, p1}, Lcom/nbi/map/search/weather/b;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/map/search/weather/WeatherSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/map/search/weather/WeatherSearchListener;->onWeatherSearch(Lcom/nbi/map/search/weather/WeatherSearchInformation;Lcom/nbi/map/search/weather/WeatherSearchRequest;)V

    return-void
.end method
