.class final Lnbisdk/on;
.super Lnbisdk/ru;


# instance fields
.field private synthetic qd:Lnbisdk/kp;


# direct methods
.method constructor <init>(Lnbisdk/kp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/on;->qd:Lnbisdk/kp;

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnbisdk/on;->qd:Lnbisdk/kp;

    invoke-virtual {v0}, Lnbisdk/kp;->onStartLingerTimer()V

    iget-object v0, p0, Lnbisdk/on;->qd:Lnbisdk/kp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/kp;->a(Lnbisdk/kp;Ljava/util/Vector;)Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/on;->qd:Lnbisdk/kp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/kp;->b(Lnbisdk/kp;Ljava/util/Vector;)Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/fs;->destroy()V

    :cond_0
    iget-object v0, p0, Lnbisdk/on;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->d(Lnbisdk/kp;)Lnbisdk/qq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/on;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->d(Lnbisdk/kp;)Lnbisdk/qq;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/qq;->destroy()V

    :cond_1
    iget-object v0, p0, Lnbisdk/on;->qd:Lnbisdk/kp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/kp;->a(Lnbisdk/kp;Lnbisdk/qq;)Lnbisdk/qq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lnbisdk/dz;->eO()Lnbisdk/nt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lnbisdk/nt;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
