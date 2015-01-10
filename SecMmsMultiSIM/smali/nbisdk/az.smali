.class public Lnbisdk/az;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ds;
.implements Lnbisdk/hv;


# static fields
.field private static cm:Lnbisdk/az;


# instance fields
.field cn:Lnbisdk/jo;

.field private co:Lnbisdk/hw;

.field private cp:Lnbisdk/ds;

.field private cq:J

.field private cr:Z

.field private cs:Lnbisdk/el;

.field private ct:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/az;->cm:Lnbisdk/az;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lnbisdk/az;->cn:Lnbisdk/jo;

    iput-object v2, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    iput-object v2, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    iput-object v2, p0, Lnbisdk/az;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnbisdk/az;->cq:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/az;->cr:Z

    iput-object v2, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    new-instance v0, Lnbisdk/by;

    invoke-direct {v0, p0}, Lnbisdk/by;-><init>(Lnbisdk/az;)V

    iput-object v0, p0, Lnbisdk/az;->ct:Ljava/lang/Runnable;

    iput-object p1, p0, Lnbisdk/az;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/el;

    invoke-direct {v0}, Lnbisdk/el;-><init>()V

    iput-object v0, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    :cond_0
    iget-object v0, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-direct {p0}, Lnbisdk/az;->aY()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lnbisdk/az;
    .locals 1

    sget-object v0, Lnbisdk/az;->cm:Lnbisdk/az;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/az;

    invoke-direct {v0, p0}, Lnbisdk/az;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnbisdk/az;->cm:Lnbisdk/az;

    :cond_0
    sget-object v0, Lnbisdk/az;->cm:Lnbisdk/az;

    return-object v0
.end method

.method private aY()V
    .locals 2

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/hw;->e(Landroid/content/Context;)Lnbisdk/hw;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    :cond_0
    iget-object v0, p0, Lnbisdk/az;->cn:Lnbisdk/jo;

    if-nez v0, :cond_1

    new-instance v0, Lnbisdk/jo;

    iget-object v1, p0, Lnbisdk/az;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnbisdk/jo;-><init>(Lnbisdk/ds;Landroid/content/Context;)V

    iput-object v0, p0, Lnbisdk/az;->cn:Lnbisdk/jo;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnbisdk/nb;->setLocationType(I)V

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    invoke-virtual {v0, p1}, Lnbisdk/hw;->c(Lnbisdk/nb;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    :cond_1
    return-void
.end method

.method public final a(Lnbisdk/ds;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-class v1, Lnbisdk/az;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    invoke-direct {p0}, Lnbisdk/az;->aY()V

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final aZ()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lnbisdk/az;->mContext:Landroid/content/Context;

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

    iput-object v2, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    iget-object v0, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    :cond_0
    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    invoke-virtual {v0}, Lnbisdk/hw;->destroy()V

    iput-object v2, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    :cond_1
    iget-object v0, p0, Lnbisdk/az;->cn:Lnbisdk/jo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/az;->cn:Lnbisdk/jo;

    invoke-virtual {v0}, Lnbisdk/jo;->stopLocationFix()Z

    iget-object v0, p0, Lnbisdk/az;->cn:Lnbisdk/jo;

    iget-object v1, v0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lnbisdk/ck;->dN()V

    :cond_2
    iput-object v2, v0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    :cond_3
    iput-object v2, p0, Lnbisdk/az;->cn:Lnbisdk/jo;

    :cond_4
    sput-object v2, Lnbisdk/az;->cm:Lnbisdk/az;

    return-void
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->f(I)V

    :cond_0
    return-void
.end method

.method public final getGpsStatus()I
    .locals 1

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    invoke-virtual {v0}, Lnbisdk/hw;->getGpsStatus()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOneFix(J)V
    .locals 2

    iget-object v0, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    iget-object v1, p0, Lnbisdk/az;->ct:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnbisdk/el;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final getTimeSinceLastFix()J
    .locals 2

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    invoke-virtual {v0}, Lnbisdk/hw;->getTimeSinceLastFix()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/az;->cq:J

    :cond_0
    iget-wide v0, p0, Lnbisdk/az;->cq:J

    return-wide v0
.end method

.method public final isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/az;->cr:Z

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    invoke-virtual {v0}, Lnbisdk/hw;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/az;->cr:Z

    :cond_0
    iget-boolean v0, p0, Lnbisdk/az;->cr:Z

    return v0
.end method

.method public final isGpsWarm()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->co:Lnbisdk/hw;

    invoke-virtual {v0}, Lnbisdk/hw;->isGpsWarm()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLocationError(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_0
    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/az;->cp:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->providerStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final requestLocationFix()Z
    .locals 2

    new-instance v0, Lnbisdk/az$2;

    invoke-direct {v0, p0}, Lnbisdk/az$2;-><init>(Lnbisdk/az;)V

    iget-object v1, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    invoke-virtual {v1, v0}, Lnbisdk/el;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stopLocationFix()Z
    .locals 2

    new-instance v0, Lnbisdk/az$1;

    invoke-direct {v0, p0}, Lnbisdk/az$1;-><init>(Lnbisdk/az;)V

    iget-object v1, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/az;->cs:Lnbisdk/el;

    invoke-virtual {v1, v0}, Lnbisdk/el;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
