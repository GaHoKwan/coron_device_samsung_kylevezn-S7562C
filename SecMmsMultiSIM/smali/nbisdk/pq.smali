.class public final Lnbisdk/pq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lnbisdk/rk;


# static fields
.field private static uX:Lnbisdk/pq;


# instance fields
.field private mContext:Landroid/content/Context;

.field private uW:Lcom/nbi/remote/ITileService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/pq;->uX:Lnbisdk/pq;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/pq;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static l(Landroid/content/Context;)Lnbisdk/rk;
    .locals 4

    sget-object v0, Lnbisdk/pq;->uX:Lnbisdk/pq;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/pq;

    invoke-direct {v0, p0}, Lnbisdk/pq;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lnbisdk/da;->hc()Lnbisdk/da;

    move-result-object v1

    const-string v2, "com.nbi.remote.ITileService"

    iget-object v3, v0, Lnbisdk/pq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v0}, Lnbisdk/da;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lnbisdk/pq;->uX:Lnbisdk/pq;

    :cond_0
    sget-object v0, Lnbisdk/pq;->uX:Lnbisdk/pq;

    return-object v0
.end method


# virtual methods
.method public final ao(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    return-void
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    return-void
.end method

.method public final getTile(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    invoke-interface {v1, p1}, Lcom/nbi/remote/ITileService;->getTile(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/nbi/remote/ITileService$a;->c(Landroid/os/IBinder;)Lcom/nbi/remote/ITileService;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    sput-object v0, Lnbisdk/pq;->uX:Lnbisdk/pq;

    return-void
.end method

.method public final open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    return-void
.end method

.method public final putTile(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    invoke-interface {v0, p1, p2}, Lcom/nbi/remote/ITileService;->putTile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/pq;->uW:Lcom/nbi/remote/ITileService;

    invoke-interface {v0}, Lcom/nbi/remote/ITileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
