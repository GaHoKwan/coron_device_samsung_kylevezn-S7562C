.class final Lcom/nbi/search/coupons/coupon/b;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/aj;


# direct methods
.method public constructor <init>(Lcom/nbi/search/coupons/coupon/CouponSearchRequest;Lcom/nbi/search/coupons/coupon/CouponSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ln;Lnbisdk/fn;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/coupons/coupon/CouponSearchListener;

    new-instance v2, Lcom/nbi/search/coupons/coupon/a;

    invoke-direct {v2, p1}, Lcom/nbi/search/coupons/coupon/a;-><init>(Lnbisdk/ln;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/coupons/coupon/CouponSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/coupons/coupon/CouponSearchListener;->onStoreCoupon(Lcom/nbi/search/coupons/coupon/CouponSearchInformation;Lcom/nbi/search/coupons/coupon/CouponSearchRequest;)V

    return-void
.end method
