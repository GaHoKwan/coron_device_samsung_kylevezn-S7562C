.class public final Lnbisdk/ey;
.super Lnbisdk/ut;

# interfaces
.implements Lnbisdk/kc;


# instance fields
.field ij:Lnbisdk/ej;

.field ik:Lnbisdk/pk;

.field il:Lnbisdk/fi;

.field private im:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lnbisdk/pk;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/ut;-><init>()V

    new-instance v0, Lnbisdk/lk;

    invoke-direct {v0, p0}, Lnbisdk/lk;-><init>(Lnbisdk/ey;)V

    iput-object v0, p0, Lnbisdk/ey;->il:Lnbisdk/fi;

    new-instance v0, Lnbisdk/lj;

    invoke-direct {v0, p0}, Lnbisdk/lj;-><init>(Lnbisdk/ey;)V

    iput-object v0, p0, Lnbisdk/ey;->im:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    iput-object p2, p0, Lnbisdk/ey;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static a(Lnbisdk/pk;Landroid/content/Context;)Lnbisdk/ey;
    .locals 5

    new-instance v0, Lnbisdk/ey;

    invoke-direct {v0, p0, p1}, Lnbisdk/ey;-><init>(Lnbisdk/pk;Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnbisdk/ej;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lnbisdk/ey;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lnbisdk/ey;->im:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fA()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QALog service connection has not been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final cancelRequest()V
    .locals 2

    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    invoke-interface {v0}, Lnbisdk/ej;->cancelRequest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-static {}, Lnbisdk/ey;->fA()V

    goto :goto_0
.end method

.method public final fB()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    invoke-interface {v0}, Lnbisdk/ej;->startRequest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-static {}, Lnbisdk/ey;->fA()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fb()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    invoke-interface {v0}, Lnbisdk/ej;->fb()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

.method public final isRequestInProgress()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    invoke-interface {v0}, Lnbisdk/ej;->isRequestInProgress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-static {}, Lnbisdk/ey;->fA()V

    goto :goto_0
.end method

.method public final isServiceAvailable()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final startRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method
