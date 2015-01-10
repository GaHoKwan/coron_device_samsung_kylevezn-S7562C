.class public final Lnbisdk/nb;
.super Ljava/lang/Object;


# instance fields
.field private V:I

.field private Y:Ljava/lang/String;

.field private aG:J

.field private bj:I

.field private cB:I

.field private cC:I

.field private cV:D

.field private cW:D

.field private cZ:I

.field private dh:D

.field private hD:D

.field private kk:D


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lnbisdk/nb;->dh:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/nb;->aG:J

    iput-wide v2, p0, Lnbisdk/nb;->kk:D

    iput-wide v2, p0, Lnbisdk/nb;->hD:D

    iput-wide v2, p0, Lnbisdk/nb;->cV:D

    iput-wide v2, p0, Lnbisdk/nb;->cW:D

    iput v4, p0, Lnbisdk/nb;->bj:I

    iput v4, p0, Lnbisdk/nb;->V:I

    iput v4, p0, Lnbisdk/nb;->cB:I

    iput v4, p0, Lnbisdk/nb;->cC:I

    iput v4, p0, Lnbisdk/nb;->cZ:I

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/nb;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnbisdk/nb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lnbisdk/nb;->dh:D

    iput-wide v0, p0, Lnbisdk/nb;->dh:D

    iget-wide v0, p1, Lnbisdk/nb;->aG:J

    iput-wide v0, p0, Lnbisdk/nb;->aG:J

    iget-wide v0, p1, Lnbisdk/nb;->kk:D

    iput-wide v0, p0, Lnbisdk/nb;->kk:D

    iget-wide v0, p1, Lnbisdk/nb;->hD:D

    iput-wide v0, p0, Lnbisdk/nb;->hD:D

    iget-wide v0, p1, Lnbisdk/nb;->cV:D

    iput-wide v0, p0, Lnbisdk/nb;->cV:D

    iget-wide v0, p1, Lnbisdk/nb;->cW:D

    iput-wide v0, p0, Lnbisdk/nb;->cW:D

    iget v0, p1, Lnbisdk/nb;->bj:I

    iput v0, p0, Lnbisdk/nb;->bj:I

    iget v0, p1, Lnbisdk/nb;->V:I

    iput v0, p0, Lnbisdk/nb;->V:I

    iget v0, p1, Lnbisdk/nb;->cB:I

    iput v0, p0, Lnbisdk/nb;->cB:I

    iget v0, p1, Lnbisdk/nb;->cC:I

    iput v0, p0, Lnbisdk/nb;->cC:I

    iget v0, p1, Lnbisdk/nb;->cZ:I

    iput v0, p0, Lnbisdk/nb;->cZ:I

    iget-object v0, p1, Lnbisdk/nb;->Y:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/nb;->Y:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final aO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/nb;->Y:Ljava/lang/String;

    return-void
.end method

.method public final getAccuracy()I
    .locals 1

    iget v0, p0, Lnbisdk/nb;->cC:I

    return v0
.end method

.method public final getAltitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/nb;->dh:D

    return-wide v0
.end method

.method public final getGpsTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/nb;->aG:J

    return-wide v0
.end method

.method public final getHeading()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/nb;->kk:D

    return-wide v0
.end method

.method public final getHorizontalVelocity()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/nb;->hD:D

    return-wide v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/nb;->cV:D

    return-wide v0
.end method

.method public final getLocationType()I
    .locals 1

    iget v0, p0, Lnbisdk/nb;->cZ:I

    return v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/nb;->cW:D

    return-wide v0
.end method

.method public final getNumberOfSatellites()I
    .locals 1

    iget v0, p0, Lnbisdk/nb;->bj:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lnbisdk/nb;->V:I

    return v0
.end method

.method public final getValid()I
    .locals 1

    iget v0, p0, Lnbisdk/nb;->cB:I

    return v0
.end method

.method public final kR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/nb;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccuracy(I)V
    .locals 0

    iput p1, p0, Lnbisdk/nb;->cC:I

    return-void
.end method

.method public final setAltitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/nb;->dh:D

    return-void
.end method

.method public final setGpsTime(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/nb;->aG:J

    return-void
.end method

.method public final setHeading(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/nb;->kk:D

    return-void
.end method

.method public final setHorizontalVelocity(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/nb;->hD:D

    return-void
.end method

.method public final setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/nb;->cV:D

    return-void
.end method

.method public final setLocationType(I)V
    .locals 0

    iput p1, p0, Lnbisdk/nb;->cZ:I

    return-void
.end method

.method public final setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/nb;->cW:D

    return-void
.end method

.method public final setNumberOfSatellites(I)V
    .locals 0

    iput p1, p0, Lnbisdk/nb;->bj:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lnbisdk/nb;->V:I

    return-void
.end method

.method public final setValid(I)V
    .locals 0

    iput p1, p0, Lnbisdk/nb;->cB:I

    return-void
.end method
