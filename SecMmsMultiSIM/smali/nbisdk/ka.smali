.class final Lnbisdk/ka;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/hw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic pz:Lnbisdk/hw;


# direct methods
.method constructor <init>(Lnbisdk/hw;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    iget-object v0, v0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    iget-object v1, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    iget-object v1, v1, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/hw;->mw:Landroid/location/GpsStatus;

    iget-object v0, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    iget-object v0, v0, Lnbisdk/hw;->mw:Landroid/location/GpsStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    invoke-static {v0}, Lnbisdk/hw;->a(Lnbisdk/hw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    iget-object v0, v0, Lnbisdk/hw;->mw:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    invoke-static {v1}, Lnbisdk/hw;->a(Lnbisdk/hw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/ka;->pz:Lnbisdk/hw;

    invoke-static {v0}, Lnbisdk/hw;->a(Lnbisdk/hw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method
