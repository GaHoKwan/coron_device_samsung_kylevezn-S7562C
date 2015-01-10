.class public final Lcom/navbuilder/nb/e;
.super Ljava/lang/Object;


# static fields
.field private static AV:Lcom/navbuilder/nb/e;


# instance fields
.field private aH:Z

.field private aR:Ljava/util/Vector;

.field private bF:J


# direct methods
.method private constructor <init>(Lnbisdk/dz;Lnbisdk/ev;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/navbuilder/nb/e;->aR:Ljava/util/Vector;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/navbuilder/nb/e;->bF:J

    invoke-static {p2}, Lnbisdk/me;->a(Lnbisdk/ev;)V

    invoke-static {p1, p2, p0}, Lnbisdk/tt;->a(Lnbisdk/dz;Lnbisdk/ev;Lcom/navbuilder/nb/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/navbuilder/nb/e;->aH:Z

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    return-void
.end method

.method public static a(Lnbisdk/dz;Lnbisdk/ev;)Lcom/navbuilder/nb/e;
    .locals 1

    sget-object v0, Lcom/navbuilder/nb/e;->AV:Lcom/navbuilder/nb/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/navbuilder/nb/e;->a(Lnbisdk/dz;Lnbisdk/ev;Z)V

    new-instance v0, Lcom/navbuilder/nb/e;

    invoke-direct {v0, p0, p1}, Lcom/navbuilder/nb/e;-><init>(Lnbisdk/dz;Lnbisdk/ev;)V

    sput-object v0, Lcom/navbuilder/nb/e;->AV:Lcom/navbuilder/nb/e;

    invoke-interface {p0}, Lnbisdk/dz;->eI()Lnbisdk/fh;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ls;->a(Lnbisdk/fh;)V

    :cond_0
    sget-object v0, Lcom/navbuilder/nb/e;->AV:Lcom/navbuilder/nb/e;

    return-object v0
.end method

.method private static a(Lnbisdk/dz;Lnbisdk/ev;Z)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PAL cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lnbisdk/dz;->eF()Lnbisdk/kd;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network Config is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Lnbisdk/ev;->aU()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnbisdk/gv;->y(Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network Config is not complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Lcom/navbuilder/nb/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/navbuilder/nb/e;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/navbuilder/nb/e;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
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

.method public final b(Lnbisdk/dz;Lnbisdk/ev;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/navbuilder/nb/e;->a(Lnbisdk/dz;Lnbisdk/ev;Z)V

    invoke-static {p2}, Lnbisdk/me;->a(Lnbisdk/ev;)V

    invoke-static {p1, p2, p0}, Lnbisdk/tt;->a(Lnbisdk/dz;Lnbisdk/ev;Lcom/navbuilder/nb/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/navbuilder/nb/e;->aH:Z

    return-void
.end method

.method public final declared-synchronized c(Lcom/navbuilder/nb/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/navbuilder/nb/e;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final destroy()V
    .locals 1

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/db;->close()V

    :cond_0
    invoke-static {}, Lnbisdk/pu;->close()V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->T()V

    invoke-static {}, Lnbisdk/jf;->im()V

    const/4 v0, 0x0

    sput-object v0, Lcom/navbuilder/nb/e;->AV:Lcom/navbuilder/nb/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/navbuilder/nb/e;->aH:Z

    return-void
.end method

.method public final isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/navbuilder/nb/e;->aH:Z

    return v0
.end method

.method public final declared-synchronized nQ()[Lcom/navbuilder/nb/c;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/navbuilder/nb/e;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/navbuilder/nb/c;

    iget-object v1, p0, Lcom/navbuilder/nb/e;->aR:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
