.class final Lnbisdk/bt$b;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/dl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private synthetic df:Lnbisdk/bt;


# direct methods
.method synthetic constructor <init>(Lnbisdk/bt;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/bt$b;-><init>(Lnbisdk/bt;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/bt;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bt$b;->df:Lnbisdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final af()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/bt$b;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->j(Lnbisdk/bt;)Lnbisdk/dz;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/dz;->eP()Lnbisdk/jm;

    move-result-object v0

    invoke-interface {v0, v1}, Lnbisdk/jm;->e(B)Lnbisdk/cm;

    move-result-object v1

    invoke-interface {v0, v2}, Lnbisdk/jm;->e(B)Lnbisdk/cm;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/bt$b;->df:Lnbisdk/bt;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lnbisdk/cm;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnbisdk/cm;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lnbisdk/bt$b;->df:Lnbisdk/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/bt;->a(Lnbisdk/bt;I)I

    iget-object v0, p0, Lnbisdk/bt$b;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->k(Lnbisdk/bt;)Lnbisdk/bt$a;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/bt$a;->gV()V

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :cond_2
    iget-object v0, p0, Lnbisdk/bt$b;->df:Lnbisdk/bt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnbisdk/bt;->a(Lnbisdk/bt;I)I

    iget-object v0, p0, Lnbisdk/bt$b;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->k(Lnbisdk/bt;)Lnbisdk/bt$a;

    move-result-object v0

    iget-object v1, v0, Lnbisdk/bt$a;->ly:Ljava/util/Timer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lnbisdk/bt$a;->ly:Ljava/util/Timer;

    iget-object v1, v0, Lnbisdk/bt$a;->ly:Ljava/util/Timer;

    new-instance v3, Lnbisdk/bt$a$1;

    invoke-direct {v3, v0}, Lnbisdk/bt$a$1;-><init>(Lnbisdk/bt$a;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ag()V
    .locals 0

    return-void
.end method
