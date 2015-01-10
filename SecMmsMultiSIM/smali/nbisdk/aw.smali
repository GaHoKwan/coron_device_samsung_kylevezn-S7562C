.class public Lnbisdk/aw;
.super Lnbisdk/fb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/aw$a;,
        Lnbisdk/aw$b;
    }
.end annotation


# instance fields
.field private ay:I

.field private jA:Lnbisdk/jp;

.field private jw:Ljava/util/Timer;

.field private jx:Ljava/util/Timer;

.field private jy:Z

.field private jz:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lnbisdk/fb;-><init>(Lnbisdk/ds;)V

    iput-object v1, p0, Lnbisdk/aw;->jw:Ljava/util/Timer;

    iput-object v1, p0, Lnbisdk/aw;->jx:Ljava/util/Timer;

    iput-boolean v0, p0, Lnbisdk/aw;->jy:Z

    iput v0, p0, Lnbisdk/aw;->ay:I

    new-instance v0, Lnbisdk/oc;

    invoke-direct {v0, p0}, Lnbisdk/oc;-><init>(Lnbisdk/aw;)V

    iput-object v0, p0, Lnbisdk/aw;->jz:Lnbisdk/ds;

    new-instance v0, Lnbisdk/od;

    invoke-direct {v0, p0}, Lnbisdk/od;-><init>(Lnbisdk/aw;)V

    iput-object v0, p0, Lnbisdk/aw;->jA:Lnbisdk/jp;

    invoke-super {p0}, Lnbisdk/fb;->lF()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnbisdk/fb;->vl:J

    return-void
.end method

.method private declared-synchronized M()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/aw;->jx:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/aw;->jx:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/aw;->jx:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lnbisdk/aw;I)I
    .locals 0

    iput p1, p0, Lnbisdk/aw;->ay:I

    return p1
.end method

.method private declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/aw;->gn()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnbisdk/aw;->jw:Ljava/util/Timer;

    iget-object v0, p0, Lnbisdk/aw;->jw:Ljava/util/Timer;

    new-instance v1, Lnbisdk/aw$b;

    invoke-direct {v1, p0}, Lnbisdk/aw$b;-><init>(Lnbisdk/aw;)V

    invoke-virtual {p0}, Lnbisdk/fb;->lH()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lnbisdk/aw;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aw;->gn()V

    return-void
.end method

.method static synthetic a(Lnbisdk/aw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnbisdk/aw;->jy:Z

    return p1
.end method

.method private aq()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v1

    invoke-super {p0}, Lnbisdk/fb;->lL()Lnbisdk/ph;

    move-result-object v2

    iput-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v2, p0, Lnbisdk/aw;->jA:Lnbisdk/jp;

    invoke-virtual {p0}, Lnbisdk/fb;->lJ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnbisdk/ph;->a(Lnbisdk/jp;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/aw;->M()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnbisdk/aw;->jx:Ljava/util/Timer;

    iget-object v0, p0, Lnbisdk/aw;->jx:Ljava/util/Timer;

    new-instance v1, Lnbisdk/aw$a;

    invoke-direct {v1, p0}, Lnbisdk/aw$a;-><init>(Lnbisdk/aw;)V

    invoke-virtual {p0}, Lnbisdk/fb;->lG()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lnbisdk/aw;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aw;->M()V

    return-void
.end method

.method static synthetic c(Lnbisdk/aw;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/aw;->jy:Z

    return v0
.end method

.method static synthetic d(Lnbisdk/aw;)Lnbisdk/ds;
    .locals 1

    iget-object v0, p0, Lnbisdk/aw;->jz:Lnbisdk/ds;

    return-object v0
.end method

.method static synthetic e(Lnbisdk/aw;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aw;->a()V

    return-void
.end method

.method private e()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, p0, Lnbisdk/fb;->vn:Z

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-interface {v2}, Lnbisdk/ph;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-super {p0}, Lnbisdk/fb;->lL()Lnbisdk/ph;

    move-result-object v2

    iput-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v3, p0, Lnbisdk/aw;->jA:Lnbisdk/jp;

    invoke-virtual {p0}, Lnbisdk/fb;->lJ()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lnbisdk/ph;->a(Lnbisdk/jp;Ljava/lang/String;)V

    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-interface {v2}, Lnbisdk/ph;->requestLocationFix()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    const/16 v2, 0x2348

    invoke-interface {v1, v2}, Lnbisdk/ph;->onLocationError(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic f(Lnbisdk/aw;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aw;->b()V

    return-void
.end method

.method static synthetic g(Lnbisdk/aw;)I
    .locals 1

    iget v0, p0, Lnbisdk/aw;->ay:I

    return v0
.end method

.method private declared-synchronized gn()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/aw;->jw:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/aw;->jw:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/aw;->jw:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lnbisdk/aw;)Z
    .locals 1

    invoke-direct {p0}, Lnbisdk/aw;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final ao()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lnbisdk/fb;->vh:Z

    invoke-virtual {p0}, Lnbisdk/fb;->lC()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0, v3, v4}, Lnbisdk/fb;->o(J)Z

    invoke-direct {p0}, Lnbisdk/aw;->aq()Z

    move-result v0

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lnbisdk/aw;->e()Z

    move-result v3

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, p0, Lnbisdk/aw;->jz:Lnbisdk/ds;

    invoke-virtual {v0, v4}, Lnbisdk/fs;->b(Lnbisdk/ds;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    iget-object v0, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    const/16 v2, 0x2346

    invoke-interface {v0, v2}, Lnbisdk/ph;->onLocationError(I)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lnbisdk/aw;->a()V

    invoke-direct {p0}, Lnbisdk/aw;->b()V

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final cancel()Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lnbisdk/aw;->gn()V

    invoke-direct {p0}, Lnbisdk/aw;->M()V

    invoke-static {}, Lnbisdk/fb;->lK()Lnbisdk/dz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnbisdk/dz;->eK()Lnbisdk/qq;

    :cond_0
    invoke-super {p0}, Lnbisdk/fb;->lR()Lnbisdk/ft;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lnbisdk/ft;->b(Lnbisdk/iv;)V

    :cond_1
    invoke-static {v1}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnbisdk/aw;->jz:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/fs;->c(Lnbisdk/ds;)V

    :cond_2
    invoke-super {p0}, Lnbisdk/fb;->cancel()Z

    move-result v0

    return v0
.end method
