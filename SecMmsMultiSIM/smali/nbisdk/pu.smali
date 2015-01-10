.class public final Lnbisdk/pu;
.super Ljava/lang/Object;


# static fields
.field private static vc:Lnbisdk/uo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized R()V
    .locals 2

    const-class v0, Lnbisdk/pu;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lnbisdk/pu;->vc:Lnbisdk/uo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 6

    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lnbisdk/uo;->a(Ljava/lang/String;Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6

    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lnbisdk/uo;->a(Ljava/lang/String;Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static final bb(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/uo;->bp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized clear(Z)V
    .locals 2

    const-class v1, Lnbisdk/pu;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/uo;->d(Z)V

    invoke-static {}, Lnbisdk/pu;->R()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static close()V
    .locals 1

    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/uo;->P()V

    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/uo;->R()V

    return-void
.end method

.method public static final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/uo;->bq(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized lz()Lnbisdk/uo;
    .locals 2

    const-class v1, Lnbisdk/pu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnbisdk/pu;->vc:Lnbisdk/uo;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/uo;

    invoke-direct {v0}, Lnbisdk/uo;-><init>()V

    sput-object v0, Lnbisdk/pu;->vc:Lnbisdk/uo;

    :cond_0
    sget-object v0, Lnbisdk/pu;->vc:Lnbisdk/uo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lnbisdk/pu;->lz()Lnbisdk/uo;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lnbisdk/uo;->a(Ljava/lang/String;Ljava/lang/Object;JZ)V

    return-void
.end method
