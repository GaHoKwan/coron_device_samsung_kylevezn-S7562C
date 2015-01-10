.class final Lnbisdk/oo;
.super Lnbisdk/ru;


# instance fields
.field private synthetic qd:Lnbisdk/kp;


# direct methods
.method constructor <init>(Lnbisdk/kp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->f(Lnbisdk/kp;)Lnbisdk/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->f(Lnbisdk/kp;)Lnbisdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ab;->cancel()Z

    :cond_0
    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0, v2}, Lnbisdk/kp;->a(Lnbisdk/kp;Lnbisdk/ab;)Lnbisdk/ab;

    :cond_1
    :goto_0
    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/fb;->lO()Lnbisdk/ds;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-virtual {v1, v0}, Lnbisdk/kp;->g(Lnbisdk/ds;)V
    :try_end_0
    .catch Lnbisdk/hl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_3
    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/aw;->cancel()Z

    :cond_4
    iget-object v0, p0, Lnbisdk/oo;->qd:Lnbisdk/kp;

    invoke-static {v0, v2}, Lnbisdk/kp;->a(Lnbisdk/kp;Lnbisdk/aw;)Lnbisdk/aw;

    return-void
.end method
