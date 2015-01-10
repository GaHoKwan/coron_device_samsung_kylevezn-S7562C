.class public final Lnbisdk/bp;
.super Lnbisdk/ns;


# direct methods
.method public constructor <init>(Lnbisdk/wa;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/ns;-><init>(Lnbisdk/wa;)V

    return-void
.end method


# virtual methods
.method protected final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnbisdk/ns;->a([BII)I

    move-result v0

    invoke-static {p1, v0}, Lnbisdk/iy;->b([BI)V

    return v0
.end method
