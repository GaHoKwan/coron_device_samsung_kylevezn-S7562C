.class public final Lnbisdk/zt;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/sg;


# instance fields
.field private final FE:Lnbisdk/sg;


# direct methods
.method public constructor <init>(Lnbisdk/sg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/zt;->FE:Lnbisdk/sg;

    return-void
.end method


# virtual methods
.method public final declared-synchronized P()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/zt;->FE:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->P()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized R()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/zt;->FE:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->R()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/zt;->FE:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lnbisdk/jd;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/zt;->FE:Lnbisdk/sg;

    invoke-interface {v0, p1}, Lnbisdk/sg;->a(Lnbisdk/jd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized as(Ljava/lang/String;)Lnbisdk/jd;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/zt;->FE:Lnbisdk/sg;

    invoke-interface {v0, p1}, Lnbisdk/sg;->as(Ljava/lang/String;)Lnbisdk/jd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
