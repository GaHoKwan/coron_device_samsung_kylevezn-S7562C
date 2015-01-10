.class public Lcom/nbi/map/data/MapLocationMatch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private final hN:Lcom/nbi/map/data/MapLocation;

.field private final pU:Lnbisdk/uv;


# direct methods
.method public constructor <init>(Lcom/nbi/map/data/MapLocation;BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/data/MapLocationMatch;->hN:Lcom/nbi/map/data/MapLocation;

    new-instance v1, Lnbisdk/uv;

    invoke-virtual {p1}, Lcom/nbi/map/data/MapLocation;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/lc;

    invoke-direct {v1, v0, p2, p3}, Lnbisdk/uv;-><init>(Lnbisdk/lc;BZ)V

    iput-object v1, p0, Lcom/nbi/map/data/MapLocationMatch;->pU:Lnbisdk/uv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/map/data/MapLocationMatch;->hN:Lcom/nbi/map/data/MapLocation;

    check-cast p1, Lnbisdk/uv;

    iput-object p1, p0, Lcom/nbi/map/data/MapLocationMatch;->pU:Lnbisdk/uv;

    return-void
.end method


# virtual methods
.method public getAccuracy()B
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocationMatch;->pU:Lnbisdk/uv;

    invoke-virtual {v0}, Lnbisdk/uv;->getAccuracy()B

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocationMatch;->pU:Lnbisdk/uv;

    return-object v0
.end method

.method public getLocation()Lcom/nbi/map/data/MapLocation;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocationMatch;->hN:Lcom/nbi/map/data/MapLocation;

    return-object v0
.end method

.method public isIncomplete()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocationMatch;->pU:Lnbisdk/uv;

    invoke-virtual {v0}, Lnbisdk/uv;->isIncomplete()Z

    move-result v0

    return v0
.end method
