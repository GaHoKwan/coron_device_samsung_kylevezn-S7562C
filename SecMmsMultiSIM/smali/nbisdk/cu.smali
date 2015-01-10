.class public final Lnbisdk/cu;
.super Ljava/lang/Object;


# static fields
.field private static fb:Lnbisdk/cu;


# instance fields
.field private eY:[B

.field private eZ:B

.field private fa:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnbisdk/cu;->eY:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lnbisdk/cu;->eZ:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lnbisdk/cu;->fa:[B

    invoke-direct {p0}, Lnbisdk/cu;->dA()V

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c([BII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-static {v0}, Lnbisdk/cu;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private dA()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/cu;->eY:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/cu;->fa:[B

    iget-object v2, p0, Lnbisdk/cu;->eY:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dB()Lnbisdk/cu;
    .locals 1

    sget-object v0, Lnbisdk/cu;->fb:Lnbisdk/cu;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/cu;

    invoke-direct {v0}, Lnbisdk/cu;-><init>()V

    sput-object v0, Lnbisdk/cu;->fb:Lnbisdk/cu;

    :cond_0
    sget-object v0, Lnbisdk/cu;->fb:Lnbisdk/cu;

    return-object v0
.end method


# virtual methods
.method public final b([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    add-int/lit8 v0, p3, 0x0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    aget-byte v0, p1, v0

    int-to-char v0, v0

    invoke-static {v0}, Lnbisdk/cu;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Lnbisdk/cu;->c([BII)I

    move-result v0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lnbisdk/cu;->fa:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v0, v4, v0

    invoke-direct {p0, p1, v5, v3}, Lnbisdk/cu;->c([BII)I

    move-result v4

    iget-object v5, p0, Lnbisdk/cu;->fa:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v4, v5, v4

    invoke-direct {p0, p1, v6, v3}, Lnbisdk/cu;->c([BII)I

    move-result v5

    iget-object v6, p0, Lnbisdk/cu;->fa:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p1, v5

    aget-byte v5, v6, v5

    invoke-direct {p0, p1, v7, v3}, Lnbisdk/cu;->c([BII)I

    move-result v6

    iget-object v7, p0, Lnbisdk/cu;->fa:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p1, v6

    aget-byte v6, v7, v6

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v4, 0x4

    or-int/2addr v0, v7

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x4

    shr-int/lit8 v4, v5, 0x2

    or-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v0, v5, 0x6

    or-int/2addr v0, v6

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-direct {p0, p1, v8, v3}, Lnbisdk/cu;->c([BII)I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x4

    aget-byte v0, p1, v0

    int-to-char v0, v0

    add-int/lit8 v3, v1, -0x3

    aget-byte v3, p1, v3

    int-to-char v3, v3

    add-int/lit8 v4, v1, -0x2

    aget-byte v4, p1, v4

    int-to-char v4, v4

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    iget-byte v5, p0, Lnbisdk/cu;->eZ:B

    if-ne v4, v5, :cond_2

    iget-object v1, p0, Lnbisdk/cu;->fa:[B

    aget-byte v0, v1, v0

    iget-object v1, p0, Lnbisdk/cu;->fa:[B

    aget-byte v1, v1, v3

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    :cond_2
    iget-byte v5, p0, Lnbisdk/cu;->eZ:B

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lnbisdk/cu;->fa:[B

    aget-byte v0, v1, v0

    iget-object v1, p0, Lnbisdk/cu;->fa:[B

    aget-byte v1, v1, v3

    iget-object v3, p0, Lnbisdk/cu;->fa:[B

    aget-byte v3, v3, v4

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v3, 0x2

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lnbisdk/cu;->fa:[B

    aget-byte v0, v5, v0

    iget-object v5, p0, Lnbisdk/cu;->fa:[B

    aget-byte v3, v5, v3

    iget-object v5, p0, Lnbisdk/cu;->fa:[B

    aget-byte v4, v5, v4

    iget-object v5, p0, Lnbisdk/cu;->fa:[B

    aget-byte v1, v5, v1

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v0, v3, 0x4

    shr-int/lit8 v3, v4, 0x2

    or-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3
.end method
