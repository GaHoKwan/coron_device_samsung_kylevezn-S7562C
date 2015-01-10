.class final Lcom/nbi/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/location/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mN:Lcom/nbi/location/LocationProvider;


# direct methods
.method constructor <init>(Lcom/nbi/location/LocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 4

    iget-object v1, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    new-instance v2, Lcom/nbi/location/Location;

    invoke-direct {v2}, Lcom/nbi/location/Location;-><init>()V

    invoke-static {v0, v2}, Lcom/nbi/location/LocationProvider;->a(Lcom/nbi/location/LocationProvider;Lcom/nbi/location/Location;)Lcom/nbi/location/Location;

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/location/Location;->setAltitude(D)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getGpsTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/location/Location;->setGpsTime(J)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getHeading()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/location/Location;->setHeading(D)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getHorizontalVelocity()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/location/Location;->setHorizontalVelocity(D)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/location/Location;->setLongitude(D)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getNumberOfSatellites()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nbi/location/Location;->setNumberOfSatellites(I)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nbi/location/Location;->setStatus(I)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getValid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nbi/location/Location;->setValid(I)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getAccuracy()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nbi/location/Location;->setAccuracy(I)V

    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/nb;->getLocationType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nbi/location/Location;->setLocationType(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lnbisdk/ia;->hB()Lnbisdk/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    iget-object v1, v1, Lcom/nbi/location/LocationProvider;->pw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnbisdk/ia;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f(I)V
    .locals 0

    return-void
.end method

.method public final onLocationError(I)V
    .locals 2

    iget-object v1, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0, p1}, Lcom/nbi/location/LocationProvider;->a(Lcom/nbi/location/LocationProvider;I)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lnbisdk/ia;->hB()Lnbisdk/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    iget-object v1, v1, Lcom/nbi/location/LocationProvider;->pv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnbisdk/ia;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final providerStateChanged(I)V
    .locals 2

    iget-object v1, p0, Lcom/nbi/location/b;->mN:Lcom/nbi/location/LocationProvider;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
