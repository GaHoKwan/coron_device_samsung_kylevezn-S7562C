.class public Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;
.super Lcom/nbi/map/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private oA:Lnbisdk/bu;

.field private oz:Lnbisdk/jc;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;Ljava/lang/String;Ljava/lang/String;Lcom/nbi/map/search/coupons/category/GetCategoryListListener;)V
    .locals 5

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lnbisdk/bu;

    invoke-direct {v0}, Lnbisdk/bu;-><init>()V

    iput-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oA:Lnbisdk/bu;

    iget-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oA:Lnbisdk/bu;

    invoke-virtual {v0, p3}, Lnbisdk/bu;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oA:Lnbisdk/bu;

    invoke-virtual {v0, p4}, Lnbisdk/bu;->v(Ljava/lang/String;)V

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lnbisdk/ew;-><init>(DD)V

    iget-object v1, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oA:Lnbisdk/bu;

    invoke-virtual {v1, v0}, Lnbisdk/bu;->b(Lnbisdk/mi;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v0, Lnbisdk/le;

    invoke-direct {v0, p0, p5}, Lnbisdk/le;-><init>(Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;Lcom/nbi/map/search/coupons/category/GetCategoryListListener;)V

    new-instance v1, Lnbisdk/a;

    invoke-direct {v1, v0}, Lnbisdk/a;-><init>(Lnbisdk/o;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/a;Lcom/navbuilder/nb/e;)Lnbisdk/jc;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oz:Lnbisdk/jc;

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center of region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oz:Lnbisdk/jc;

    invoke-interface {v0}, Lnbisdk/jc;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oA:Lnbisdk/bu;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oz:Lnbisdk/jc;

    invoke-interface {v0}, Lnbisdk/jc;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oz:Lnbisdk/jc;

    iget-object v1, p0, Lcom/nbi/map/search/coupons/category/GetCategoryListRequest;->oA:Lnbisdk/bu;

    invoke-interface {v0, v1}, Lnbisdk/jc;->a(Lnbisdk/bu;)V

    return-void
.end method
