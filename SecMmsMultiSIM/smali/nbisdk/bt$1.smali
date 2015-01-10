.class final Lnbisdk/bt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bt;
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

    iput-object p1, p0, Lnbisdk/bt$1;->df:Lnbisdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lnbisdk/bt$1;->df:Lnbisdk/bt;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/bt$1;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->g(Lnbisdk/bt;)Lcom/nbi/common/NBINetworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bt$1;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->h(Lnbisdk/bt;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnbisdk/bt$1;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->g(Lnbisdk/bt;)Lcom/nbi/common/NBINetworkListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nbi/common/NBINetworkListener;->onConnectionLost()V

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
