.class final Lcom/nbi/search/coupons/coupon/a;
.super Lcom/nbi/search/coupons/coupon/CouponSearchInformation;


# instance fields
.field private iI:Lnbisdk/ln;


# direct methods
.method public constructor <init>(Lnbisdk/ln;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nbi/search/coupons/coupon/CouponSearchInformation;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "impl cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nbi/search/coupons/coupon/a;->iI:Lnbisdk/ln;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/a;->iI:Lnbisdk/ln;

    return-object v0
.end method

.method public final getStoreCouponCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/a;->iI:Lnbisdk/ln;

    invoke-interface {v0}, Lnbisdk/ln;->getStoreCouponCount()I

    move-result v0

    return v0
.end method

.method public final getStoreCoupons(I)Lcom/nbi/coupons/data/StoreCoupons;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/a;->iI:Lnbisdk/ln;

    invoke-interface {v0, p1}, Lnbisdk/ln;->aO(I)Lnbisdk/lr;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a(Lnbisdk/lr;)Lcom/nbi/coupons/data/StoreCoupons;

    move-result-object v0

    return-object v0
.end method

.method public final hasMoreResult()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/coupons/coupon/a;->iI:Lnbisdk/ln;

    invoke-interface {v0}, Lnbisdk/ln;->hasMoreResult()Z

    move-result v0

    return v0
.end method
