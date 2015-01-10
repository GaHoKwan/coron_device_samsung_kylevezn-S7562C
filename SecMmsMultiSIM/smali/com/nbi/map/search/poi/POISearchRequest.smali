.class public Lcom/nbi/map/search/poi/POISearchRequest;
.super Lcom/nbi/map/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private kv:Lnbisdk/ah;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;Ljava/lang/String;[Ljava/lang/String;IILcom/nbi/map/search/poi/POISearchListener;)V
    .locals 7

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-lt p5, v0, :cond_4

    const/16 v0, 0x14

    if-gt p5, v0, :cond_4

    if-eqz p5, :cond_4

    if-eqz p7, :cond_4

    invoke-static {p6}, Lnbisdk/x;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-ne p5, v0, :cond_0

    const/16 p5, 0xa

    :cond_0
    new-instance v1, Lnbisdk/gu;

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lnbisdk/ew;-><init>(DD)V

    const-string v2, "nbi-search"

    invoke-direct {v1, v0, v2}, Lnbisdk/gu;-><init>(Lnbisdk/mi;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lnbisdk/dg;->S(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/dg;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lnbisdk/dg;->H(I)V

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lnbisdk/ew;-><init>(DD)V

    new-instance v2, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lnbisdk/ew;-><init>(DD)V

    invoke-virtual {v1, v0, v2}, Lnbisdk/dg;->a(Lnbisdk/cl;Lnbisdk/cl;)V

    :cond_1
    const-string v0, "d"

    invoke-virtual {v1, v0}, Lnbisdk/dg;->U(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_2

    aget-object v2, p4, v0

    invoke-virtual {v1, v2}, Lnbisdk/dg;->T(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    packed-switch p6, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-instance v0, Lcom/nbi/map/search/poi/b;

    invoke-direct {v0, p0, p7}, Lcom/nbi/map/search/poi/b;-><init>(Lcom/nbi/map/search/poi/POISearchRequest;Lcom/nbi/map/search/poi/POISearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v2, Lnbisdk/lf;

    invoke-direct {v2, v0}, Lnbisdk/lf;-><init>(Lnbisdk/dt;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v2, v0}, Lnbisdk/bj;->a(Lnbisdk/lf;Lcom/navbuilder/nb/e;)Lnbisdk/uj;

    move-result-object v0

    new-instance v2, Lnbisdk/ah;

    invoke-direct {v2, v0, v1}, Lnbisdk/ah;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nbi/map/search/poi/POISearchRequest;->kv:Lnbisdk/ah;

    :cond_3
    return-void

    :pswitch_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center of region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, -0x1

    if-lt p5, v0, :cond_8

    const/16 v0, 0x14

    if-gt p5, v0, :cond_8

    if-nez p5, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-nez p7, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p6}, Lnbisdk/x;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedConfiguration is incorrect."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/poi/POISearchRequest;Lcom/nbi/map/search/poi/POISearchInformation;BLcom/nbi/map/search/poi/POISearchListener;)V
    .locals 3

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-eq p4, v0, :cond_0

    if-ne p4, v1, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/nbi/map/search/poi/POISearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/gu;

    invoke-interface {p3}, Lcom/nbi/map/search/poi/POISearchInformation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/zn;

    invoke-virtual {v0, p4, v1}, Lnbisdk/dg;->a(BLnbisdk/kq;)V

    new-instance v1, Lcom/nbi/map/search/poi/b;

    invoke-direct {v1, p0, p5}, Lcom/nbi/map/search/poi/b;-><init>(Lcom/nbi/map/search/poi/POISearchRequest;Lcom/nbi/map/search/poi/POISearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v2, Lnbisdk/lf;

    invoke-direct {v2, v1}, Lnbisdk/lf;-><init>(Lnbisdk/dt;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v1

    invoke-static {v2, v1}, Lnbisdk/bj;->a(Lnbisdk/lf;Lcom/navbuilder/nb/e;)Lnbisdk/uj;

    move-result-object v1

    new-instance v2, Lnbisdk/ah;

    invoke-direct {v2, v1, v0}, Lnbisdk/ah;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nbi/map/search/poi/POISearchRequest;->kv:Lnbisdk/ah;

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eq p4, v0, :cond_1

    if-eq p4, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iteratorCommand"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/poi/POISearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/poi/POISearchRequest;->kv:Lnbisdk/ah;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/poi/POISearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/search/poi/POISearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uj;

    iget-object v1, p0, Lcom/nbi/map/search/poi/POISearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v1}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/gu;

    invoke-virtual {v0, v1}, Lnbisdk/uj;->a(Lnbisdk/gu;)V

    return-void
.end method
