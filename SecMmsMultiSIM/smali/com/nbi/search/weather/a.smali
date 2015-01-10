.class final Lcom/nbi/search/weather/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/search/weather/WeatherSearchInformation;


# instance fields
.field private av:Lnbisdk/mm;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/mm;

    iput-object p1, p0, Lcom/nbi/search/weather/a;->av:Lnbisdk/mm;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/weather/a;->av:Lnbisdk/mm;

    return-object v0
.end method

.method public final getWeatherPOI()Lcom/nbi/map/data/WeatherPOI;
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/weather/a;->av:Lnbisdk/mm;

    invoke-virtual {v0}, Lnbisdk/mm;->jZ()Lnbisdk/mb;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nbi/map/data/WeatherPOI;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/WeatherPOI;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMoreResults()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/weather/a;->av:Lnbisdk/mm;

    invoke-virtual {v0}, Lnbisdk/kq;->hasMoreResults()Z

    move-result v0

    return v0
.end method
