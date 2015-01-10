.class final Lnbisdk/aw$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private synthetic cd:Lnbisdk/aw;


# direct methods
.method synthetic constructor <init>(Lnbisdk/aw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/aw$b;-><init>(Lnbisdk/aw;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/aw;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/aw$b;->cd:Lnbisdk/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-class v1, Lnbisdk/aw;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/aw$b;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->a(Lnbisdk/aw;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lnbisdk/aw$b;->cd:Lnbisdk/aw;

    iget-wide v4, v0, Lnbisdk/fb;->cq:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lnbisdk/aw$b;->cd:Lnbisdk/aw;

    invoke-virtual {v0}, Lnbisdk/fb;->lH()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnbisdk/aw$b;->cd:Lnbisdk/aw;

    invoke-virtual {v0}, Lnbisdk/fb;->lR()Lnbisdk/ft;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnbisdk/ft;->getWifiState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Lnbisdk/ft;->gj()Z

    :cond_0
    iget-object v0, p0, Lnbisdk/aw$b;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->e(Lnbisdk/aw;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
