.class public Lcom/nbi/location/Location;
.super Ljava/lang/Object;


# static fields
.field public static final FIX_TYPE_GPS:I = 0x1

.field public static final FIX_TYPE_NETWORK:I = 0x2

.field public static final FIX_TYPE_UNDEFINED:I = 0x0

.field public static final VALID_ACCURACY:I = 0x80

.field public static final VALID_ALTITUDE:I = 0x4

.field public static final VALID_HEADING:I = 0x8

.field public static final VALID_HORIZONTAL_VELOCITY:I = 0x10

.field public static final VALID_LATITUDE:I = 0x1

.field public static final VALID_LONGITUDE:I = 0x2

.field public static final VALID_NONE:I = 0x0

.field public static final VALID_SATELLITE_COUNT:I = 0x40

.field public static final VALID_UTC_OFFSET:I = 0x20


# instance fields
.field private jj:D

.field private jk:J

.field private jl:D

.field private jm:D

.field private jn:D

.field private jo:D

.field private jp:I

.field private jq:I

.field private jr:I

.field private js:I

.field private jt:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/nbi/location/Location;->jj:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nbi/location/Location;->jk:J

    iput-wide v2, p0, Lcom/nbi/location/Location;->jl:D

    iput-wide v2, p0, Lcom/nbi/location/Location;->jm:D

    iput-wide v2, p0, Lcom/nbi/location/Location;->jn:D

    iput-wide v2, p0, Lcom/nbi/location/Location;->jo:D

    iput v4, p0, Lcom/nbi/location/Location;->jp:I

    iput v4, p0, Lcom/nbi/location/Location;->jq:I

    iput v4, p0, Lcom/nbi/location/Location;->jr:I

    iput v4, p0, Lcom/nbi/location/Location;->js:I

    iput v4, p0, Lcom/nbi/location/Location;->jt:I

    return-void
.end method

.method public constructor <init>(Lcom/nbi/location/Location;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbi/location/Location;->jj:D

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getGpsTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbi/location/Location;->jk:J

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getHeading()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbi/location/Location;->jl:D

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getHorizontalVelocity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbi/location/Location;->jm:D

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbi/location/Location;->jn:D

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbi/location/Location;->jo:D

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getNumberOfSatellites()I

    move-result v0

    iput v0, p0, Lcom/nbi/location/Location;->jp:I

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/nbi/location/Location;->jq:I

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getValid()I

    move-result v0

    iput v0, p0, Lcom/nbi/location/Location;->jr:I

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v0

    iput v0, p0, Lcom/nbi/location/Location;->js:I

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLocationType()I

    move-result v0

    iput v0, p0, Lcom/nbi/location/Location;->jt:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    iget v0, p0, Lcom/nbi/location/Location;->js:I

    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/location/Location;->jj:D

    return-wide v0
.end method

.method public getGpsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nbi/location/Location;->jk:J

    return-wide v0
.end method

.method public getHeading()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/location/Location;->jl:D

    return-wide v0
.end method

.method public getHorizontalVelocity()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/location/Location;->jm:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/location/Location;->jn:D

    return-wide v0
.end method

.method public getLocationType()I
    .locals 1

    iget v0, p0, Lcom/nbi/location/Location;->jt:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/location/Location;->jo:D

    return-wide v0
.end method

.method public getNumberOfSatellites()I
    .locals 1

    iget v0, p0, Lcom/nbi/location/Location;->jp:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/nbi/location/Location;->jq:I

    return v0
.end method

.method public getValid()I
    .locals 1

    iget v0, p0, Lcom/nbi/location/Location;->jr:I

    return v0
.end method

.method public setAccuracy(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/location/Location;->js:I

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/location/Location;->jj:D

    return-void
.end method

.method public setGpsTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/location/Location;->jk:J

    return-void
.end method

.method public setHeading(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/location/Location;->jl:D

    return-void
.end method

.method public setHorizontalVelocity(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/location/Location;->jm:D

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/location/Location;->jn:D

    return-void
.end method

.method public setLocationType(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/location/Location;->jt:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/location/Location;->jo:D

    return-void
.end method

.method public setNumberOfSatellites(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/location/Location;->jp:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/location/Location;->jq:I

    return-void
.end method

.method public setValid(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/location/Location;->jr:I

    return-void
.end method
