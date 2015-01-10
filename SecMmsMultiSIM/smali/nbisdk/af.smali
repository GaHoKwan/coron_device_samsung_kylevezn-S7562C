.class final Lnbisdk/af;
.super Ljava/lang/Object;


# instance fields
.field private aV:Lnbisdk/ak;

.field private bn:Lnbisdk/wa;


# direct methods
.method public constructor <init>(Lnbisdk/ak;Lnbisdk/wa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/af;->aV:Lnbisdk/ak;

    iput-object p2, p0, Lnbisdk/af;->bn:Lnbisdk/wa;

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 1

    iget-object v0, p0, Lnbisdk/af;->bn:Lnbisdk/wa;

    invoke-virtual {v0}, Lnbisdk/wa;->close()V

    return-void
.end method

.method public final aF()Lnbisdk/ai;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/af;->bn:Lnbisdk/wa;

    invoke-virtual {v0}, Lnbisdk/wa;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x3f

    add-int/lit8 v1, v1, 0x1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lnbisdk/af;->bn:Lnbisdk/wa;

    invoke-virtual {v2, v1}, Lnbisdk/wa;->bT(I)[B

    move-result-object v2

    iget-object v1, p0, Lnbisdk/af;->bn:Lnbisdk/wa;

    invoke-virtual {v1, v0}, Lnbisdk/wa;->bT(I)[B

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, v3, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lnbisdk/dp;

    iget-object v3, p0, Lnbisdk/af;->bn:Lnbisdk/wa;

    invoke-direct {v1, v3, v0}, Lnbisdk/dp;-><init>(Lnbisdk/wa;I)V

    :try_start_0
    new-instance v0, Lnbisdk/ac;

    iget-object v3, p0, Lnbisdk/af;->aV:Lnbisdk/ak;

    invoke-direct {v0, v3, v2}, Lnbisdk/ac;-><init>(Lnbisdk/ak;[B)V

    invoke-virtual {v0, v1}, Lnbisdk/ac;->a(Lnbisdk/dp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lnbisdk/wa;->drain()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lnbisdk/wa;->drain()V

    throw v0
.end method
