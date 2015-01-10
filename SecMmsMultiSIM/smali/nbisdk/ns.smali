.class public Lnbisdk/ns;
.super Lnbisdk/wa;


# instance fields
.field private uf:Lnbisdk/wa;


# direct methods
.method public constructor <init>(Lnbisdk/wa;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/wa;-><init>()V

    iput-object p1, p0, Lnbisdk/ns;->uf:Lnbisdk/wa;

    return-void
.end method


# virtual methods
.method protected a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ns;->uf:Lnbisdk/wa;

    invoke-virtual {v0, p1, p2, p3}, Lnbisdk/wa;->a([BII)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lnbisdk/ns;->uf:Lnbisdk/wa;

    invoke-virtual {v0}, Lnbisdk/wa;->close()V

    return-void
.end method
