.class public Lnbisdk/db;
.super Ljava/lang/Object;


# static fields
.field private static eJ:Z

.field protected static fm:Lnbisdk/ja;

.field private static fn:Lnbisdk/ir;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnbisdk/ja;

    invoke-direct {v0}, Lnbisdk/ja;-><init>()V

    sput-object v0, Lnbisdk/db;->fm:Lnbisdk/ja;

    const/4 v0, 0x0

    sput-boolean v0, Lnbisdk/db;->eJ:Z

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    sput-object v0, Lnbisdk/db;->fn:Lnbisdk/ir;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized J(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized K(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lnbisdk/db;->J(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized L(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized M(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lnbisdk/db;

    monitor-enter v1

    const/16 v0, 0x35

    const/16 v2, 0xc8

    :try_start_0
    invoke-static {v0, v2}, Lnbisdk/db;->a(SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logTrafficSession > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/db;->N(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static N(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnbisdk/db;->fn:Lnbisdk/ir;

    invoke-virtual {v0, p0}, Lnbisdk/ir;->aq(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(IDDLjava/lang/String;)V
    .locals 4

    const-class v1, Lnbisdk/db;

    monitor-enter v1

    const/16 v0, 0x89

    const/16 v2, 0x24

    :try_start_0
    invoke-static {v0, v2}, Lnbisdk/db;->a(SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logTrafficRegion > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/db;->N(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(IIIBB)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(IIIII)V
    .locals 4

    const-class v1, Lnbisdk/db;

    monitor-enter v1

    const/16 v0, 0x56

    const/16 v2, 0x14

    :try_start_0
    invoke-static {v0, v2}, Lnbisdk/db;->a(SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logRasterCacheState > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/db;->N(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;III)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;CDD)V
    .locals 4

    const-class v1, Lnbisdk/db;

    monitor-enter v1

    const/16 v0, 0x8a

    const/16 v2, 0x2b

    :try_start_0
    invoke-static {v0, v2}, Lnbisdk/db;->a(SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logTrafficFlow2 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/db;->N(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Lnbisdk/se;)V
    .locals 2

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1, p0}, Lnbisdk/db;->a(SLnbisdk/se;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(SI)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized a(SLnbisdk/se;)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;III)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b(Lnbisdk/se;)V
    .locals 4

    const-class v1, Lnbisdk/db;

    monitor-enter v1

    const/16 v0, 0x26

    const/16 v2, 0x52

    :try_start_0
    invoke-static {v0, v2}, Lnbisdk/db;->a(SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logGpsFixInternal > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/db;->N(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;III)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized c([B)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized close()V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized dM()V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized dN()V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method public static getSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized p(Z)V
    .locals 1

    const-class v0, Lnbisdk/db;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method
