.class public Lcom/nbi/location/LocationProvider;
.super Ljava/lang/Object;


# static fields
.field public static final LOCATION_FIX_ACCURATE:I = 0x2

.field public static final LOCATION_FIX_FAST:I = 0x0

.field public static final LOCATION_FIX_NORMAL:I = 0x1

.field public static final STATE_DESTROY_PENDING:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x3

.field public static final STATE_INITIALIZE_PENDING:I = 0x1

.field public static final STATE_OUT_OF_SERVICE:I = 0x9

.field public static final STATE_RESUME:I = 0x7

.field public static final STATE_SUSPENDED:I = 0x6

.field public static final STATE_TEMPORARILY_UNAVAILABLE:I = 0x8

.field public static final STATE_TRACKING_GPS:I = 0x5

.field public static final STATE_TRACKING_NETWORK:I = 0x4

.field public static final STATE_UNDEFINED:I

.field private static po:Lcom/nbi/location/LocationProvider;


# instance fields
.field private pm:Ljava/util/Vector;

.field private pn:Ljava/util/Vector;

.field private pp:Lcom/nbi/location/Location;

.field private pq:I

.field private pr:Lnbisdk/dz;

.field private ps:Lnbisdk/bt;

.field private pt:Lnbisdk/px;

.field private pu:Lnbisdk/ds;

.field pv:Ljava/lang/Runnable;

.field pw:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nbi/location/LocationProvider;->po:Lcom/nbi/location/LocationProvider;

    return-void
.end method

.method private constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/location/LocationConfig;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->pm:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nbi/location/LocationProvider;->pp:Lcom/nbi/location/Location;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nbi/location/LocationProvider;->pq:I

    iput-object v1, p0, Lcom/nbi/location/LocationProvider;->pr:Lnbisdk/dz;

    iput-object v1, p0, Lcom/nbi/location/LocationProvider;->ps:Lnbisdk/bt;

    iput-object v1, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    new-instance v0, Lcom/nbi/location/b;

    invoke-direct {v0, p0}, Lcom/nbi/location/b;-><init>(Lcom/nbi/location/LocationProvider;)V

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    new-instance v0, Lcom/nbi/location/a;

    invoke-direct {v0, p0}, Lcom/nbi/location/a;-><init>(Lcom/nbi/location/LocationProvider;)V

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->pv:Ljava/lang/Runnable;

    new-instance v0, Lcom/nbi/location/c;

    invoke-direct {v0, p0}, Lcom/nbi/location/c;-><init>(Lcom/nbi/location/LocationProvider;)V

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->pw:Ljava/lang/Runnable;

    invoke-static {}, Lnbisdk/ez;->fC()Lnbisdk/ez;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->getCollectWiFiProbes()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setCollectWiFiProbes(Z)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->getLocationFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setLocationFilename(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->isEmulationMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setEmulationMode(Z)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->isRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setRoaming(Z)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->getEmuPlayStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setEmuPlayStart(I)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->isWarmUpFix()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setWarmUpFix(Z)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->getCollectWiFiProbes()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setCollectWiFiProbes(Z)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->getUseOwnNetworkLocation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setUseOwnNetworkLocation(Z)V

    invoke-virtual {p2}, Lcom/nbi/location/LocationConfig;->getAllowMockLocation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setAllowMockLocation(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getAPIKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ez;->setAPIKey(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lnbisdk/px;->c(Lnbisdk/ez;)Lnbisdk/px;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->ps:Lnbisdk/bt;

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->ps:Lnbisdk/bt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->ps:Lnbisdk/bt;

    new-instance v1, Lcom/nbi/location/LocationProvider$1;

    invoke-direct {v1, p0}, Lcom/nbi/location/LocationProvider$1;-><init>(Lcom/nbi/location/LocationProvider;)V

    invoke-virtual {v0, v1}, Lnbisdk/bt;->b(Lnbisdk/ki;)V

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->ps:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nJ()Lnbisdk/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/location/LocationProvider;->pr:Lnbisdk/dz;

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pr:Lnbisdk/dz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pr:Lnbisdk/dz;

    invoke-interface {v0}, Lnbisdk/dz;->eO()Lnbisdk/nt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nbi/location/LocationProvider;->pr:Lnbisdk/dz;

    invoke-interface {v1}, Lnbisdk/dz;->eK()Lnbisdk/qq;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/qq;->jB()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lnbisdk/nt;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nbi/location/LocationProvider;I)I
    .locals 0

    iput p1, p0, Lcom/nbi/location/LocationProvider;->pq:I

    return p1
.end method

.method static synthetic a(Lcom/nbi/location/LocationProvider;Lcom/nbi/location/Location;)Lcom/nbi/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/nbi/location/LocationProvider;->pp:Lcom/nbi/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/nbi/location/LocationProvider;)Lnbisdk/dz;
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pr:Lnbisdk/dz;

    return-object v0
.end method

.method static synthetic b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pp:Lcom/nbi/location/Location;

    return-object v0
.end method

.method static synthetic c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pm:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic d(Lcom/nbi/location/LocationProvider;)I
    .locals 1

    iget v0, p0, Lcom/nbi/location/LocationProvider;->pq:I

    return v0
.end method

.method static synthetic e(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    return-object v0
.end method

.method public static getInstance(Lcom/nbi/common/NBIContext;Lcom/nbi/location/LocationConfig;)Lcom/nbi/location/LocationProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/nbi/location/LocationProvider;->po:Lcom/nbi/location/LocationProvider;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nbi/location/LocationProvider;

    invoke-direct {v0, p0, p1}, Lcom/nbi/location/LocationProvider;-><init>(Lcom/nbi/common/NBIContext;Lcom/nbi/location/LocationConfig;)V

    sput-object v0, Lcom/nbi/location/LocationProvider;->po:Lcom/nbi/location/LocationProvider;

    :cond_1
    sget-object v0, Lcom/nbi/location/LocationProvider;->po:Lcom/nbi/location/LocationProvider;

    return-object v0
.end method


# virtual methods
.method public cancelGetLocation(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/nbi/location/LocationException;

    const/16 v1, 0x232a

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pm:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pm:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getOneFix(Lcom/nbi/location/LocationListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nbi/location/LocationException;

    const/16 v1, 0x232a

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pm:Ljava/util/Vector;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pm:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    iget-object v1, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    invoke-virtual {v0, v1, p2}, Lnbisdk/px;->a(Lnbisdk/ds;I)V
    :try_end_0
    .catch Lnbisdk/hl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    invoke-virtual {v0}, Lnbisdk/px;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pm:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    iget-object v1, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/px;->e(Lnbisdk/ds;)V
    :try_end_0
    .catch Lnbisdk/hl; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    iget-object v1, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/px;->g(Lnbisdk/ds;)V
    :try_end_1
    .catch Lnbisdk/hl; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    invoke-virtual {v0}, Lnbisdk/px;->onDestroy()V

    iput-object v2, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    :cond_0
    iput-object v2, p0, Lcom/nbi/location/LocationProvider;->pr:Lnbisdk/dz;

    sput-object v2, Lcom/nbi/location/LocationProvider;->po:Lcom/nbi/location/LocationProvider;

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public startReceivingFixes(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/nbi/location/LocationException;

    const/16 v1, 0x232a

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    iget-object v1, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/px;->f(Lnbisdk/ds;)V
    :try_end_0
    .catch Lnbisdk/hl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopReceivingFixes(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/nbi/location/LocationException;

    const/16 v1, 0x232a

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pn:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/nbi/location/LocationProvider;->pt:Lnbisdk/px;

    iget-object v1, p0, Lcom/nbi/location/LocationProvider;->pu:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/px;->e(Lnbisdk/ds;)V
    :try_end_0
    .catch Lnbisdk/hl; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
