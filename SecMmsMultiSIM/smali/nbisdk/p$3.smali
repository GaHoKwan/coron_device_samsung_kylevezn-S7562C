.class final Lnbisdk/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/p;->hY()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lnbisdk/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lnbisdk/p;->hZ()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lnbisdk/p;->ia()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/p;->ic()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnbisdk/p;->ib()Lnbisdk/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/p$c;->endTransaction()V

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/p;->C(Z)Z

    invoke-static {}, Lnbisdk/p;->ib()Lnbisdk/p$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/p;->a(Lnbisdk/p$c;)Lnbisdk/p$c;

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/p;->a(Landroid/os/Handler;)Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/p;->c(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
