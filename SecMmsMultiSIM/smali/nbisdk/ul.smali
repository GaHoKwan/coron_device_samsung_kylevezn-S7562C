.class Lnbisdk/ul;
.super Ljava/lang/Object;


# instance fields
.field private uf:Lnbisdk/wa;


# direct methods
.method constructor <init>(Lnbisdk/wa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/ul;->uf:Lnbisdk/wa;

    return-void
.end method


# virtual methods
.method public final ap()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ul;->uf:Lnbisdk/wa;

    invoke-static {v0}, Lnbisdk/jd;->b(Lnbisdk/wa;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnbisdk/ul;->h(J)[B

    move-result-object v0

    return-object v0
.end method

.method protected h(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ul;->uf:Lnbisdk/wa;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lnbisdk/wa;->bT(I)[B

    move-result-object v0

    return-object v0
.end method
