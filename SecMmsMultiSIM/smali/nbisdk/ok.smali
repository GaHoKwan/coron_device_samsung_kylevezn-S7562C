.class final Lnbisdk/ok;
.super Lnbisdk/kp$c;


# instance fields
.field private synthetic ux:Lnbisdk/kp;


# direct methods
.method constructor <init>(Lnbisdk/kp;Lnbisdk/ds;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ok;->ux:Lnbisdk/kp;

    invoke-direct {p0, p1, p2}, Lnbisdk/kp$c;-><init>(Lnbisdk/kp;Lnbisdk/ds;)V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "LocationProvider.stopReceivingFixes()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/kp$c;->aU:Lnbisdk/ds;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/ok;->ux:Lnbisdk/kp;

    iget-object v1, p0, Lnbisdk/kp$c;->aU:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/kp;->g(Lnbisdk/ds;)V

    :cond_1
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "LocationProvider.stopReceivingFixes()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
