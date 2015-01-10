.class public final Lnbisdk/qe;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/o;


# direct methods
.method public constructor <init>(Lcom/nbi/search/coupons/category/GetCategoryListRequest;Lcom/nbi/search/coupons/category/GetCategoryListListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/hy;Lnbisdk/jc;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/coupons/category/GetCategoryListListener;

    new-instance v2, Lnbisdk/qd;

    invoke-direct {v2, p1}, Lnbisdk/qd;-><init>(Lnbisdk/hy;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/coupons/category/GetCategoryListRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/coupons/category/GetCategoryListListener;->onGetCategoryList(Lcom/nbi/search/coupons/category/GetCategoryListInformation;Lcom/nbi/search/coupons/category/GetCategoryListRequest;)V

    return-void
.end method
