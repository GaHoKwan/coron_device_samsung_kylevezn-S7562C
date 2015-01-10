.class public Lcom/nbi/map/data/WeatherCondition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private je:Lnbisdk/wx;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/wx;

    iput-object p1, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    return-void
.end method


# virtual methods
.method public getCeiling()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cm:F

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget-object v0, v0, Lnbisdk/wx;->vT:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionCode()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget-wide v0, v0, Lnbisdk/wx;->vU:J

    return-wide v0
.end method

.method public getDewPoint()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Ci:F

    return v0
.end method

.method public getHeatIndex()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Co:F

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    return-object v0
.end method

.method public getMaxTempIn24Hours()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cs:F

    return v0
.end method

.method public getMaxTempIn6Hours()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cr:F

    return v0
.end method

.method public getMinTempIn24Hours()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cu:F

    return v0
.end method

.method public getMinTempIn6Hours()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Ct:F

    return v0
.end method

.method public getPrecipitationOver24Hours()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cx:F

    return v0
.end method

.method public getPrecipitationOver3Hours()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cv:F

    return v0
.end method

.method public getPrecipitationOver6Hours()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cw:F

    return v0
.end method

.method public getPressure()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Ck:F

    return v0
.end method

.method public getRelativeHumidity()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget-wide v0, v0, Lnbisdk/wx;->vS:J

    return-wide v0
.end method

.method public getSkyCoverage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget-object v0, v0, Lnbisdk/wx;->Cl:Ljava/lang/String;

    return-object v0
.end method

.method public getSnowDepth()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cq:F

    return v0
.end method

.method public getTemperature()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Ch:F

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget-wide v0, v0, Lnbisdk/wx;->wc:J

    return-wide v0
.end method

.method public getUtcOffset()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cy:I

    return v0
.end method

.method public getVisibility()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget-wide v0, v0, Lnbisdk/wx;->Cn:J

    return-wide v0
.end method

.method public getWindChill()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cp:F

    return v0
.end method

.method public getWindDirection()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget-wide v0, v0, Lnbisdk/wx;->vP:J

    return-wide v0
.end method

.method public getWindGust()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->Cj:F

    return v0
.end method

.method public getWindSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/WeatherCondition;->je:Lnbisdk/wx;

    iget v0, v0, Lnbisdk/wx;->vQ:F

    return v0
.end method
