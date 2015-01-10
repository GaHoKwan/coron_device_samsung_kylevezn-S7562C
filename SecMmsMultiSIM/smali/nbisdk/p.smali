.class public Lnbisdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/cz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/p$c;,
        Lnbisdk/p$b;,
        Lnbisdk/p$a;
    }
.end annotation


# static fields
.field private static final nh:Ljava/lang/Object;

.field private static ni:Ljava/lang/Runnable;

.field private static nj:Lnbisdk/p$c;

.field private static nk:Landroid/os/Handler;

.field private static nl:Z

.field private static nm:Ljava/lang/Throwable;


# instance fields
.field protected nc:Lnbisdk/fx;

.field protected nd:Ljava/lang/String;

.field protected volatile ne:I

.field protected nf:Z

.field protected ng:Z

.field private nn:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnbisdk/p;->nh:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/fx;

    invoke-direct {v0, p1}, Lnbisdk/fx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnbisdk/p;->nc:Lnbisdk/fx;

    iput-object p1, p0, Lnbisdk/p;->nn:Landroid/content/Context;

    iput-object p2, p0, Lnbisdk/p;->nd:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/p;->nf:Z

    return-void
.end method

.method static synthetic C(Z)Z
    .locals 0

    sput-boolean p0, Lnbisdk/p;->nl:Z

    return p0
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/p;)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0}, Lnbisdk/p;->hY()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lnbisdk/p$c;)Lnbisdk/p$c;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/p;->nj:Lnbisdk/p$c;

    return-object v0
.end method

.method static synthetic b(Lnbisdk/p;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnbisdk/p;->nn:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    sput-object p0, Lnbisdk/p;->nm:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/p;->ni:Ljava/lang/Runnable;

    return-object v0
.end method

.method private hY()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lnbisdk/p;->ni:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/p$3;

    invoke-direct {v0, p0}, Lnbisdk/p$3;-><init>(Lnbisdk/p;)V

    sput-object v0, Lnbisdk/p;->ni:Ljava/lang/Runnable;

    :cond_0
    sget-object v0, Lnbisdk/p;->ni:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic hZ()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnbisdk/p;->nh:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic ia()Z
    .locals 1

    sget-boolean v0, Lnbisdk/p;->nl:Z

    return v0
.end method

.method static synthetic ib()Lnbisdk/p$c;
    .locals 1

    sget-object v0, Lnbisdk/p;->nj:Lnbisdk/p$c;

    return-object v0
.end method

.method static synthetic ic()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final A(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lnbisdk/p;->nf:Z

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/lw;

    const-string v1, "Store Closed"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v3, Lnbisdk/p;->nh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lnbisdk/p;->nl:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v4, Lnbisdk/p;->nk:Landroid/os/Handler;

    invoke-direct {p0}, Lnbisdk/p;->hY()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v4, Lnbisdk/p;->nk:Landroid/os/Handler;

    new-instance v5, Lnbisdk/p$1;

    invoke-direct {v5, p0, v0, v1}, Lnbisdk/p$1;-><init>(Lnbisdk/p;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x64

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lnbisdk/fx;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT value  FROM \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' WHERE id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    move-object v2, v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :cond_4
    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_5
    new-instance v2, Lnbisdk/lw;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {v2, v0}, Lnbisdk/lw;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public final B(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/p;->nf:Z

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/lw;

    const-string v1, "Store Closed"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {}, Lnbisdk/fx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-wide/high16 v1, 0x8

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/fz;)Lnbisdk/ch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/p;->ng:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnbisdk/p;->nf:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lnbisdk/lw;

    const-string v1, "Store Closed"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lnbisdk/p$b;

    invoke-direct {v0, p0, p1}, Lnbisdk/p$b;-><init>(Lnbisdk/p;Lnbisdk/fz;)V

    return-object v0
.end method

.method public final a(I[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/p;->nf:Z

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/lw;

    const-string v1, "Store Closed"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {}, Lnbisdk/fx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lnbisdk/p;->b([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnbisdk/lw;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {v1, v0}, Lnbisdk/lw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lnbisdk/p;->nf:Z

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/lw;

    const-string v1, "Store Closed"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v2, Lnbisdk/p$2;

    invoke-direct {v2, p0, p1, v1, v0}, Lnbisdk/p$2;-><init>(Lnbisdk/p;[BLjava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V

    sget-object v3, Lnbisdk/p;->nh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    if-nez v0, :cond_4

    new-instance v0, Lnbisdk/p$c;

    invoke-direct {v0, p0}, Lnbisdk/p$c;-><init>(Lnbisdk/p;)V

    sput-object v0, Lnbisdk/p;->nj:Lnbisdk/p$c;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v4, Lnbisdk/p;->nj:Lnbisdk/p$c;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    :goto_0
    sget-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v4, 0x1

    iput v4, v0, Landroid/os/Message;->what:I

    sget-object v4, Lnbisdk/p;->nk:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sget-object v1, Lnbisdk/p;->nm:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    if-nez v0, :cond_3

    :cond_1
    sput-object v5, Lnbisdk/p;->nm:Ljava/lang/Throwable;

    sget-object v1, Lnbisdk/p;->nh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    invoke-direct {p0}, Lnbisdk/p;->hY()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lnbisdk/p;->nl:Z

    if-eqz v0, :cond_2

    sget-object v0, Lnbisdk/p;->nk:Landroid/os/Handler;

    invoke-direct {p0}, Lnbisdk/p;->hY()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_3
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {}, Lnbisdk/fx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_4
    :try_start_4
    invoke-direct {p0}, Lnbisdk/p;->hY()Ljava/lang/Runnable;

    move-result-object v0

    sget-object v4, Lnbisdk/p;->nk:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lnbisdk/lw;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {v1, v0}, Lnbisdk/lw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clear()V
    .locals 3

    iget-boolean v0, p0, Lnbisdk/p;->nf:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lnbisdk/fx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lnbisdk/lw;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {v1, v0}, Lnbisdk/lw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lnbisdk/p;->nc:Lnbisdk/fx;

    invoke-virtual {v0}, Lnbisdk/fx;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/p;->nn:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/p;->nf:Z

    return-void
.end method

.method public final dL()I
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lnbisdk/p;->ng:Z

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Lnbisdk/fx;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(id) FROM \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v2

    :goto_2
    return v0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    const-wide/high16 v4, 0x8

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v0, v4, v5, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method final hX()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/p;->ng:Z

    return v0
.end method
