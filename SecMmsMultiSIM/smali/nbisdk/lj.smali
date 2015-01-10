.class final Lnbisdk/lj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic qT:Lnbisdk/ey;


# direct methods
.method constructor <init>(Lnbisdk/ey;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/lj;->qT:Lnbisdk/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lnbisdk/lj;->qT:Lnbisdk/ey;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lnbisdk/ey;->ij:Lnbisdk/ej;

    :try_start_0
    iget-object v0, p0, Lnbisdk/lj;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    iget-object v1, p0, Lnbisdk/lj;->qT:Lnbisdk/ey;

    iget-object v1, v1, Lnbisdk/ey;->il:Lnbisdk/fi;

    invoke-interface {v0, v1}, Lnbisdk/ej;->a(Lnbisdk/fi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v0, "com.nbi.remote.qalog.IQALogUploadHandler"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lnbisdk/ej;

    if-eqz v2, :cond_1

    check-cast v0, Lnbisdk/ej;

    goto :goto_0

    :cond_1
    new-instance v0, Lnbisdk/ej$a$a;

    invoke-direct {v0, p2}, Lnbisdk/ej$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/lj;->qT:Lnbisdk/ey;

    const/4 v1, 0x0

    iput-object v1, v0, Lnbisdk/ey;->ij:Lnbisdk/ej;

    return-void
.end method
