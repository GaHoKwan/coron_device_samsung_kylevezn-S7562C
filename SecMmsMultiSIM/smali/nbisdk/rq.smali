.class final Lnbisdk/rq;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/sg;


# instance fields
.field private N:Ljava/lang/String;

.field private wW:Lnbisdk/wm;

.field private wX:Lnbisdk/ir;


# direct methods
.method constructor <init>(ILnbisdk/jf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4000000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/rq;->wX:Lnbisdk/ir;

    invoke-virtual {p2}, Lnbisdk/jf;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/rq;->N:Ljava/lang/String;

    invoke-virtual {p2}, Lnbisdk/jf;->il()Lnbisdk/cz;

    move-result-object v0

    check-cast v0, Lnbisdk/wm;

    iput-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    invoke-interface {v0, p1}, Lnbisdk/wm;->ao(I)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/rq;->wX:Lnbisdk/ir;

    const-string v1, "Using Persistent HashCache"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/rq;->N:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnbisdk/jf;->b(Ljava/lang/String;Z)Lnbisdk/jf;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/jf;->il()Lnbisdk/cz;

    move-result-object v0

    check-cast v0, Lnbisdk/wm;

    iput-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    :cond_0
    return-void
.end method


# virtual methods
.method public final P()V
    .locals 1

    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    invoke-interface {v0}, Lnbisdk/wm;->clear()V

    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    invoke-interface {v0}, Lnbisdk/wm;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    goto :goto_0
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    invoke-interface {v0}, Lnbisdk/wm;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lnbisdk/jd;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnbisdk/rq;->wX:Lnbisdk/ir;

    const-string v1, "DBCache.put "

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lnbisdk/rq;->b()V

    iget-object v1, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    iget-object v2, p1, Lnbisdk/jd;->N:Ljava/lang/String;

    iget-object v0, p1, Lnbisdk/jd;->fx:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lnbisdk/wm;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/rq;->wX:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final as(Ljava/lang/String;)Lnbisdk/jd;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/rq;->b()V

    iget-object v0, p0, Lnbisdk/rq;->wW:Lnbisdk/wm;

    invoke-interface {v0, p1}, Lnbisdk/wm;->aj(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lnbisdk/rq;->wX:Lnbisdk/ir;

    const-string v3, "DBCache.get hit"

    invoke-virtual {v0, v3}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    new-instance v0, Lnbisdk/jd;

    invoke-direct {v0, p1, v2}, Lnbisdk/jd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lnbisdk/rq;->wX:Lnbisdk/ir;

    invoke-virtual {v2, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
