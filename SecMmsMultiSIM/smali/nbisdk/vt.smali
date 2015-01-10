.class final Lnbisdk/vt;
.super Lnbisdk/ul;


# direct methods
.method constructor <init>(Lnbisdk/wa;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/ul;-><init>(Lnbisdk/wa;)V

    return-void
.end method


# virtual methods
.method protected final h(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnbisdk/ul;->h(J)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Lnbisdk/iy;->b([BI)V

    return-object v0
.end method
