.class final Lnbisdk/xh;
.super Lnbisdk/wo;


# instance fields
.field private aW:[B

.field private ay:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/wo;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnbisdk/xh;->aW:[B

    return-void
.end method

.method private d(Z)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lnbisdk/xh;->ay:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lnbisdk/wo;->BH:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lnbisdk/xh;->aW:[B

    aget-byte v2, v2, v1

    shl-int/lit8 v2, v2, 0x6

    iget-object v3, p0, Lnbisdk/xh;->aW:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Lnbisdk/xh;->aW:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Lnbisdk/xh;->aW:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lnbisdk/xh;->aW:[B

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/xh;->ay:I

    :goto_1
    return-void

    :cond_1
    iput v1, p0, Lnbisdk/xh;->ay:I

    goto :goto_1
.end method


# virtual methods
.method protected final P()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnbisdk/xh;->d(Z)V

    return-void
.end method

.method public final m(ZZ)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lnbisdk/xh;->ay:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v2, p0, Lnbisdk/xh;->aW:[B

    iget v3, p0, Lnbisdk/xh;->ay:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lnbisdk/xh;->ay:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :goto_0
    aput-byte v0, v2, v3

    iget v0, p0, Lnbisdk/xh;->ay:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lnbisdk/xh;->d(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
