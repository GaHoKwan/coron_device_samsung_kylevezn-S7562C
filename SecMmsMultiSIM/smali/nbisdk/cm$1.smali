.class final Lnbisdk/cm$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/cm;->a(Lcom/nbi/coupons/data/Store;)Lnbisdk/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic eH:Lcom/nbi/coupons/data/Store;


# direct methods
.method constructor <init>(Lcom/nbi/coupons/data/Store;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cW()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getSubCategories()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a([Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final cX()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getRetailerPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/de;

    goto :goto_0
.end method

.method public final cY()Lnbisdk/ba;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getImageURLs()Lcom/nbi/coupons/data/ImageUrls;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a(Lcom/nbi/coupons/data/ImageUrls;)Lnbisdk/ba;

    move-result-object v0

    return-object v0
.end method

.method public final cZ()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getCategories()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a([Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final da()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getBroadCategories()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a([Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final getCouponCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getCouponCount()I

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getRetailerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$1;->eH:Lcom/nbi/coupons/data/Store;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/Store;->getRetailerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
