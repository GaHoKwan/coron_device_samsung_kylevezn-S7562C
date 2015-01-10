.class public Lnbisdk/cm;
.super Ljava/lang/Object;


# instance fields
.field private ej:Z

.field private ek:Z

.field private el:Z

.field private em:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lnbisdk/cm;->ej:Z

    iput-boolean p3, p0, Lnbisdk/cm;->ek:Z

    iput-boolean p5, p0, Lnbisdk/cm;->el:Z

    iput-boolean p6, p0, Lnbisdk/cm;->em:Z

    return-void
.end method

.method static synthetic a(Ljava/util/Date;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/uy;->s(J)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static a(Lnbisdk/jb;)Lcom/nbi/coupons/data/Store;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jccStore is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nbi/coupons/data/Store$StoreBuilder;

    invoke-direct {v0}, Lcom/nbi/coupons/data/Store$StoreBuilder;-><init>()V

    invoke-interface {p0}, Lnbisdk/jb;->da()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-interface {p0}, Lnbisdk/jb;->cZ()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-interface {p0}, Lnbisdk/jb;->cW()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, Lcom/nbi/coupons/data/ImageUrls;

    invoke-direct {v1}, Lcom/nbi/coupons/data/ImageUrls;-><init>()V

    invoke-interface {p0}, Lnbisdk/jb;->cY()Lnbisdk/ba;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lnbisdk/ba;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nbi/coupons/data/ImageUrls;->setImageUrl(Ljava/lang/String;)V

    invoke-interface {v5}, Lnbisdk/ba;->getLargeThumbUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nbi/coupons/data/ImageUrls;->setLargeThumbUrl(Ljava/lang/String;)V

    invoke-interface {v5}, Lnbisdk/ba;->getMediumThumbUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nbi/coupons/data/ImageUrls;->setMediumThumbUrl(Ljava/lang/String;)V

    invoke-interface {v5}, Lnbisdk/ba;->getSmallThumbUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/nbi/coupons/data/ImageUrls;->setSmallThumbUrl(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Lnbisdk/jb;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setName(Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;

    move-result-object v5

    invoke-interface {p0}, Lnbisdk/jb;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setId(Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;

    move-result-object v5

    invoke-interface {p0}, Lnbisdk/jb;->getCouponCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setCount(I)Lcom/nbi/coupons/data/Store$StoreBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setBroadCategories([Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setCategories([Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setSubCategories([Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setImageURLs(Lcom/nbi/coupons/data/ImageUrls;)Lcom/nbi/coupons/data/Store$StoreBuilder;

    invoke-interface {p0}, Lnbisdk/jb;->cX()Lnbisdk/de;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/nbi/map/data/Place;

    invoke-direct {v2, v1}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/nbi/coupons/data/Store$StoreBuilder;->setPlace(Lcom/nbi/map/data/Place;)Lcom/nbi/coupons/data/Store$StoreBuilder;

    :cond_2
    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store$StoreBuilder;->buildStore()Lcom/nbi/coupons/data/Store;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lnbisdk/lr;)Lcom/nbi/coupons/data/StoreCoupons;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jccStoreCoupons is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/nbi/coupons/data/StoreCoupons;

    invoke-interface {p0}, Lnbisdk/lr;->jv()Lnbisdk/jb;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a(Lnbisdk/jb;)Lcom/nbi/coupons/data/Store;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nbi/coupons/data/StoreCoupons;-><init>(Lcom/nbi/coupons/data/Store;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lnbisdk/lr;->getCouponCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Lnbisdk/lr;->aQ(I)Lnbisdk/xz;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jccCoupon is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Lcom/nbi/coupons/data/ImageUrls;

    invoke-direct {v3}, Lcom/nbi/coupons/data/ImageUrls;-><init>()V

    invoke-interface {v2}, Lnbisdk/xz;->cY()Lnbisdk/ba;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/ba;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nbi/coupons/data/ImageUrls;->setImageUrl(Ljava/lang/String;)V

    invoke-interface {v2}, Lnbisdk/xz;->cY()Lnbisdk/ba;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/ba;->getLargeThumbUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nbi/coupons/data/ImageUrls;->setLargeThumbUrl(Ljava/lang/String;)V

    invoke-interface {v2}, Lnbisdk/xz;->cY()Lnbisdk/ba;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/ba;->getMediumThumbUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nbi/coupons/data/ImageUrls;->setMediumThumbUrl(Ljava/lang/String;)V

    invoke-interface {v2}, Lnbisdk/xz;->cY()Lnbisdk/ba;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/ba;->getSmallThumbUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nbi/coupons/data/ImageUrls;->setSmallThumbUrl(Ljava/lang/String;)V

    new-instance v4, Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    invoke-direct {v4}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;-><init>()V

    invoke-interface {v2}, Lnbisdk/xz;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setTitle(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setDescription(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getConditions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setConditions(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setCouponID(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->dh()J

    move-result-wide v6

    invoke-static {v6, v7}, Lnbisdk/uy;->r(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setStartDate(J)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->di()J

    move-result-wide v6

    invoke-static {v6, v7}, Lnbisdk/uy;->r(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setExpirationDate(J)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setCurrency(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getDiscountType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setDiscountType(I)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getBuyValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setBuyValue(D)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getListValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setListValue(D)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getDiscountValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setDiscountValue(D)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setCouponCode(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-interface {v2}, Lnbisdk/xz;->getDealUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setDealUrl(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setImageURLs(Lcom/nbi/coupons/data/ImageUrls;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v3

    invoke-interface {v2}, Lnbisdk/xz;->dk()Ljava/util/Vector;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/cm;->c(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setCouponAcquisition([Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    move-result-object v3

    invoke-interface {v2}, Lnbisdk/xz;->dj()Ljava/util/Vector;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/cm;->c(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->setCouponAvailability([Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;

    invoke-virtual {v4}, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->buildCoupon()Lcom/nbi/coupons/data/Coupon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/StoreCoupons;->addCoupon(Lcom/nbi/coupons/data/Coupon;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic a([Ljava/lang/String;)Ljava/util/Vector;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Vector;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nbi/coupons/data/ImageUrls;)Lnbisdk/ba;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnbisdk/cm$2;

    invoke-direct {v0, p0}, Lnbisdk/cm$2;-><init>(Lcom/nbi/coupons/data/ImageUrls;)V

    goto :goto_0
.end method

.method public static a(Lcom/nbi/coupons/data/Store;)Lnbisdk/jb;
    .locals 1

    new-instance v0, Lnbisdk/cm$1;

    invoke-direct {v0, p0}, Lnbisdk/cm$1;-><init>(Lcom/nbi/coupons/data/Store;)V

    return-object v0
.end method

.method private static c(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Lcom/nbi/coupons/data/Coupon;)Lnbisdk/xz;
    .locals 1

    new-instance v0, Lnbisdk/cm$3;

    invoke-direct {v0, p0}, Lnbisdk/cm$3;-><init>(Lcom/nbi/coupons/data/Coupon;)V

    return-object v0
.end method


# virtual methods
.method public cN()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cm;->ek:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cm;->el:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cm;->ej:Z

    return v0
.end method

.method public isRoaming()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cm;->em:Z

    return v0
.end method
