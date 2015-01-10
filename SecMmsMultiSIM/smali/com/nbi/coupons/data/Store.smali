.class public Lcom/nbi/coupons/data/Store;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/coupons/data/SerializeToBytes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbi/coupons/data/Store$StoreBuilder;
    }
.end annotation


# instance fields
.field gA:[Ljava/lang/String;

.field gB:[Ljava/lang/String;

.field private gv:Ljava/lang/String;

.field private gw:Ljava/lang/String;

.field private gx:I

.field private gy:Lcom/nbi/map/data/Place;

.field gz:[Ljava/lang/String;

.field t:Lcom/nbi/coupons/data/ImageUrls;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Store;I)I
    .locals 0

    iput p1, p0, Lcom/nbi/coupons/data/Store;->gx:I

    return p1
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Store;Lcom/nbi/map/data/Place;)Lcom/nbi/map/data/Place;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Store;->gy:Lcom/nbi/map/data/Place;

    return-object p1
.end method

.method static synthetic a(Lcom/nbi/coupons/data/Store;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Store;->gv:Ljava/lang/String;

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

.method static synthetic b(Lcom/nbi/coupons/data/Store;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Store;->gw:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getBroadCategories()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->gz:[Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->gA:[Ljava/lang/String;

    return-object v0
.end method

.method public getCouponCount()I
    .locals 1

    iget v0, p0, Lcom/nbi/coupons/data/Store;->gx:I

    return v0
.end method

.method public getImageURLs()Lcom/nbi/coupons/data/ImageUrls;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    return-object v0
.end method

.method public getRetailerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->gw:Ljava/lang/String;

    return-object v0
.end method

.method public getRetailerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->gv:Ljava/lang/String;

    return-object v0
.end method

.method public getRetailerPlace()Lcom/nbi/map/data/Place;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->gy:Lcom/nbi/map/data/Place;

    return-object v0
.end method

.method public getSubCategories()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->gB:[Ljava/lang/String;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gv:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gw:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget v1, p0, Lcom/nbi/coupons/data/Store;->gx:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gy:Lcom/nbi/map/data/Place;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gy:Lcom/nbi/map/data/Place;

    invoke-virtual {v1}, Lcom/nbi/map/data/Place;->toByteArray()[B

    move-result-object v1

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    :goto_0
    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gz:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gz:[Ljava/lang/String;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lcom/nbi/coupons/data/Store;->gz:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_2
    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gA:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gA:[Ljava/lang/String;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_4
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Lcom/nbi/coupons/data/Store;->gA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_4
    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gB:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nbi/coupons/data/Store;->gB:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_5
    if-ge v0, v1, :cond_6

    iget-object v4, p0, Lcom/nbi/coupons/data/Store;->gB:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_6
    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getSmallThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getMediumThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v0}, Lcom/nbi/coupons/data/ImageUrls;->getLargeThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_7
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    throw v0

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_9
.end method
