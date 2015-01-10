.class public abstract Lnbisdk/fb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/fb$a;
    }
.end annotation


# instance fields
.field private bx:I

.field protected cq:J

.field protected ve:Lnbisdk/ph;

.field protected vf:Lnbisdk/ds;

.field protected vg:Lnbisdk/nb;

.field protected vh:Z

.field private vi:Lnbisdk/ds;

.field protected vj:Z

.field protected vk:Z

.field protected vl:J

.field private vm:Ljava/util/Timer;

.field protected vn:Z


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iput-object v1, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    iput-object v1, p0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    iput-wide v2, p0, Lnbisdk/fb;->cq:J

    iput-boolean v0, p0, Lnbisdk/fb;->vh:Z

    iput-object v1, p0, Lnbisdk/fb;->vi:Lnbisdk/ds;

    iput-boolean v0, p0, Lnbisdk/fb;->vj:Z

    iput-boolean v0, p0, Lnbisdk/fb;->vk:Z

    iput-wide v2, p0, Lnbisdk/fb;->vl:J

    iput-object v1, p0, Lnbisdk/fb;->vm:Ljava/util/Timer;

    iput-boolean v0, p0, Lnbisdk/fb;->vn:Z

    iput v0, p0, Lnbisdk/fb;->bx:I

    iput-object p1, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    return-void
.end method

.method protected static bf(I)I
    .locals 2

    const/16 v0, 0x2346

    const/16 v1, 0xfa3

    if-ne p0, v0, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method public static lK()Lnbisdk/dz;
    .locals 1

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lM()Lnbisdk/ez;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lnbisdk/px;->c(Lnbisdk/ez;)Lnbisdk/px;

    move-result-object v0

    check-cast v0, Lnbisdk/kp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/kp;->lM()Lnbisdk/ez;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    :cond_2
    if-nez v0, :cond_0

    invoke-static {}, Lnbisdk/ez;->fC()Lnbisdk/ez;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract ao()Z
.end method

.method public final be(I)V
    .locals 3

    const/16 v0, 0x234b

    const/4 v2, 0x1

    iput p1, p0, Lnbisdk/fb;->bx:I

    iget-boolean v1, p0, Lnbisdk/fb;->vj:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lnbisdk/fb;->vk:Z

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lnbisdk/fb;->lQ()V

    iget-object v1, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    iget v2, p0, Lnbisdk/fb;->bx:I

    if-ne v2, v0, :cond_2

    :goto_0
    invoke-interface {v1, v0}, Lnbisdk/ds;->onLocationError(I)V

    :cond_0
    invoke-virtual {p0}, Lnbisdk/fb;->cancel()Z

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x2346

    goto :goto_0
.end method

.method public cancel()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnbisdk/fb;->lQ()V

    iput-boolean v2, p0, Lnbisdk/fb;->vn:Z

    iget-object v0, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-interface {v0}, Lnbisdk/ph;->isInProgress()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-interface {v0}, Lnbisdk/ph;->cancel()V

    :cond_0
    iput-object v3, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-static {v3}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/fs;->c(Lnbisdk/ds;)V

    :cond_1
    iput-object v3, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    return v2
.end method

.method public final d(Lnbisdk/ds;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/fb;->vi:Lnbisdk/ds;

    return-void
.end method

.method public final d(Lnbisdk/nb;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    :cond_0
    return-void
.end method

.method public final e(Lnbisdk/nb;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    invoke-virtual {p0}, Lnbisdk/fb;->cancel()Z

    return-void
.end method

.method public final lA()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getNetworkLocationTimeout()I

    move-result v0

    return v0
.end method

.method public final lB()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getMaxFastSGPSAge()I

    move-result v0

    return v0
.end method

.method public final lC()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getMaxNormalSGPSAge()I

    move-result v0

    return v0
.end method

.method public final lD()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getFastSGPSFixTimeout()I

    move-result v0

    return v0
.end method

.method public final lE()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getNormalSGPSFixTimeout()I

    move-result v0

    return v0
.end method

.method public final lF()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getAccurateSGPSFixTimeout()I

    move-result v0

    return v0
.end method

.method public final lG()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getCellIDRequestTimer()I

    move-result v0

    return v0
.end method

.method public final lH()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getwiFiScanTimer()I

    move-result v0

    return v0
.end method

.method public final lI()I
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getWarmupFixTimeout()I

    move-result v0

    return v0
.end method

.method public final lJ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ez;->getAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final lL()Lnbisdk/ph;
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lnbisdk/fb;->lM()Lnbisdk/ez;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnbisdk/ez;->getUseOwnNetworkLocation()Z

    move-result v0

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lnbisdk/fb;->lK()Lnbisdk/dz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnbisdk/dz;->eN()Lnbisdk/ph;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lnbisdk/gf;

    invoke-direct {v0}, Lnbisdk/gf;-><init>()V

    :cond_1
    return-object v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final lN()V
    .locals 2

    invoke-virtual {p0}, Lnbisdk/fb;->lQ()V

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    const/16 v1, 0x2346

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_0
    invoke-virtual {p0}, Lnbisdk/fb;->cancel()Z

    return-void
.end method

.method public final lO()Lnbisdk/ds;
    .locals 1

    iget-object v0, p0, Lnbisdk/fb;->vi:Lnbisdk/ds;

    return-object v0
.end method

.method protected final lP()V
    .locals 4

    invoke-virtual {p0}, Lnbisdk/fb;->lQ()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnbisdk/fb;->vm:Ljava/util/Timer;

    iget-object v0, p0, Lnbisdk/fb;->vm:Ljava/util/Timer;

    new-instance v1, Lnbisdk/fb$a;

    invoke-direct {v1, p0}, Lnbisdk/fb$a;-><init>(Lnbisdk/fb;)V

    iget-wide v2, p0, Lnbisdk/fb;->vl:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected final lQ()V
    .locals 1

    iget-object v0, p0, Lnbisdk/fb;->vm:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vm:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/fb;->vm:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final lR()Lnbisdk/ft;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lnbisdk/fb;->lK()Lnbisdk/dz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lnbisdk/dz;->a(Lnbisdk/iv;)Lnbisdk/ft;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final lS()V
    .locals 2

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    const/16 v1, -0x2e

    invoke-interface {v0, v1}, Lnbisdk/ds;->providerStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected final o(J)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/fs;->gf()Lnbisdk/nb;

    move-result-object v1

    iput-object v1, p0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/fs;->getTimeSinceLastFix()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {p0, v0}, Lnbisdk/fb;->e(Lnbisdk/nb;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
