.class final Lcom/nbi/remote/location/d;
.super Lcom/nbi/remote/location/e;


# instance fields
.field private mq:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/e;-><init>(B)V

    iput-wide p1, p0, Lcom/nbi/remote/location/d;->mq:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/nbi/remote/location/IGPSLocationServiceProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/nbi/remote/location/d;->mq:J

    invoke-interface {p1, v0, v1}, Lcom/nbi/remote/location/IGPSLocationServiceProvider;->getOneFix(J)V

    return-void
.end method
