.class final Lcom/nbi/map/geocode/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/map/geocode/GeocodeInformation;


# instance fields
.field private bH:Lnbisdk/gc;

.field private bI:Lnbisdk/lc;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/gc;

    iput-object p1, p0, Lcom/nbi/map/geocode/b;->bH:Lnbisdk/gc;

    return-void
.end method


# virtual methods
.method final a(Lnbisdk/lc;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/geocode/b;->bI:Lnbisdk/lc;

    return-void
.end method

.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/b;->bH:Lnbisdk/gc;

    return-object v0
.end method

.method public final getJccLocation()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/b;->bI:Lnbisdk/lc;

    return-object v0
.end method

.method public final getMapLocation(I)Lcom/nbi/map/data/MapLocation;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/MapLocation;

    iget-object v1, p0, Lcom/nbi/map/geocode/b;->bH:Lnbisdk/gc;

    invoke-virtual {v1, p1}, Lnbisdk/gc;->aj(I)Lnbisdk/lc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/b;->bH:Lnbisdk/gc;

    invoke-virtual {v0}, Lnbisdk/gc;->getResultCount()I

    move-result v0

    return v0
.end method

.method public final getResultSlice()Lcom/nbi/map/data/ResultSlice;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/ResultSlice;

    iget-object v1, p0, Lcom/nbi/map/geocode/b;->bH:Lnbisdk/gc;

    invoke-virtual {v1}, Lnbisdk/gc;->bb()Lnbisdk/pi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/ResultSlice;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hasMoreResults()Z
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/geocode/b;->bH:Lnbisdk/gc;

    invoke-virtual {v0}, Lnbisdk/gc;->bb()Lnbisdk/pi;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/pi;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/pi;->getTotal()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
