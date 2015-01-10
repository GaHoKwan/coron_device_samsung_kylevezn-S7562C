.class final Lnbisdk/jf$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private fU:Ljava/util/Hashtable;

.field private jy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/jf$a;->fU:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/jf$a;->jy:Z

    return-void
.end method

.method private static mv()Lnbisdk/cz;
    .locals 3

    sget-object v0, Lnbisdk/jf;->ol:Lnbisdk/nd;

    invoke-static {}, Lnbisdk/jf;->io()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lnbisdk/nd;->d(Ljava/lang/String;Z)Lnbisdk/cz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final P()V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/jf$a;->fU:Ljava/util/Hashtable;

    sget-boolean v0, Lnbisdk/jf;->jy:Z

    iput-boolean v0, p0, Lnbisdk/jf$a;->jy:Z

    iget-boolean v0, p0, Lnbisdk/jf$a;->jy:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnbisdk/jf$a;->mv()Lnbisdk/cz;

    move-result-object v1

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lnbisdk/jf$a;->jy:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1, v0}, Lnbisdk/cz;->a(Lnbisdk/fz;)Lnbisdk/ch;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    invoke-interface {v0}, Lnbisdk/ch;->cK()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lnbisdk/ch;->cJ()I

    move-result v2

    invoke-interface {v1, v2}, Lnbisdk/cz;->A(I)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iget-object v3, p0, Lnbisdk/jf$a;->fU:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lnbisdk/jf;->in()Lnbisdk/ir;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lnbisdk/jf$a;->fU:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/jf$a;->jy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnbisdk/cz;->close()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnbisdk/cz;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lnbisdk/cz;->close()V

    :cond_5
    throw v0
.end method

.method public final declared-synchronized a(Lnbisdk/cz;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/jf$a;->jy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnbisdk/jf$a;->fU:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lnbisdk/jf$a;->mv()Lnbisdk/cz;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lnbisdk/cz;->close()V

    :cond_2
    sget-object v0, Lnbisdk/jf;->ol:Lnbisdk/nd;

    invoke-interface {v0, p2}, Lnbisdk/nd;->aL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lnbisdk/cz;->b([B)I

    move-result v1

    invoke-interface {v0}, Lnbisdk/cz;->close()V

    if-ltz v1, :cond_0

    iget-object v0, p0, Lnbisdk/jf$a;->fU:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized t(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/jf$a;->jy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lnbisdk/jf$a;->mv()Lnbisdk/cz;

    move-result-object v1

    iget-object v0, p0, Lnbisdk/jf$a;->fU:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-interface {v1, v0}, Lnbisdk/cz;->B(I)V

    :cond_2
    invoke-interface {v1}, Lnbisdk/cz;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
