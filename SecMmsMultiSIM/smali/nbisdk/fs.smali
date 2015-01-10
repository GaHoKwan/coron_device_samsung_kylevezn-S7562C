.class public final Lnbisdk/fs;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ds;


# static fields
.field private static jf:Lnbisdk/fs;


# instance fields
.field private br:Ljava/util/Vector;

.field private io:Lnbisdk/ez;

.field private jg:Ljava/util/Vector;

.field private jh:Lnbisdk/hv;

.field private ji:Lnbisdk/nb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/fs;->jf:Lnbisdk/fs;

    return-void
.end method

.method private constructor <init>(Lnbisdk/ez;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    iput-object v1, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    iput-object v1, p0, Lnbisdk/fs;->ji:Lnbisdk/nb;

    iput-object v1, p0, Lnbisdk/fs;->io:Lnbisdk/ez;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lnbisdk/ez;->a(Lnbisdk/ez;)Lnbisdk/ez;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fs;->io:Lnbisdk/ez;

    invoke-virtual {p1}, Lnbisdk/ez;->getAlternateGPSLocationProvider()Lnbisdk/hv;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-nez v0, :cond_0

    invoke-static {}, Lnbisdk/fs;->gg()Lnbisdk/hv;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    :cond_0
    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0, p0}, Lnbisdk/hv;->a(Lnbisdk/ds;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-nez v0, :cond_0

    invoke-static {}, Lnbisdk/fs;->gg()Lnbisdk/hv;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    :cond_0
    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    new-instance v1, Lnbisdk/oe;

    invoke-direct {v1, p0}, Lnbisdk/oe;-><init>(Lnbisdk/ds;)V

    invoke-interface {v0, v1}, Lnbisdk/hv;->a(Lnbisdk/ds;)Z

    :cond_1
    return-void
.end method

.method private aq()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    iget-object v1, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v1}, Lnbisdk/hv;->requestLocationFix()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private ar()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0}, Lnbisdk/hv;->stopLocationFix()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Lnbisdk/ez;)Lnbisdk/fs;
    .locals 1

    sget-object v0, Lnbisdk/fs;->jf:Lnbisdk/fs;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/fs;

    invoke-direct {v0, p0}, Lnbisdk/fs;-><init>(Lnbisdk/ez;)V

    sput-object v0, Lnbisdk/fs;->jf:Lnbisdk/fs;

    :cond_0
    sget-object v0, Lnbisdk/fs;->jf:Lnbisdk/fs;

    return-object v0
.end method

.method private static gg()Lnbisdk/hv;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnbisdk/dz;->eL()Lnbisdk/hv;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->io:Lnbisdk/ez;

    if-eqz v0, :cond_1

    invoke-static {}, Lnbisdk/fs;->gg()Lnbisdk/hv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->io:Lnbisdk/ez;

    invoke-virtual {v0}, Lnbisdk/ez;->getAllowMockLocation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lnbisdk/fs;->gg()Lnbisdk/hv;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hv;->aZ()Z

    move-result v0

    if-ne v0, v2, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lnbisdk/nb;

    invoke-direct {v0, p1}, Lnbisdk/nb;-><init>(Lnbisdk/nb;)V

    iput-object v0, p0, Lnbisdk/fs;->ji:Lnbisdk/nb;

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-interface {v0, p1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v3, v1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lnbisdk/fs;->ar()Z

    :cond_6
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/kf;

    invoke-direct {v0}, Lnbisdk/kf;-><init>()V

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lnbisdk/ck;->a(Lnbisdk/se;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lnbisdk/nb;->getHeading()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/kf;->setHeading(D)V

    invoke-virtual {p1}, Lnbisdk/nb;->getHorizontalVelocity()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/kf;->p(D)V

    invoke-virtual {p1}, Lnbisdk/nb;->getGpsTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/kf;->setTime(J)V

    invoke-virtual {p1}, Lnbisdk/nb;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/kf;->setLatitude(D)V

    invoke-virtual {p1}, Lnbisdk/nb;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/kf;->setLongitude(D)V

    invoke-virtual {p1}, Lnbisdk/nb;->getAltitude()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lnbisdk/kf;->aJ(I)V

    invoke-virtual {p1}, Lnbisdk/nb;->getAccuracy()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/kf;->q(D)V

    goto :goto_3
.end method

.method public final a(Lnbisdk/ds;J)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0, p2, p3}, Lnbisdk/hv;->getOneFix(J)V

    :cond_2
    move v3, v2

    :goto_1
    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-ne v0, p1, :cond_5

    move v2, v1

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lnbisdk/ds;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0}, Lnbisdk/hv;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lnbisdk/fs;->ar()Z

    invoke-direct {p0}, Lnbisdk/fs;->aq()Z

    :cond_2
    move v3, v2

    :goto_1
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-ne v0, p1, :cond_5

    move v2, v1

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lnbisdk/ds;)V
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lnbisdk/fs;->ar()Z

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final destroy()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/fs;->ar()Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_1
    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0}, Lnbisdk/hv;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/fs;->io:Lnbisdk/ez;

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/fs;->jf:Lnbisdk/fs;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f(I)V
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnbisdk/ds;->f(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lnbisdk/ds;->f(I)V

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final getGpsStatus()I
    .locals 1

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0}, Lnbisdk/hv;->getGpsStatus()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTimeSinceLastFix()J
    .locals 2

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0}, Lnbisdk/hv;->getTimeSinceLastFix()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final gf()Lnbisdk/nb;
    .locals 1

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    iget-object v0, p0, Lnbisdk/fs;->ji:Lnbisdk/nb;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 1

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0}, Lnbisdk/hv;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGpsWarm()Z
    .locals 1

    invoke-direct {p0}, Lnbisdk/fs;->P()V

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fs;->jh:Lnbisdk/hv;

    invoke-interface {v0}, Lnbisdk/hv;->isGpsWarm()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLocationError(I)V
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lnbisdk/ds;->onLocationError(I)V

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/fs;->br:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnbisdk/ds;->providerStateChanged(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lnbisdk/ds;->providerStateChanged(I)V

    iget-object v0, p0, Lnbisdk/fs;->jg:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
