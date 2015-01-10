.class public Lcom/nbi/coupons/data/Store$StoreBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/coupons/data/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreBuilder"
.end annotation


# instance fields
.field private EB:Lcom/nbi/map/data/Place;

.field private EC:[Ljava/lang/String;

.field private ED:[Ljava/lang/String;

.field private EE:[Ljava/lang/String;

.field private K:Lcom/nbi/coupons/data/ImageUrls;

.field private count:I

.field private name:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v3}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->w:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->count:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    new-array v4, v1, [B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v1, Lcom/nbi/map/data/Place;

    invoke-direct {v1, v4}, Lcom/nbi/map/data/Place;-><init>([B)V

    iput-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EB:Lcom/nbi/map/data/Place;

    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v5, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v4, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/nbi/coupons/data/ImageUrls;

    invoke-direct {v0}, Lcom/nbi/coupons/data/ImageUrls;-><init>()V

    iput-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    iget-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setSmallThumbUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setMediumThumbUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-static {v3}, Lcom/nbi/coupons/data/Store;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/coupons/data/ImageUrls;->setLargeThumbUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    throw v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_6
.end method


# virtual methods
.method public buildStore()Lcom/nbi/coupons/data/Store;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/nbi/coupons/data/Store;

    invoke-direct {v0}, Lcom/nbi/coupons/data/Store;-><init>()V

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Store;->a(Lcom/nbi/coupons/data/Store;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Store;->b(Lcom/nbi/coupons/data/Store;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->count:I

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Store;->a(Lcom/nbi/coupons/data/Store;I)I

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EB:Lcom/nbi/map/data/Place;

    invoke-static {v0, v1}, Lcom/nbi/coupons/data/Store;->a(Lcom/nbi/coupons/data/Store;Lcom/nbi/map/data/Place;)Lcom/nbi/map/data/Place;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/nbi/coupons/data/Store;->gz:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    iget-object v2, v0, Lcom/nbi/coupons/data/Store;->gz:[Ljava/lang/String;

    iget-object v3, v0, Lcom/nbi/coupons/data/Store;->gz:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/nbi/coupons/data/Store;->gA:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    iget-object v2, v0, Lcom/nbi/coupons/data/Store;->gA:[Ljava/lang/String;

    iget-object v3, v0, Lcom/nbi/coupons/data/Store;->gA:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/nbi/coupons/data/Store;->gB:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    iget-object v2, v0, Lcom/nbi/coupons/data/Store;->gB:[Ljava/lang/String;

    iget-object v3, v0, Lcom/nbi/coupons/data/Store;->gB:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/nbi/coupons/data/ImageUrls;

    invoke-direct {v1}, Lcom/nbi/coupons/data/ImageUrls;-><init>()V

    iput-object v1, v0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    iget-object v1, v0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    iget-object v2, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    iget-object v2, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getSmallThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setSmallThumbUrl(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    iget-object v2, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getMediumThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setMediumThumbUrl(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/nbi/coupons/data/Store;->t:Lcom/nbi/coupons/data/ImageUrls;

    iget-object v2, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    invoke-virtual {v2}, Lcom/nbi/coupons/data/ImageUrls;->getLargeThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nbi/coupons/data/ImageUrls;->setLargeThumbUrl(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public setBroadCategories([Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EC:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setCategories([Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->ED:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setCount(I)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 0

    iput p1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->count:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->w:Ljava/lang/String;

    return-object p0
.end method

.method public setImageURLs(Lcom/nbi/coupons/data/ImageUrls;)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->K:Lcom/nbi/coupons/data/ImageUrls;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPlace(Lcom/nbi/map/data/Place;)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EB:Lcom/nbi/map/data/Place;

    return-object p0
.end method

.method public setSubCategories([Ljava/lang/String;)Lcom/nbi/coupons/data/Store$StoreBuilder;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/coupons/data/Store$StoreBuilder;->EE:[Ljava/lang/String;

    goto :goto_0
.end method
