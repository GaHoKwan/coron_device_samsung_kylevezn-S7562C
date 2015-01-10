.class public Lcom/nbi/coupons/data/Coupon;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/coupons/data/SerializeToBytes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbi/coupons/data/Coupon$CouponBuilder;
    }
.end annotation


# static fields
.field public static final UNDEFINED_IMAGE_ID:Ljava/lang/String; = "none"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Date;

.field private j:Ljava/util/Date;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:D

.field private n:D

.field private o:D

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:Lcom/nbi/coupons/data/ImageUrls;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Coupon;D)D
    .locals 0

    iput-wide p1, p0, Lcom/nbi/coupons/data/Coupon;->m:D

    return-wide p1
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Coupon;I)I
    .locals 0

    iput p1, p0, Lcom/nbi/coupons/data/Coupon;->l:I

    return p1
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Coupon;Lcom/nbi/coupons/data/ImageUrls;)Lcom/nbi/coupons/data/ImageUrls;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    return-object p1
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Coupon;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->i:Ljava/util/Date;

    return-object p1
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Coupon;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Coupon;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->r:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/nbi/coupons/data/Coupon;D)D
    .locals 0

    iput-wide p1, p0, Lcom/nbi/coupons/data/Coupon;->n:D

    return-wide p1
.end method

.method static synthetic b(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/nbi/coupons/data/Coupon;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->j:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic b(Ljava/io/DataInputStream;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nbi/coupons/data/Coupon;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nbi/coupons/data/Coupon;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->s:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/nbi/coupons/data/Coupon;D)D
    .locals 0

    iput-wide p1, p0, Lcom/nbi/coupons/data/Coupon;->o:D

    return-wide p1
.end method

.method static synthetic c(Lcom/nbi/coupons/data/Coupon;)Lcom/nbi/coupons/data/ImageUrls;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    return-object v0
.end method

.method static synthetic c(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/nbi/coupons/data/Coupon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Coupon;->q:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getBuyValue()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/coupons/data/Coupon;->m:D

    return-wide v0
.end method

.method public getConditions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponAcquisition()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->s:[Ljava/lang/String;

    return-object v0
.end method

.method public getCouponAvailability()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->r:[Ljava/lang/String;

    return-object v0
.end method

.method public getCouponCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getDealUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountType()I
    .locals 1

    iget v0, p0, Lcom/nbi/coupons/data/Coupon;->l:I

    return v0
.end method

.method public getDiscountValue()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/coupons/data/Coupon;->o:D

    return-wide v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->j:Ljava/util/Date;

    return-object v0
.end method

.method public getImageUrls()Lcom/nbi/coupons/data/ImageUrls;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    return-object v0
.end method

.method public getListValue()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/coupons/data/Coupon;->n:D

    return-wide v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->i:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->e:Ljava/lang/String;

    return-object v0
.end method

.method public launchDealUrl(Lcom/nbi/common/NBIContext;ZLandroid/app/Activity;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lnbisdk/cm;->d(Lcom/nbi/coupons/data/Coupon;)Lnbisdk/xz;

    move-result-object v0

    new-instance v1, Lnbisdk/jv;

    const-string v2, "url"

    invoke-direct {v1, v2, v0}, Lnbisdk/jv;-><init>(Ljava/lang/String;Lnbisdk/xz;)V

    invoke-static {v1}, Lnbisdk/rb;->b(Lnbisdk/jv;)V

    invoke-static {}, Lnbisdk/rb;->P()V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/nbi/common/NBIContext;->launchURL(Ljava/lang/String;ZLandroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->e:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->f:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->g:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->h:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->i:Ljava/util/Date;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/util/Date;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->j:Ljava/util/Date;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/util/Date;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->k:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget v1, p0, Lcom/nbi/coupons/data/Coupon;->l:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v4, p0, Lcom/nbi/coupons/data/Coupon;->m:D

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v4, p0, Lcom/nbi/coupons/data/Coupon;->n:D

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v4, p0, Lcom/nbi/coupons/data/Coupon;->o:D

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->p:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->q:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->r:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->r:[Ljava/lang/String;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v5, p0, Lcom/nbi/coupons/data/Coupon;->r:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v3, v5}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->s:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nbi/coupons/data/Coupon;->s:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v4, p0, Lcom/nbi/coupons/data/Coupon;->s:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_3
    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getSmallThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getMediumThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Coupon;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getLargeThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Coupon;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    return-object v0

    :cond_4
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_7
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7
.end method
