.class public Lcom/nbi/coupons/data/ImageUrls;
.super Ljava/lang/Object;


# instance fields
.field private kw:Ljava/lang/String;

.field private kx:Ljava/lang/String;

.field private ky:Ljava/lang/String;

.field private kz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/ImageUrls;->kw:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/ImageUrls;->kz:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/ImageUrls;->ky:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/ImageUrls;->kx:Ljava/lang/String;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/ImageUrls;->kw:Ljava/lang/String;

    return-void
.end method

.method public setLargeThumbUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/ImageUrls;->kz:Ljava/lang/String;

    return-void
.end method

.method public setMediumThumbUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/ImageUrls;->ky:Ljava/lang/String;

    return-void
.end method

.method public setSmallThumbUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/ImageUrls;->kx:Ljava/lang/String;

    return-void
.end method
