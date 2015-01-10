.class final Lcom/nbi/map/geocode/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/map/geocode/ReverseGeocodeInformation;


# instance fields
.field private hM:Lnbisdk/ex;

.field private hN:Lcom/nbi/map/data/MapLocation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/ex;

    iput-object p1, p0, Lcom/nbi/map/geocode/c;->hM:Lnbisdk/ex;

    new-instance v0, Lcom/nbi/map/data/MapLocation;

    iget-object v1, p0, Lcom/nbi/map/geocode/c;->hM:Lnbisdk/ex;

    invoke-interface {v1}, Lnbisdk/ex;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nbi/map/geocode/c;->hN:Lcom/nbi/map/data/MapLocation;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/c;->hM:Lnbisdk/ex;

    return-object v0
.end method

.method public final getMapLocation()Lcom/nbi/map/data/MapLocation;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/c;->hN:Lcom/nbi/map/data/MapLocation;

    return-object v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
