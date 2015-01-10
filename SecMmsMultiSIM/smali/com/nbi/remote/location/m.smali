.class public final Lcom/nbi/remote/location/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lnbisdk/jp;
.implements Lnbisdk/ph;


# static fields
.field private static DY:Lcom/nbi/remote/location/m;


# instance fields
.field private DT:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/jp;",
            ">;"
        }
    .end annotation
.end field

.field private DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

.field private DV:Lcom/nbi/remote/location/l;

.field private DW:Z

.field private DX:Z

.field private ka:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nbi/remote/location/m;->DY:Lcom/nbi/remote/location/m;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/remote/location/m;->ka:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nbi/remote/location/m;->DW:Z

    iput-boolean v1, p0, Lcom/nbi/remote/location/m;->DX:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/remote/location/m;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    new-instance v0, Lcom/nbi/remote/location/l;

    invoke-direct {v0, p0}, Lcom/nbi/remote/location/l;-><init>(Lnbisdk/jp;)V

    iput-object v0, p0, Lcom/nbi/remote/location/m;->DV:Lcom/nbi/remote/location/l;

    return-void
.end method

.method public static p(Landroid/content/Context;)Lnbisdk/ph;
    .locals 4

    sget-object v0, Lcom/nbi/remote/location/m;->DY:Lcom/nbi/remote/location/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbi/remote/location/m;

    invoke-direct {v0, p0}, Lcom/nbi/remote/location/m;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lnbisdk/da;->hc()Lnbisdk/da;

    move-result-object v1

    const-string v2, "com.nbi.remote.location.INetworkLocationServiceProvider"

    iget-object v3, v0, Lcom/nbi/remote/location/m;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v0}, Lnbisdk/da;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/nbi/remote/location/m;->DY:Lcom/nbi/remote/location/m;

    :cond_0
    sget-object v0, Lcom/nbi/remote/location/m;->DY:Lcom/nbi/remote/location/m;

    return-object v0
.end method


# virtual methods
.method public final a(Lnbisdk/jp;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/nbi/remote/location/m;->ka:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lnbisdk/nb;)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->a(Lnbisdk/nb;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nbi/remote/location/m;->DW:Z

    iget-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    iget-object v1, p0, Lcom/nbi/remote/location/m;->DV:Lcom/nbi/remote/location/l;

    invoke-interface {v0, v1}, Lcom/nbi/remote/location/INetworkLocationServiceProvider;->cancel(Lcom/nbi/remote/location/h;)V
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

.method public final isInProgress()Z
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nbi/remote/location/m;->DX:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/INetworkLocationServiceProvider;->isInProgress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLocationError(I)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->onLocationError(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    iget-object v1, p0, Lcom/nbi/remote/location/m;->DV:Lcom/nbi/remote/location/l;

    iget-object v2, p0, Lcom/nbi/remote/location/m;->ka:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nbi/remote/location/INetworkLocationServiceProvider;->init(Lcom/nbi/remote/location/h;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nbi/remote/location/m;->DW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/INetworkLocationServiceProvider;->requestLocationFix()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nbi/remote/location/m;->DX:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "com.nbi.remote.location.INetworkLocationServiceProvider"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nbi/remote/location/INetworkLocationServiceProvider$a$a;

    invoke-direct {v0, p2}, Lcom/nbi/remote/location/INetworkLocationServiceProvider$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    sput-object v0, Lcom/nbi/remote/location/m;->DY:Lcom/nbi/remote/location/m;

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->providerStateChanged(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nbi/remote/location/m;->DT:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public final requestLocationFix()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nbi/remote/location/m;->DX:Z

    if-ne v1, v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nbi/remote/location/m;->DU:Lcom/nbi/remote/location/INetworkLocationServiceProvider;

    invoke-interface {v1}, Lcom/nbi/remote/location/INetworkLocationServiceProvider;->requestLocationFix()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/nbi/remote/location/m;->DW:Z

    goto :goto_0
.end method
