.class public Lnbisdk/w;
.super Ljava/lang/Object;


# instance fields
.field private az:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    return-void
.end method

.method private static a([BI)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a([B[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const/4 v5, 0x0

    array-length v0, p1

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mux name len must be <= 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    array-length v1, p2

    add-int v2, v0, v1

    array-length v0, p2

    int-to-long v0, v0

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Lnbisdk/jd;->a(JI)[B

    move-result-object v1

    invoke-static {v1, v5}, Lnbisdk/w;->a([BI)I

    move-result v3

    if-lez v3, :cond_2

    array-length v0, v1

    if-ne v3, v0, :cond_1

    new-array v0, v5, [B

    :goto_0
    :try_start_0
    iget-object v1, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    array-length v3, p1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v3, v3, -0x1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    array-length v0, v1

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v4, v0

    invoke-static {v1, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lnbisdk/mg;

    invoke-direct {v1, v0}, Lnbisdk/mg;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lnbisdk/yn;Lnbisdk/ql;)[B
    .locals 3

    new-instance v1, Lnbisdk/tu;

    invoke-direct {v1, p0}, Lnbisdk/tu;-><init>(Lnbisdk/yn;)V

    invoke-virtual {v1, p1}, Lnbisdk/tu;->b(Lnbisdk/ql;)V

    :try_start_0
    invoke-virtual {v1}, Lnbisdk/tu;->S()I

    move-result v0

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lnbisdk/tu;->e([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lnbisdk/tu;->P()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lnbisdk/tu;->P()V

    throw v0
.end method


# virtual methods
.method public final P()V
    .locals 1

    iget-object v0, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/w;->az:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnbisdk/w;->a([B[B)I

    move-result v0

    return v0
.end method
