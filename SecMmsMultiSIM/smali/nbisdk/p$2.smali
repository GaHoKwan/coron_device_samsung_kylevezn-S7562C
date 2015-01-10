.class final Lnbisdk/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/p;->b([B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ap:Ljava/util/concurrent/BlockingQueue;

.field private synthetic aq:Ljava/lang/Thread;

.field private synthetic at:[B

.field private synthetic au:Lnbisdk/p;


# direct methods
.method constructor <init>(Lnbisdk/p;[BLjava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/p$2;->au:Lnbisdk/p;

    iput-object p2, p0, Lnbisdk/p$2;->at:[B

    iput-object p3, p0, Lnbisdk/p$2;->ap:Ljava/util/concurrent/BlockingQueue;

    iput-object p4, p0, Lnbisdk/p$2;->aq:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v2, -0x1

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lnbisdk/p;->hZ()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lnbisdk/p;->ia()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lnbisdk/p;->ib()Lnbisdk/p$c;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/p$c;->beginTransaction()V

    const/4 v1, 0x1

    invoke-static {v1}, Lnbisdk/p;->C(Z)Z

    :cond_0
    const-string v1, "value"

    iget-object v4, p0, Lnbisdk/p$2;->at:[B

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {}, Lnbisdk/fx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnbisdk/p$2;->au:Lnbisdk/p;

    iget-object v5, v5, Lnbisdk/p;->nd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    long-to-int v1, v0

    :try_start_2
    iget-object v0, p0, Lnbisdk/p$2;->au:Lnbisdk/p;

    invoke-static {v0}, Lnbisdk/p;->a(Lnbisdk/p;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {}, Lnbisdk/p;->ic()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lnbisdk/p;->ic()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, p0, Lnbisdk/p$2;->ap:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lnbisdk/p;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lnbisdk/p$2;->ap:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lnbisdk/p$2;->aq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lnbisdk/p$2;->aq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    :try_start_8
    iget-object v1, p0, Lnbisdk/p$2;->ap:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    iget-object v1, p0, Lnbisdk/p$2;->aq:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :catchall_2
    move-exception v0

    move v2, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1
.end method
