.class final Lnbisdk/bt$5;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/bt;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic df:Lnbisdk/bt;


# direct methods
.method constructor <init>(Lnbisdk/bt;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bt$5;->df:Lnbisdk/bt;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-class v1, Lnbisdk/bt;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lnbisdk/bt;->nL()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/bt;->a(Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lnbisdk/bt$5;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->b(Lnbisdk/bt;)V

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
