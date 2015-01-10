.class public abstract Lnbisdk/wa;
.super Ljava/lang/Object;


# instance fields
.field private aW:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnbisdk/wa;->aW:[B

    return-void
.end method

.method private readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lnbisdk/wa;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation
.end method

.method public final bT(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    new-array v0, p1, [B

    invoke-direct {p0, v0}, Lnbisdk/wa;->readFully([B)V

    return-object v0
.end method

.method public final bU(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnbisdk/wa;->bT(I)[B

    move-result-object v0

    invoke-static {v0}, Lnbisdk/jd;->f([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract close()V
.end method

.method public final drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lnbisdk/wa;->readByte()B
    :try_end_0
    .catch Lnbisdk/bz; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method

.method public final oq()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x1f4

    new-array v4, v0, [B

    move v0, v2

    move v1, v2

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v5, 0x0

    :try_start_0
    array-length v6, v4

    invoke-virtual {p0, v4, v5, v6}, Lnbisdk/wa;->read([BII)I
    :try_end_0
    .catch Lnbisdk/bz; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {v3, v4, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final or()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget-object v1, p0, Lnbisdk/wa;->aW:[B

    invoke-direct {p0, v1}, Lnbisdk/wa;->readFully([B)V

    iget-object v1, p0, Lnbisdk/wa;->aW:[B

    aget-byte v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/wa;->aW:[B

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lnbisdk/wa;->a([BII)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/bz;

    invoke-direct {v0}, Lnbisdk/bz;-><init>()V

    throw v0

    :cond_0
    return v0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/wa;->aW:[B

    invoke-direct {p0, v0}, Lnbisdk/wa;->readFully([B)V

    iget-object v0, p0, Lnbisdk/wa;->aW:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method
