.class Lnbisdk/xp;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/zx;


# static fields
.field private static Do:Lnbisdk/xp;

.field private static Dp:Lnbisdk/xp;

.field private static bx:I


# instance fields
.field private BO:Z

.field private Dn:[Lnbisdk/wg;

.field private V:I

.field private bj:I

.field private eM:Z

.field private jg:Ljava/util/Vector;

.field private sW:Z

.field private volatile tX:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lnbisdk/xp;->bx:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lnbisdk/xp;->tX:B

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    iput-boolean v0, p0, Lnbisdk/xp;->eM:Z

    iput v0, p0, Lnbisdk/xp;->bj:I

    iput v0, p0, Lnbisdk/xp;->V:I

    iput-boolean v0, p0, Lnbisdk/xp;->BO:Z

    iput-boolean v0, p0, Lnbisdk/xp;->sW:Z

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v1

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnbisdk/xp;->bj:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lnbisdk/tt;->bl(I)I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lnbisdk/xp;->bx:I

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v1

    const/16 v2, 0x21

    invoke-interface {v1, v2}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnbisdk/xp;->V:I

    iget v1, p0, Lnbisdk/xp;->V:I

    new-array v1, v1, [Lnbisdk/wg;

    iput-object v1, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    :goto_1
    iget v1, p0, Lnbisdk/xp;->V:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    new-instance v2, Lnbisdk/wg;

    invoke-direct {v2, p0}, Lnbisdk/wg;-><init>(Lnbisdk/xp;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/tt;->a(Lnbisdk/zx;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static declared-synchronized oJ()Lnbisdk/xp;
    .locals 2

    const-class v1, Lnbisdk/xp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnbisdk/xp;->Do:Lnbisdk/xp;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/xp;

    invoke-direct {v0}, Lnbisdk/xp;-><init>()V

    sput-object v0, Lnbisdk/xp;->Do:Lnbisdk/xp;

    :cond_0
    sget-object v0, Lnbisdk/xp;->Do:Lnbisdk/xp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized oK()Lnbisdk/xp;
    .locals 3

    const-class v1, Lnbisdk/xp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnbisdk/xp;->Dp:Lnbisdk/xp;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/xp;

    invoke-direct {v0}, Lnbisdk/xp;-><init>()V

    sput-object v0, Lnbisdk/xp;->Dp:Lnbisdk/xp;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lnbisdk/xp;->sW:Z

    :cond_0
    sget-object v0, Lnbisdk/xp;->Dp:Lnbisdk/xp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final M()V
    .locals 2

    const-class v1, Lnbisdk/xp;

    monitor-enter v1

    :try_start_0
    iget-byte v0, p0, Lnbisdk/xp;->tX:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lnbisdk/xp;->tX:B

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/Vector;)V
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    move v1, v2

    :goto_1
    iget v5, p0, Lnbisdk/xp;->V:I

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lnbisdk/wg;->os()Lnbisdk/eu;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnbisdk/eu;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_1

    iget-object v1, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, v0, Lnbisdk/rp;->wO:I

    :cond_5
    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    new-instance v1, Lnbisdk/jq;

    invoke-direct {v1, p0}, Lnbisdk/jq;-><init>(Lnbisdk/xp;)V

    invoke-static {v0, v1}, Lnbisdk/jx;->a(Ljava/util/Vector;Lnbisdk/fz;)V

    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    :goto_3
    iget v0, p0, Lnbisdk/xp;->bj:I

    if-lez v0, :cond_7

    iget v0, p0, Lnbisdk/xp;->bj:I

    if-lt v2, v0, :cond_7

    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    iget-object v1, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {v0}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v1

    check-cast v1, Lnbisdk/tj;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Discarding due to queue limit"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lnbisdk/tj;->a(Lnbisdk/eu;Ljava/lang/Exception;)V

    :cond_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/xp;->eM:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-class v1, Lnbisdk/xp;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lnbisdk/xp;->sW:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/xp;->Do:Lnbisdk/xp;

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lnbisdk/xp;->Dp:Lnbisdk/xp;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lnbisdk/cr;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    invoke-virtual {v0}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, v0, Lnbisdk/rp;->wO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final gn()V
    .locals 2

    const-class v1, Lnbisdk/xp;

    monitor-enter v1

    :try_start_0
    iget-byte v0, p0, Lnbisdk/xp;->tX:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lnbisdk/xp;->tX:B

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final iK()V
    .locals 9

    const/4 v2, 0x0

    iget-boolean v0, p0, Lnbisdk/xp;->eM:Z

    if-nez v0, :cond_2

    iget-byte v0, p0, Lnbisdk/xp;->tX:B

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v1, v2

    :goto_0
    iget v0, p0, Lnbisdk/xp;->V:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/wg;->bd()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    sub-long v5, v3, v5

    sget v0, Lnbisdk/xp;->bx:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/wg;->os()Lnbisdk/eu;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/wg;->a()V

    invoke-virtual {v5}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v0

    check-cast v0, Lnbisdk/tj;

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Timedout"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v6}, Lnbisdk/zh;->a(Lnbisdk/eu;Ljava/lang/Exception;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v5, v2, v0}, Lnbisdk/ck;->a(Lnbisdk/eu;IB)V

    :cond_0
    iget-object v0, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    new-instance v5, Lnbisdk/wg;

    invoke-direct {v5, p0}, Lnbisdk/wg;-><init>(Lnbisdk/xp;)V

    aput-object v5, v0, v1

    iget-object v0, p0, Lnbisdk/xp;->Dn:[Lnbisdk/wg;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method final declared-synchronized oL()Lnbisdk/eu;
    .locals 10

    const/4 v2, 0x0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lnbisdk/xp;->eM:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_2

    move-object v0, v2

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    iget-object v3, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-boolean v1, p0, Lnbisdk/xp;->BO:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lnbisdk/xp;->sW:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_8

    :try_start_4
    invoke-virtual {v0}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v1

    check-cast v1, Lnbisdk/tj;

    invoke-virtual {v1}, Lnbisdk/tj;->mH()Lnbisdk/tm;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_3
    invoke-static {}, Lnbisdk/tm;->mI()Lnbisdk/qk;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lnbisdk/tm;->mL()Lnbisdk/qk;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lnbisdk/tm;->mM()Lnbisdk/qk;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    if-nez v1, :cond_7

    :cond_4
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-wide/16 v6, 0x7d0

    :try_start_6
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v3}, Lnbisdk/tm;->mN()Lcom/navbuilder/nb/NBException;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v8, v4

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    if-eqz v1, :cond_3

    :cond_5
    if-eqz v1, :cond_6

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v1

    move-object v3, v1

    :try_start_8
    invoke-virtual {v0}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v1

    check-cast v1, Lnbisdk/tj;

    invoke-virtual {v1, v0, v3}, Lnbisdk/tj;->a(Lnbisdk/eu;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_6
    :try_start_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to get MapTile Source"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lnbisdk/xp;->BO:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_8
    :try_start_d
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_1

    :cond_9
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/xp;->jg:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, v1, Lnbisdk/rp;->wO:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1
.end method
