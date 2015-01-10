.class public Lcom/nbi/map/data/WeatherForecast;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private BC:Lnbisdk/qr;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/qr;

    iput-object p1, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    return-void
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-object v0, v0, Lnbisdk/qr;->vT:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionCode()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->vU:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->vM:J

    invoke-static {v0, v1}, Lnbisdk/uy;->r(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighTemperature()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget v0, v0, Lnbisdk/qr;->vN:F

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    return-object v0
.end method

.method public getLowTemperature()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget v0, v0, Lnbisdk/qr;->vO:F

    return v0
.end method

.method public getMoonPhase()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->wb:J

    return-wide v0
.end method

.method public getMoonRiseTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-object v0, v0, Lnbisdk/qr;->vZ:Ljava/lang/String;

    return-object v0
.end method

.method public getMoonSetTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-object v0, v0, Lnbisdk/qr;->wa:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecipitationProbability()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->vR:J

    return-wide v0
.end method

.method public getRelativeHumidity()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->vS:J

    return-wide v0
.end method

.method public getSunRiseTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-object v0, v0, Lnbisdk/qr;->vX:Ljava/lang/String;

    return-object v0
.end method

.method public getSunSetTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-object v0, v0, Lnbisdk/qr;->vY:Ljava/lang/String;

    return-object v0
.end method

.method public getUVDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-object v0, v0, Lnbisdk/qr;->vW:Ljava/lang/String;

    return-object v0
.end method

.method public getUVIndex()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->vV:J

    return-wide v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->wc:J

    return-wide v0
.end method

.method public getWindDirection()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget-wide v0, v0, Lnbisdk/qr;->vP:J

    return-wide v0
.end method

.method public getWindSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherForecast;->BC:Lnbisdk/qr;

    iget v0, v0, Lnbisdk/qr;->vQ:F

    return v0
.end method
