.class final Lnbisdk/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/p;->A(I)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ap:Ljava/util/concurrent/BlockingQueue;

.field private synthetic aq:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lnbisdk/p;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p0, Lnbisdk/p$1;->ap:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lnbisdk/p$1;->aq:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lnbisdk/p;->hZ()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lnbisdk/p;->ia()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/p;->ib()Lnbisdk/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/p$c;->endTransaction()V

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/p;->C(Z)Z

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lnbisdk/p$1;->ap:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lnbisdk/p$1;->ap:Ljava/util/concurrent/BlockingQueue;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_1
    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnbisdk/p$1;->aq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lnbisdk/p$1;->aq:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method
