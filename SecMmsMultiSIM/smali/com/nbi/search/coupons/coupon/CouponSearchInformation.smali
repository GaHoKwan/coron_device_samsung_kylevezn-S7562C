.class public abstract Lcom/nbi/search/coupons/coupon/CouponSearchInformation;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStoreCouponCount()I
.end method

.method public abstract getStoreCoupons(I)Lcom/nbi/coupons/data/StoreCoupons;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract hasMoreResult()Z
.end method
