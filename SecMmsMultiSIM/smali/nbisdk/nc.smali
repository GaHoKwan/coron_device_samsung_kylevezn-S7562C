.class public final Lnbisdk/nc;
.super Lnbisdk/lo;


# direct methods
.method public constructor <init>(Lnbisdk/mi;)V
    .locals 1

    new-instance v0, Lnbisdk/qw;

    invoke-direct {v0}, Lnbisdk/qw;-><init>()V

    invoke-direct {p0, p1, v0}, Lnbisdk/lo;-><init>(Lnbisdk/mi;Lnbisdk/gw;)V

    const-string v0, "movie"

    iput-object v0, p0, Lnbisdk/dg;->fC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final aP(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/qw;

    invoke-virtual {v0, p1}, Lnbisdk/qw;->t(Ljava/lang/String;)V

    return-void
.end method

.method public final aQ(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/qw;

    invoke-virtual {v0, p1}, Lnbisdk/qw;->au(Ljava/lang/String;)V

    return-void
.end method

.method public final aR(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    check-cast v0, Lnbisdk/qw;

    invoke-virtual {v0, p1}, Lnbisdk/qw;->av(Ljava/lang/String;)V

    return-void
.end method
