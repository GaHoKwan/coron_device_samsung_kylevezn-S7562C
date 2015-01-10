.class final Lnbisdk/cm$2;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ba;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic eI:Lcom/nbi/coupons/data/ImageUrls;


# direct methods
.method constructor <init>(Lcom/nbi/coupons/data/ImageUrls;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cm$2;->eI:Lcom/nbi/coupons/data/ImageUrls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$2;->eI:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLargeThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$2;->eI:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getLargeThumbUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMediumThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$2;->eI:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getMediumThumbUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSmallThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cm$2;->eI:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getSmallThumbUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
