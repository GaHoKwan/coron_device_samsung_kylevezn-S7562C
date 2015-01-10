.class public Lnbisdk/qv;
.super Ljava/lang/Object;


# instance fields
.field private wA:Lnbisdk/yz;

.field private wB:Lnbisdk/ww;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/yz;

    invoke-direct {v0}, Lnbisdk/yz;-><init>()V

    iput-object v0, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    new-instance v0, Lnbisdk/ww;

    iget-object v1, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    invoke-direct {v0, p1, v1}, Lnbisdk/ww;-><init>(Ljava/lang/String;Lnbisdk/yz;)V

    iput-object v0, p0, Lnbisdk/qv;->wB:Lnbisdk/ww;

    return-void
.end method


# virtual methods
.method public P()V
    .locals 0

    invoke-virtual {p0}, Lnbisdk/qv;->a()V

    return-void
.end method

.method public R()V
    .locals 1

    iget-object v0, p0, Lnbisdk/qv;->wB:Lnbisdk/ww;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/qv;->wB:Lnbisdk/ww;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lnbisdk/qv;->wB:Lnbisdk/ww;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/qv;->wB:Lnbisdk/ww;

    invoke-virtual {v0}, Lnbisdk/ww;->P()V

    :cond_0
    return-void
.end method

.method public a(Lnbisdk/ru;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lnbisdk/yz;->b(Lnbisdk/ru;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lnbisdk/ru;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    iget-object v0, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lnbisdk/yz;->b(Lnbisdk/ru;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lnbisdk/ru;Ljava/lang/Object;)Z
    .locals 3

    iput-object p2, p1, Lnbisdk/ru;->xt:Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lnbisdk/yz;->b(Lnbisdk/ru;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lnbisdk/ru;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lnbisdk/yz;->b(Lnbisdk/ru;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lnbisdk/ru;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    invoke-virtual {v0, p1}, Lnbisdk/yz;->a(Lnbisdk/ru;)Z

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/qv;->wA:Lnbisdk/yz;

    invoke-virtual {v0, p1}, Lnbisdk/yz;->j(Ljava/lang/Object;)Z

    return-void
.end method
