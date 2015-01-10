.class public final Lnbisdk/qw;
.super Lnbisdk/sd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/sd;-><init>()V

    const-string v0, "NowInTheater"

    invoke-virtual {p0, v0}, Lnbisdk/qw;->av(Ljava/lang/String;)V

    const-string v0, "MostPopular"

    invoke-virtual {p0, v0}, Lnbisdk/qw;->au(Ljava/lang/String;)V

    const-string v0, "All"

    invoke-virtual {p0, v0}, Lnbisdk/qw;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/gw;->f(B)V

    return-void
.end method

.method private a()V
    .locals 1

    :cond_0
    const-string v0, "showing"

    invoke-virtual {p0, v0}, Lnbisdk/gw;->ah(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "movie-id"

    return-object v0
.end method

.method public final au(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnbisdk/vl;

    const-string v1, "sort-by"

    invoke-direct {v0, v1, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method

.method public final av(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnbisdk/vl;

    const-string v1, "showing"

    invoke-direct {v0, v1, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method

.method public final b(J)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/qw;->a()V

    invoke-super {p0, p1, p2}, Lnbisdk/wc;->b(J)V

    const-string v0, "end-time"

    invoke-virtual {p0, v0}, Lnbisdk/gw;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lnbisdk/qw;->p(J)V

    :cond_0
    return-void
.end method

.method public final p(J)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/qw;->a()V

    invoke-super {p0, p1, p2}, Lnbisdk/wc;->p(J)V

    const-string v0, "start-time"

    invoke-virtual {p0, v0}, Lnbisdk/gw;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lnbisdk/qw;->b(J)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lnbisdk/vl;

    const-string v1, "genre"

    const-string v2, "All"

    invoke-direct {v0, v1, v2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->e(Lnbisdk/vl;)Z

    new-instance v0, Lnbisdk/vl;

    const-string v1, "genre"

    invoke-direct {v0, v1, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    return-void
.end method
