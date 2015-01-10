.class public Lcom/nbi/coupons/data/Coupon$CouponBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/coupons/data/Coupon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CouponBuilder"
.end annotation


# instance fields
.field private A:Ljava/util/Date;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:D

.field private E:D

.field private F:D

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:[Ljava/lang/String;

.field private J:[Ljava/lang/String;

.field private K:Lcom/nbi/coupons/data/ImageUrls;

.field private description:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private z:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->C:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->C:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "data is incorrect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->u:Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->w:Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->b(Ljava/io/DataInputStream;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->z:Ljava/util/Date;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->b(Ljava/io/DataInputStream;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->A:Ljava/util/Date;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->B:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->C:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->D:D

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->E:D

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->F:D

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->G:Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->H:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v5, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/nbi/coupons/data/ImageUrls;

    invoke-direct {v0}, Lcom/nbi/coupons/data/ImageUrls;-><init>()V

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setSmallThumbUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setMediumThumbUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setLargeThumbUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_5
.end method


# virtual methods
.method public buildCoupon()Lcom/nbi/coupons/data/Coupon;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/nbi/coupons/data/Coupon;

    invoke-direct {v0}, Lcom/nbi/coupons/data/Coupon;-><init>()V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->b(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->c(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->d(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->z:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;Ljava/util/Date;)Ljava/util/Date;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->A:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->b(Lcom/nbi/coupons/data/Coupon;Ljava/util/Date;)Ljava/util/Date;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->e(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->C:I

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;I)I

    iget-wide v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->D:D

    invoke-static {v0, v1, v2}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;D)D

    iget-wide v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->E:D

    invoke-static {v0, v1, v2}, Lcom/nbi/coupons/data/Coupon;->b(Lcom/nbi/coupons/data/Coupon;D)D

    iget-wide v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->F:D

    invoke-static {v0, v1, v2}, Lcom/nbi/coupons/data/Coupon;->c(Lcom/nbi/coupons/data/Coupon;D)D

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->G:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->f(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->g(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->b(Lcom/nbi/coupons/data/Coupon;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->b(Lcom/nbi/coupons/data/Coupon;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->b(Lcom/nbi/coupons/data/Coupon;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/nbi/coupons/data/ImageUrls;

    invoke-direct {v1}, Lcom/nbi/coupons/data/ImageUrls;-><init>()V

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Coupon;->a(Lcom/nbi/coupons/data/Coupon;Lcom/nbi/coupons/data/ImageUrls;)Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->c(Lcom/nbi/coupons/data/Coupon;)Lcom/nbi/coupons/data/ImageUrls;

    move-result-object v1

    iget-object v2, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setImageUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->c(Lcom/nbi/coupons/data/Coupon;)Lcom/nbi/coupons/data/ImageUrls;

    move-result-object v1

    iget-object v2, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getSmallThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setSmallThumbUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->c(Lcom/nbi/coupons/data/Coupon;)Lcom/nbi/coupons/data/ImageUrls;

    move-result-object v1

    iget-object v2, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getMediumThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setMediumThumbUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nbi/coupons/data/Coupon;->c(Lcom/nbi/coupons/data/Coupon;)Lcom/nbi/coupons/data/ImageUrls;

    move-result-object v1

    iget-object v2, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getLargeThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setLargeThumbUrl(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public setBuyValue(D)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->D:D

    return-object p0
.end method

.method public setConditions(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->v:Ljava/lang/String;

    return-object p0
.end method

.method public setCouponAcquisition([Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->J:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setCouponAvailability([Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->I:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setCouponCode(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->G:Ljava/lang/String;

    return-object p0
.end method

.method public setCouponID(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->w:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->B:Ljava/lang/String;

    return-object p0
.end method

.method public setDealUrl(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->H:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setDiscountType(I)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->C:I

    return-object p0
.end method

.method public setDiscountValue(D)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->F:D

    return-object p0
.end method

.method public setExpirationDate(J)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->A:Ljava/util/Date;

    return-object p0
.end method

.method public setExpirationDate(Ljava/util/Date;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->A:Ljava/util/Date;

    :cond_0
    return-object p0
.end method

.method public setImageURLs(Lcom/nbi/coupons/data/ImageUrls;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    return-object p0
.end method

.method public setListValue(D)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->E:D

    return-object p0
.end method

.method public setStartDate(J)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->z:Ljava/util/Date;

    return-object p0
.end method

.method public setStartDate(Ljava/util/Date;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->z:Ljava/util/Date;

    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon$CouponBuilder;->u:Ljava/lang/String;

    return-object p0
.end method
