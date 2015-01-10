.class public final Lnbisdk/vy;
.super Lnbisdk/gw;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "all"

    invoke-direct {p0, v0}, Lnbisdk/vy;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/gw;->f(B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/gw;-><init>()V

    invoke-direct {p0, p1}, Lnbisdk/vy;->t(Ljava/lang/String;)V

    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    iget-object v0, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "forecast-days"

    invoke-virtual {p0, v0}, Lnbisdk/gw;->ah(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "forecast-days"

    invoke-virtual {p0, v0}, Lnbisdk/gw;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "all"

    invoke-direct {p0, v0}, Lnbisdk/vy;->t(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lnbisdk/vl;

    const-string v1, "forecast-days"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    goto :goto_0
.end method
