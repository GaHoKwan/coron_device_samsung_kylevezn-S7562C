.class public final Lnbisdk/vs;
.super Lnbisdk/ns;


# instance fields
.field private ay:I

.field private cJ:I

.field private jc:[B


# direct methods
.method public constructor <init>(Lnbisdk/wa;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lnbisdk/ns;-><init>(Lnbisdk/wa;)V

    new-array v0, p2, [B

    iput-object v0, p0, Lnbisdk/vs;->jc:[B

    iput v1, p0, Lnbisdk/vs;->ay:I

    iput v1, p0, Lnbisdk/vs;->cJ:I

    return-void
.end method

.method private d([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lnbisdk/vs;->ay:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/vs;->ay:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lnbisdk/vs;->jc:[B

    iget v2, p0, Lnbisdk/vs;->cJ:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lnbisdk/vs;->ay:I

    sub-int/2addr v1, v0

    iput v1, p0, Lnbisdk/vs;->ay:I

    iget v1, p0, Lnbisdk/vs;->cJ:I

    add-int/2addr v1, v0

    iput v1, p0, Lnbisdk/vs;->cJ:I

    return v0

    :cond_0
    iget v0, p0, Lnbisdk/vs;->ay:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fill requires empty buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vs;->jc:[B

    iget-object v1, p0, Lnbisdk/vs;->jc:[B

    array-length v1, v1

    invoke-super {p0, v0, v2, v1}, Lnbisdk/ns;->a([BII)I

    move-result v0

    iput v0, p0, Lnbisdk/vs;->ay:I

    iput v2, p0, Lnbisdk/vs;->cJ:I

    goto :goto_0
.end method


# virtual methods
.method protected final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lnbisdk/vs;->d([BII)I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/vs;->jc:[B

    invoke-super {p0}, Lnbisdk/ns;->close()V

    return-void
.end method
