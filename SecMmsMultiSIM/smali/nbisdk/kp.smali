.class public final Lnbisdk/kp;
.super Lnbisdk/px;

# interfaces
.implements Lnbisdk/ds;
.implements Lnbisdk/zx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/kp$c;,
        Lnbisdk/kp$b;,
        Lnbisdk/kp$a;
    }
.end annotation


# instance fields
.field private DN:Lnbisdk/qq;

.field private DO:Lnbisdk/aw;

.field private DP:Lnbisdk/ab;

.field private DQ:Lnbisdk/ru;

.field private DR:Lnbisdk/ds;

.field private DS:J

.field private V:I

.field private aR:Ljava/util/Vector;

.field private bG:Z

.field private br:Ljava/util/Vector;

.field private io:Lnbisdk/ez;


# direct methods
.method public constructor <init>(Lnbisdk/ez;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lnbisdk/px;-><init>()V

    iput-object v1, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    iput-object v1, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    iput-object v1, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    iput-object v1, p0, Lnbisdk/kp;->DN:Lnbisdk/qq;

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/kp;->V:I

    iput-object v1, p0, Lnbisdk/kp;->DO:Lnbisdk/aw;

    iput-object v1, p0, Lnbisdk/kp;->DP:Lnbisdk/ab;

    new-instance v0, Lnbisdk/om;

    invoke-direct {v0, p0}, Lnbisdk/om;-><init>(Lnbisdk/kp;)V

    iput-object v0, p0, Lnbisdk/kp;->DQ:Lnbisdk/ru;

    new-instance v0, Lnbisdk/op;

    invoke-direct {v0, p0}, Lnbisdk/op;-><init>(Lnbisdk/kp;)V

    iput-object v0, p0, Lnbisdk/kp;->DR:Lnbisdk/ds;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/kp;->DS:J

    iput-boolean v2, p0, Lnbisdk/kp;->bG:Z

    iput v2, p0, Lnbisdk/kp;->V:I

    if-eqz p1, :cond_1

    invoke-static {p1}, Lnbisdk/ez;->a(Lnbisdk/ez;)Lnbisdk/ez;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    :goto_0
    invoke-direct {p0, p1}, Lnbisdk/kp;->d(Lnbisdk/ez;)Z

    const/4 v0, 0x3

    iput v0, p0, Lnbisdk/kp;->V:I

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/tt;->a(Lnbisdk/zx;)V

    iget-object v0, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    invoke-virtual {v0}, Lnbisdk/ez;->isWarmUpFix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/kp;->DQ:Lnbisdk/ru;

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    :cond_0
    invoke-static {}, Lnbisdk/rb;->P()V

    return-void

    :cond_1
    invoke-static {}, Lnbisdk/ez;->fC()Lnbisdk/ez;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    goto :goto_0
.end method

.method private declared-synchronized P()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/kp;->DP:Lnbisdk/ab;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/ab;

    iget-object v1, p0, Lnbisdk/kp;->DR:Lnbisdk/ds;

    invoke-direct {v0, v1}, Lnbisdk/ab;-><init>(Lnbisdk/ds;)V

    iput-object v0, p0, Lnbisdk/kp;->DP:Lnbisdk/ab;

    iget-object v0, p0, Lnbisdk/kp;->DP:Lnbisdk/ab;

    invoke-virtual {v0}, Lnbisdk/ab;->ao()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized R()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnbisdk/oo;

    invoke-direct {v0, p0}, Lnbisdk/oo;-><init>(Lnbisdk/kp;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lnbisdk/kp;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/kp;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/kp;Lnbisdk/ab;)Lnbisdk/ab;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kp;->DP:Lnbisdk/ab;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/kp;Lnbisdk/aw;)Lnbisdk/aw;
    .locals 0

    iput-object p1, p0, Lnbisdk/kp;->DO:Lnbisdk/aw;

    return-object p1
.end method

.method static synthetic a(Lnbisdk/kp;Lnbisdk/qq;)Lnbisdk/qq;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kp;->DN:Lnbisdk/qq;

    return-object v0
.end method

.method static synthetic b(Lnbisdk/kp;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic b(Lnbisdk/kp;)Lnbisdk/aw;
    .locals 1

    iget-object v0, p0, Lnbisdk/kp;->DO:Lnbisdk/aw;

    return-object v0
.end method

.method static synthetic c(Lnbisdk/kp;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic d(Lnbisdk/kp;)Lnbisdk/qq;
    .locals 1

    iget-object v0, p0, Lnbisdk/kp;->DN:Lnbisdk/qq;

    return-object v0
.end method

.method private declared-synchronized d(Lnbisdk/ez;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    :cond_0
    iget-object v1, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    :cond_1
    invoke-static {p1}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/dz;->eK()Lnbisdk/qq;

    move-result-object v1

    iput-object v1, p0, Lnbisdk/kp;->DN:Lnbisdk/qq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lnbisdk/kp;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/kp;->P()V

    return-void
.end method

.method static synthetic f(Lnbisdk/kp;)Lnbisdk/ab;
    .locals 1

    iget-object v0, p0, Lnbisdk/kp;->DP:Lnbisdk/ab;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lnbisdk/ds;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "LocationProvider.getOneFix()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    if-nez v0, :cond_2

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lnbisdk/kp;->onLocationError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    :try_start_1
    new-instance v0, Lnbisdk/qp;

    invoke-direct {v0, p1}, Lnbisdk/qp;-><init>(Lnbisdk/ds;)V

    invoke-virtual {v0}, Lnbisdk/qp;->ao()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    :try_start_2
    new-instance v0, Lnbisdk/es;

    invoke-direct {v0, p1}, Lnbisdk/es;-><init>(Lnbisdk/ds;)V

    invoke-virtual {v0}, Lnbisdk/es;->ao()Z

    goto :goto_0

    :cond_4
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lnbisdk/bx;

    invoke-direct {v0, p0}, Lnbisdk/bx;-><init>(Lnbisdk/ds;)V

    invoke-virtual {v0, p1}, Lnbisdk/fb;->d(Lnbisdk/ds;)V

    :goto_1
    iget-object v1, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lnbisdk/kp$b;

    invoke-direct {v1, p0, v0}, Lnbisdk/kp$b;-><init>(Lnbisdk/kp;Lnbisdk/fb;)V

    invoke-static {v1}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lnbisdk/ck;->p(Z)V

    const/4 v0, 0x1

    const-string v1, "LocationProvider.getOneFix()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lnbisdk/sm;

    invoke-direct {v0, p0}, Lnbisdk/sm;-><init>(Lnbisdk/ds;)V

    invoke-virtual {v0, p1}, Lnbisdk/fb;->d(Lnbisdk/ds;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lnbisdk/eb;

    invoke-direct {v0, p0}, Lnbisdk/eb;-><init>(Lnbisdk/ds;)V

    invoke-virtual {v0, p1}, Lnbisdk/fb;->d(Lnbisdk/ds;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lnbisdk/nb;)V
    .locals 7

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    iget-boolean v0, p0, Lnbisdk/kp;->bG:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "LocationProvider.locationUpdated()"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Lnbisdk/nb;

    invoke-direct {v3, p1}, Lnbisdk/nb;-><init>(Lnbisdk/nb;)V

    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fb;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnbisdk/fb;->lO()Lnbisdk/ds;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v3}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    iget-object v1, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lnbisdk/fb;->cancel()Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_2
    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    const-string v1, "LocationProvider.locationUpdated"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    invoke-virtual {v0}, Lnbisdk/ez;->getCollectWiFiProbes()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lnbisdk/nb;->getValid()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    new-instance v0, Lnbisdk/kf;

    invoke-direct {v0}, Lnbisdk/kf;-><init>()V

    if-eqz p1, :cond_8

    if-nez v0, :cond_9

    :cond_8
    :goto_3
    invoke-static {v0}, Lnbisdk/rb;->f(Lnbisdk/se;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lnbisdk/nb;->getValid()I

    move-result v1

    and-int/lit8 v3, v1, 0x4

    if-lez v3, :cond_8

    invoke-virtual {p1}, Lnbisdk/nb;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnbisdk/kf;->setLatitude(D)V

    and-int/lit8 v3, v1, 0x4

    if-lez v3, :cond_8

    invoke-virtual {p1}, Lnbisdk/nb;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnbisdk/kf;->setLongitude(D)V

    and-int/lit8 v3, v1, 0x4

    if-lez v3, :cond_a

    invoke-virtual {p1}, Lnbisdk/nb;->getAltitude()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Lnbisdk/kf;->aJ(I)V

    :cond_a
    and-int/lit8 v3, v1, 0x8

    if-lez v3, :cond_b

    invoke-virtual {p1}, Lnbisdk/nb;->getHeading()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnbisdk/kf;->setHeading(D)V

    :cond_b
    and-int/lit8 v3, v1, 0x10

    if-lez v3, :cond_c

    invoke-virtual {p1}, Lnbisdk/nb;->getHorizontalVelocity()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnbisdk/kf;->p(D)V

    :cond_c
    and-int/lit8 v3, v1, 0x20

    if-lez v3, :cond_d

    invoke-virtual {p1}, Lnbisdk/nb;->getGpsTime()J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lnbisdk/kf;->setTime(J)V

    :cond_d
    and-int/lit16 v1, v1, 0x80

    if-lez v1, :cond_e

    invoke-virtual {v0, v5, v6}, Lnbisdk/kf;->r(D)V

    invoke-virtual {p1}, Lnbisdk/nb;->getAccuracy()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/kf;->q(D)V

    invoke-virtual {v0, v5, v6}, Lnbisdk/kf;->s(D)V

    invoke-virtual {v0, v5, v6}, Lnbisdk/kf;->t(D)V

    const/16 v2, 0x80

    :cond_e
    invoke-virtual {v0, v2}, Lnbisdk/kf;->setValid(I)V

    goto :goto_3
.end method

.method public final declared-synchronized e(Lnbisdk/ds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnbisdk/ok;

    invoke-direct {v0, p0, p1}, Lnbisdk/ok;-><init>(Lnbisdk/kp;Lnbisdk/ds;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized f(Lnbisdk/ds;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/kp;->bG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "Locationprovider.beginTracking()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Lnbisdk/hl;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lnbisdk/hl;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Lnbisdk/kp$a;

    invoke-direct {v0, p0, p1}, Lnbisdk/kp$a;-><init>(Lnbisdk/kp;Lnbisdk/ds;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "LocationProvider.beginTracking()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized g(Lnbisdk/ds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnbisdk/ol;

    invoke-direct {v0, p0, p1}, Lnbisdk/ol;-><init>(Lnbisdk/kp;Lnbisdk/ds;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getState()I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "LocationProvider.getState()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnbisdk/fs;->getGpsStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget v0, p0, Lnbisdk/kp;->V:I

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const-string v2, "LocationProvider.getState()"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final iK()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnbisdk/kp;->DS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnbisdk/rb;->P()V

    invoke-static {}, Lnbisdk/hx;->hA()Lnbisdk/hx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lnbisdk/dz;->eK()Lnbisdk/qq;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lnbisdk/qq;->jx()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/kp;->DS:J

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Lnbisdk/qq;->jy()Lnbisdk/jn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/hx;->c(Lnbisdk/qh;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {v1}, Lnbisdk/qq;->jz()Lnbisdk/gz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/hx;->c(Lnbisdk/qh;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final lM()Lnbisdk/ez;
    .locals 1

    iget-object v0, p0, Lnbisdk/kp;->io:Lnbisdk/ez;

    return-object v0
.end method

.method public final declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lnbisdk/px;->onDestroy()V

    iget-boolean v0, p0, Lnbisdk/kp;->bG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lnbisdk/kp;->bG:Z

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/tt;->b(Lnbisdk/zx;)V

    invoke-direct {p0}, Lnbisdk/kp;->R()V

    new-instance v0, Lnbisdk/on;

    invoke-direct {v0, p0}, Lnbisdk/on;-><init>(Lnbisdk/kp;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onLocationError(I)V
    .locals 3

    iget-boolean v0, p0, Lnbisdk/kp;->bG:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "LocationProvider.onLocationError()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fb;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnbisdk/fb;->lO()Lnbisdk/ds;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_3
    iget-object v1, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "LocationProvider.onLocationError()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized onStartLingerTimer()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/kp;->bG:Z

    invoke-direct {p0}, Lnbisdk/kp;->R()V

    const/4 v0, 0x2

    iput v0, p0, Lnbisdk/kp;->V:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final providerStateChanged(I)V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lnbisdk/kp;->bG:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lnbisdk/kp;->V:I

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "LocationProvider.providerStateChanged()"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v0, -0x2e

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lnbisdk/kp;->DQ:Lnbisdk/ru;

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lnbisdk/kp;->aR:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fb;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lnbisdk/fb;->lO()Lnbisdk/ds;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lnbisdk/ds;->providerStateChanged(I)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lnbisdk/kp;->br:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "LocationProvider.endTracking()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
