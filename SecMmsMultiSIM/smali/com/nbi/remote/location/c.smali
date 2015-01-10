.class public final Lcom/nbi/remote/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lnbisdk/hv;


# static fields
.field private static lg:Lcom/nbi/remote/location/c;


# instance fields
.field private cq:J

.field private cr:Z

.field private lc:Lnbisdk/ds;

.field private ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

.field private le:Lcom/nbi/remote/location/k;

.field private lf:Lcom/nbi/remote/location/i;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nbi/remote/location/c;->lg:Lcom/nbi/remote/location/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nbi/remote/location/c;->cq:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nbi/remote/location/c;->cr:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/remote/location/c;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static d(Landroid/content/Context;)Lnbisdk/hv;
    .locals 4

    sget-object v0, Lcom/nbi/remote/location/c;->lg:Lcom/nbi/remote/location/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbi/remote/location/c;

    invoke-direct {v0, p0}, Lcom/nbi/remote/location/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lnbisdk/da;->hc()Lnbisdk/da;

    move-result-object v1

    const-string v2, "com.nbi.remote.location.IGPSLocationServiceProvider"

    iget-object v3, v0, Lcom/nbi/remote/location/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v0}, Lnbisdk/da;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/nbi/remote/location/c;->lg:Lcom/nbi/remote/location/c;

    :cond_0
    sget-object v0, Lcom/nbi/remote/location/c;->lg:Lcom/nbi/remote/location/c;

    return-object v0
.end method

.method private x(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    new-instance v2, Lcom/nbi/remote/location/i;

    invoke-direct {v2}, Lcom/nbi/remote/location/i;-><init>()V

    iput-object v2, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    iget-object v2, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lnbisdk/ds;)Z
    .locals 1

    iput-object p1, p0, Lcom/nbi/remote/location/c;->lc:Lnbisdk/ds;

    const/4 v0, 0x1

    return v0
.end method

.method public final aZ()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nbi/remote/location/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    iget-object v1, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;

    invoke-interface {v0, v1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->unregister(Lcom/nbi/remote/location/b;)V

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->stopLocationFix()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sput-object v2, Lcom/nbi/remote/location/c;->lg:Lcom/nbi/remote/location/c;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/c;->x(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    invoke-virtual {v0}, Lcom/nbi/remote/location/i;->destroy()V

    goto :goto_0
.end method

.method public final getGpsStatus()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->getGpsStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getOneFix(J)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    iget-object v1, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;

    invoke-interface {v0, v1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->register(Lcom/nbi/remote/location/b;)Z

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v0, p1, p2}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->getOneFix(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/c;->x(Z)Z

    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    new-instance v1, Lcom/nbi/remote/location/d;

    invoke-direct {v1, p1, p2}, Lcom/nbi/remote/location/d;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/nbi/remote/location/i;->a(Lcom/nbi/remote/location/e;)V

    goto :goto_0
.end method

.method public final getTimeSinceLastFix()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->getTimeSinceLastFix()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbi/remote/location/c;->cq:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/nbi/remote/location/c;->cq:J

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nbi/remote/location/c;->cr:Z

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nbi/remote/location/c;->cr:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/nbi/remote/location/c;->cr:Z

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final isGpsWarm()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->isGpsWarm()Z
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

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    new-instance v0, Lcom/nbi/remote/location/k;

    iget-object v1, p0, Lcom/nbi/remote/location/c;->lc:Lnbisdk/ds;

    invoke-direct {v0, v1}, Lcom/nbi/remote/location/k;-><init>(Lnbisdk/ds;)V

    iput-object v0, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    invoke-virtual {v0}, Lcom/nbi/remote/location/i;->kY()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    iget-object v1, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;

    invoke-interface {v0, v1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->register(Lcom/nbi/remote/location/b;)Z

    :goto_1
    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    invoke-virtual {v0}, Lcom/nbi/remote/location/i;->kY()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    invoke-virtual {v0}, Lcom/nbi/remote/location/i;->kX()Lcom/nbi/remote/location/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-virtual {v0, v1}, Lcom/nbi/remote/location/e;->a(Lcom/nbi/remote/location/IGPSLocationServiceProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "com.nbi.remote.location.IGPSLocationServiceProvider"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nbi/remote/location/IGPSLocationServiceProvider$a$a;

    invoke-direct {v0, p2}, Lcom/nbi/remote/location/IGPSLocationServiceProvider$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nbi/remote/location/c;->destroy()V

    iput-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    sput-object v0, Lcom/nbi/remote/location/c;->lg:Lcom/nbi/remote/location/c;

    return-void
.end method

.method public final requestLocationFix()Z
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    iget-object v1, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;

    invoke-interface {v0, v1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->register(Lcom/nbi/remote/location/b;)Z

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->requestLocationFix()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/c;->x(Z)Z

    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    new-instance v1, Lcom/nbi/remote/location/a;

    invoke-direct {v1}, Lcom/nbi/remote/location/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nbi/remote/location/i;->a(Lcom/nbi/remote/location/e;)V

    goto :goto_0
.end method

.method public final stopLocationFix()Z
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    iget-object v1, p0, Lcom/nbi/remote/location/c;->le:Lcom/nbi/remote/location/k;

    invoke-interface {v0, v1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->unregister(Lcom/nbi/remote/location/b;)V

    iget-object v0, p0, Lcom/nbi/remote/location/c;->ld:Lcom/nbi/remote/location/IGPSLocationServiceProvider;

    invoke-interface {v0}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->stopLocationFix()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/c;->x(Z)Z

    iget-object v0, p0, Lcom/nbi/remote/location/c;->lf:Lcom/nbi/remote/location/i;

    new-instance v1, Lcom/nbi/remote/location/f;

    invoke-direct {v1}, Lcom/nbi/remote/location/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nbi/remote/location/i;->a(Lcom/nbi/remote/location/e;)V

    goto :goto_1
.end method
