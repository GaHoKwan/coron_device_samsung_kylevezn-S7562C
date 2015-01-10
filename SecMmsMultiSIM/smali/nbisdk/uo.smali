.class public final Lnbisdk/uo;
.super Ljava/lang/Object;


# instance fields
.field private final An:Lnbisdk/sg;

.field private final Ao:Lnbisdk/sg;

.field private og:Lnbisdk/ir;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4000000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/uo;->og:Lnbisdk/ir;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bl(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/16 v0, 0x79

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lnbisdk/tt;->bl(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    shl-int/lit8 v1, v0, 0x1

    :cond_1
    if-nez v0, :cond_4

    new-instance v0, Lnbisdk/ws;

    invoke-direct {v0}, Lnbisdk/ws;-><init>()V

    iput-object v0, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    :goto_0
    const/4 v0, 0x0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->nc()Lnbisdk/rk;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lnbisdk/rw;

    invoke-direct {v0, v2, v1}, Lnbisdk/rw;-><init>(Lnbisdk/rk;I)V

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "comnimtm"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lnbisdk/jf;->b(Ljava/lang/String;Z)Lnbisdk/jf;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/jf;->il()Lnbisdk/cz;

    move-result-object v0

    instance-of v0, v0, Lnbisdk/wm;

    if-eqz v0, :cond_5

    new-instance v0, Lnbisdk/rq;

    invoke-direct {v0, v1, v2}, Lnbisdk/rq;-><init>(ILnbisdk/jf;)V

    :cond_3
    :goto_1
    iput-object v0, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    return-void

    :cond_4
    new-instance v2, Lnbisdk/iz;

    new-instance v3, Lnbisdk/yb;

    invoke-direct {v3}, Lnbisdk/yb;-><init>()V

    invoke-direct {v2, v3, v0}, Lnbisdk/iz;-><init>(Lnbisdk/yb;I)V

    iput-object v2, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    goto :goto_0

    :cond_5
    new-instance v0, Lnbisdk/wi;

    invoke-direct {v0, v1, v2}, Lnbisdk/wi;-><init>(ILnbisdk/jf;)V

    goto :goto_1
.end method


# virtual methods
.method public final P()V
    .locals 3

    iget-object v1, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->a()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->a()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final R()V
    .locals 3

    iget-object v1, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->P()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->R()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;JZ)V
    .locals 5

    new-instance v0, Lnbisdk/jd;

    invoke-direct {v0, p1, p2}, Lnbisdk/jd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p3, v0, Lnbisdk/jd;->oh:J

    iput-boolean p5, v0, Lnbisdk/jd;->mJ:Z

    iget-object v1, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    monitor-enter v1

    if-nez p5, :cond_0

    :try_start_0
    iget-object v2, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    invoke-interface {v3, v0}, Lnbisdk/sg;->a(Lnbisdk/jd;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    :try_start_2
    iget-object v2, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    invoke-interface {v2, v0}, Lnbisdk/sg;->a(Lnbisdk/jd;)V

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget v1, v0, Lnbisdk/rp;->wR:I

    iget v2, v0, Lnbisdk/rp;->wS:I

    add-int/2addr v1, v2

    iget v2, v0, Lnbisdk/rp;->wR:I

    iget v3, v0, Lnbisdk/rp;->wS:I

    iget v4, v0, Lnbisdk/rp;->wO:I

    iget v0, v0, Lnbisdk/rp;->wT:I

    invoke-static {v1, v2, v3, v4, v0}, Lnbisdk/db;->a(IIIII)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final bp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    iget-object v1, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    invoke-interface {v0, p1}, Lnbisdk/sg;->as(Ljava/lang/String;)Lnbisdk/jd;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v2, Lnbisdk/me;->sC:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/uo;->og:Lnbisdk/ir;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From MemCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lnbisdk/jd;->fx:Ljava/lang/Object;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bq(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0, p1}, Lnbisdk/uo;->bp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lnbisdk/uo;->bp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-boolean v0, Lnbisdk/me;->sC:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/uo;->og:Lnbisdk/ir;

    const-string v2, "Cache get trying db"

    invoke-virtual {v0, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    invoke-interface {v0, p1}, Lnbisdk/sg;->as(Ljava/lang/String;)Lnbisdk/jd;

    move-result-object v0

    sget-boolean v2, Lnbisdk/me;->sC:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lnbisdk/uo;->og:Lnbisdk/ir;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From PersistentCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lnbisdk/jd;->mJ:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    invoke-interface {v3, v0}, Lnbisdk/sg;->a(Lnbisdk/jd;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    if-eqz v0, :cond_5

    :try_start_3
    iget-object v0, v0, Lnbisdk/jd;->fx:Ljava/lang/Object;

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d(Z)V
    .locals 5

    iget-object v1, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lnbisdk/uo;->An:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->P()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    iget-object v0, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->P()V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget v1, v0, Lnbisdk/rp;->wR:I

    iget v2, v0, Lnbisdk/rp;->wS:I

    add-int/2addr v1, v2

    iget v2, v0, Lnbisdk/rp;->wR:I

    iget v3, v0, Lnbisdk/rp;->wS:I

    iget v4, v0, Lnbisdk/rp;->wO:I

    iget v0, v0, Lnbisdk/rp;->wT:I

    invoke-static {v1, v2, v3, v4, v0}, Lnbisdk/db;->a(IIIII)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    :try_start_5
    iget-object v0, p0, Lnbisdk/uo;->Ao:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method
