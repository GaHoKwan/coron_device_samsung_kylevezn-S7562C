.class public Lcom/nbi/search/coupons/coupon/CouponSearchRequest;
.super Lcom/nbi/map/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private qU:Lnbisdk/fn;

.field private qV:Lnbisdk/pe;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;ILcom/nbi/coupons/data/SearchFilter;Lcom/nbi/search/coupons/coupon/CouponSearchListener;)V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lt p3, v1, :cond_1

    if-gt p3, v2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    invoke-direct/range {p0 .. p5}, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;ILcom/nbi/coupons/data/SearchFilter;Lcom/nbi/search/coupons/coupon/CouponSearchListener;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center of region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-lt p3, v1, :cond_5

    if-gt p3, v2, :cond_5

    if-nez p3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p4, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;ILcom/nbi/search/coupons/coupon/CouponSearchListener;)V
    .locals 6

    const/16 v2, 0x14

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lt p3, v1, :cond_1

    if-gt p3, v2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;ILcom/nbi/coupons/data/SearchFilter;Lcom/nbi/search/coupons/coupon/CouponSearchListener;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center of region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-lt p3, v1, :cond_5

    if-gt p3, v2, :cond_5

    if-nez p3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/search/coupons/coupon/CouponSearchRequest;Lcom/nbi/search/coupons/coupon/CouponSearchInformation;BLcom/nbi/search/coupons/coupon/CouponSearchListener;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eq p4, v0, :cond_0

    if-ne p4, v1, :cond_2

    :cond_0
    if-eqz p5, :cond_2

    check-cast p3, Lcom/nbi/search/coupons/coupon/a;

    invoke-virtual {p3}, Lcom/nbi/search/coupons/coupon/a;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ln;

    invoke-virtual {p2}, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/pe;

    iput-object v1, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    iget-object v1, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    invoke-virtual {v1, p4}, Lnbisdk/ih;->g(B)V

    iget-object v1, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    invoke-interface {v0}, Lnbisdk/ln;->ge()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/ih;->i([B)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v0, Lcom/nbi/search/coupons/coupon/b;

    invoke-direct {v0, p0, p5}, Lcom/nbi/search/coupons/coupon/b;-><init>(Lcom/nbi/search/coupons/coupon/CouponSearchRequest;Lcom/nbi/search/coupons/coupon/CouponSearchListener;)V

    new-instance v1, Lnbisdk/lz;

    invoke-direct {v1, v0}, Lnbisdk/lz;-><init>(Lnbisdk/aj;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/lz;Lcom/navbuilder/nb/e;)Lnbisdk/fn;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qU:Lnbisdk/fn;

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

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq p4, v0, :cond_6

    if-eq p4, v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iteratorCommand"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;ILcom/nbi/coupons/data/SearchFilter;Lcom/nbi/search/coupons/coupon/CouponSearchListener;)V
    .locals 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/16 p3, 0xa

    :cond_0
    new-instance v0, Lnbisdk/pe;

    invoke-direct {v0}, Lnbisdk/pe;-><init>()V

    iput-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/nbi/coupons/data/SearchFilter;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yg;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lnbisdk/gw;->getFilterCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lnbisdk/gw;->am(I)Lnbisdk/vl;

    move-result-object v3

    iget-object v4, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    invoke-virtual {v3}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lnbisdk/qa;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    invoke-virtual {v0, p3}, Lnbisdk/ih;->H(I)V

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

    iget-object v1, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    invoke-virtual {v1, v0}, Lnbisdk/pe;->b(Lnbisdk/mi;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v0, Lcom/nbi/search/coupons/coupon/b;

    invoke-direct {v0, p0, p5}, Lcom/nbi/search/coupons/coupon/b;-><init>(Lcom/nbi/search/coupons/coupon/CouponSearchRequest;Lcom/nbi/search/coupons/coupon/CouponSearchListener;)V

    new-instance v1, Lnbisdk/lz;

    invoke-direct {v1, v0}, Lnbisdk/lz;-><init>(Lnbisdk/aj;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/lz;Lcom/navbuilder/nb/e;)Lnbisdk/fn;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qU:Lnbisdk/fn;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qU:Lnbisdk/fn;

    invoke-interface {v0}, Lnbisdk/fn;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qU:Lnbisdk/fn;

    invoke-interface {v0}, Lnbisdk/fn;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qU:Lnbisdk/fn;

    iget-object v1, p0, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;->qV:Lnbisdk/pe;

    invoke-interface {v0, v1}, Lnbisdk/fn;->a(Lnbisdk/pe;)V

    return-void
.end method