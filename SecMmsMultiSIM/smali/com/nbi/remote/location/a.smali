.class final Lcom/nbi/remote/location/a;
.super Lcom/nbi/remote/location/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/e;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nbi/remote/location/IGPSLocationServiceProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->requestLocationFix()Z

    return-void
.end method
