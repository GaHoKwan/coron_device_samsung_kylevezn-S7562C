.class final Lnbisdk/cm$3;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/xz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/cm;->d(Lcom/nbi/coupons/data/Coupon;)Lnbisdk/xz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic eN:Lcom/nbi/coupons/data/Coupon;


# direct methods
.method constructor <init>(Lcom/nbi/coupons/data/Coupon;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cY()Lnbisdk/ba;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getImageUrls()Lcom/nbi/coupons/data/ImageUrls;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a(Lcom/nbi/coupons/data/ImageUrls;)Lnbisdk/ba;

    move-result-object v0

    return-object v0
.end method

.method public final dh()J
    .locals 2

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final di()J
    .locals 2

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final dj()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getCouponAvailability()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a([Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final dk()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getCouponAcquisition()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a([Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final getBuyValue()D
    .locals 2

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getBuyValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getCouponCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConditions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getConditions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDealUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getDealUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDiscountType()I
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getDiscountType()I

    move-result v0

    return v0
.end method

.method public final getDiscountValue()D
    .locals 2

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getDiscountValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getCouponId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getListValue()D
    .locals 2

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getListValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$3;->eN:Lcom/nbi/coupons/data/Coupon;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Coupon;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
