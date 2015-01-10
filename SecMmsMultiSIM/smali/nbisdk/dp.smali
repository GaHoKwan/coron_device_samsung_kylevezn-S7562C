.class public final Lnbisdk/dp;
.super Lnbisdk/ns;


# instance fields
.field private ay:I

.field private bx:I


# direct methods
.method public constructor <init>(Lnbisdk/wa;I)V
    .locals 2

    invoke-direct {p0, p1}, Lnbisdk/ns;-><init>(Lnbisdk/wa;)V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lnbisdk/dp;->bx:I

    iput p2, p0, Lnbisdk/dp;->ay:I

    return-void
.end method


# virtual methods
.method protected final a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget v0, p0, Lnbisdk/dp;->ay:I

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/bz;

    invoke-direct {v0}, Lnbisdk/bz;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lnbisdk/dp;->ay:I

    if-ge v0, p3, :cond_1

    iget p3, p0, Lnbisdk/dp;->ay:I

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lnbisdk/ns;->a([BII)I

    move-result v0

    iget v1, p0, Lnbisdk/dp;->ay:I

    sub-int/2addr v1, v0

    iput v1, p0, Lnbisdk/dp;->ay:I

    iget v1, p0, Lnbisdk/dp;->ay:I

    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "negative number of bytes left"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v0
.end method

.method public final ex()F
    .locals 2

    iget v0, p0, Lnbisdk/dp;->bx:I

    iget v1, p0, Lnbisdk/dp;->ay:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lnbisdk/dp;->bx:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final length()I
    .locals 1

    iget v0, p0, Lnbisdk/dp;->bx:I

    return v0
.end method
