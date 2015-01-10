.class public abstract Lnbisdk/wc;
.super Lnbisdk/gw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/gw;-><init>()V

    const-string v0, "all"

    iput-object v0, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    return-void
.end method

.method private bu(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnbisdk/vl;

    invoke-virtual {p0}, Lnbisdk/wc;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method


# virtual methods
.method protected abstract ak()Ljava/lang/String;
.end method

.method public b(J)V
    .locals 3

    new-instance v0, Lnbisdk/vl;

    const-string v1, "start-time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method

.method public final f(Lnbisdk/gw;)V
    .locals 3

    invoke-virtual {p0}, Lnbisdk/wc;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lnbisdk/wc;->bu(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    instance-of v0, p1, Lnbisdk/wc;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lnbisdk/wc;

    invoke-virtual {v0}, Lnbisdk/wc;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lnbisdk/wc;->bu(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "venue-id"

    invoke-virtual {p1, v0}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lnbisdk/wc;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "movie-id"

    invoke-virtual {p1, v0}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lnbisdk/wc;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "theater-id"

    invoke-virtual {p1, v0}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lnbisdk/wc;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "event-content-id"

    invoke-virtual {p1, v0}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lnbisdk/wc;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public p(J)V
    .locals 3

    new-instance v0, Lnbisdk/vl;

    const-string v1, "end-time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method
