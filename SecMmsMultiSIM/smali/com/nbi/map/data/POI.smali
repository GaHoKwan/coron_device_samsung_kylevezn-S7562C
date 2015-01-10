.class public Lcom/nbi/map/data/POI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private pH:Lnbisdk/uz;


# direct methods
.method public constructor <init>(Lcom/nbi/map/data/Place;D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Lnbisdk/uz;

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/de;

    invoke-direct {v1, v0, p2, p3}, Lnbisdk/uz;-><init>(Lnbisdk/de;D)V

    iput-object v1, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "place is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/uz;

    iput-object p1, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    return-void
.end method


# virtual methods
.method public getDistance()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    invoke-virtual {v0}, Lnbisdk/uz;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtendedPlaceData()Lcom/nbi/map/data/ExtendedPlaceData;
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    invoke-virtual {v0}, Lnbisdk/uz;->nM()Lnbisdk/jj;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nbi/map/data/ExtendedPlaceData;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/ExtendedPlaceData;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    invoke-virtual {v1}, Lnbisdk/uz;->nN()Lnbisdk/fl;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "photo-url"

    invoke-interface {v1, v0}, Lnbisdk/fl;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    return-object v0
.end method

.method public getPlace()Lcom/nbi/map/data/Place;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/Place;

    iget-object v1, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    invoke-virtual {v1}, Lnbisdk/uz;->cX()Lnbisdk/de;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSearchInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    invoke-virtual {v0}, Lnbisdk/uz;->getSearchInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImageUrl()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/data/POI;->pH:Lnbisdk/uz;

    invoke-virtual {v1}, Lnbisdk/uz;->nM()Lnbisdk/jj;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "thumbnail-photo-url"

    invoke-virtual {v1, v0}, Lnbisdk/jj;->getDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
