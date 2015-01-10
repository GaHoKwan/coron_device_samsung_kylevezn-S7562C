.class public Lnbisdk/jd;
.super Ljava/lang/Object;


# instance fields
.field N:Ljava/lang/String;

.field bE:I

.field fx:Ljava/lang/Object;

.field la:J

.field mJ:Z

.field final mr:J

.field oh:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/jd;->mJ:Z

    iput-object p1, p0, Lnbisdk/jd;->N:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/jd;->fx:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/jd;->mr:J

    iput-wide v0, p0, Lnbisdk/jd;->la:J

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/jd;->bE:I

    return-void
.end method

.method public static a(JI)[B
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    cmp-long v0, p0, v6

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bepack with negative x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, v5, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    rsub-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, p0, v6

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bepack overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method public static b(Lnbisdk/wa;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnbisdk/wa;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x7

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static f([B)J
    .locals 8

    const-wide/16 v4, 0x0

    array-length v0, p0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beunpack input too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    if-ltz v1, :cond_1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beunpack result is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-wide v2
.end method

.method public static h(J)[B
    .locals 5

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uintpack arg is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_1
    const-wide/16 v1, 0x7f

    and-long/2addr v1, p0

    long-to-int v1, v1

    const/4 v2, 0x7

    shr-long/2addr p0, v2

    cmp-long v2, p0, v3

    if-lez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    cmp-long v1, p0, v3

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_2
    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
