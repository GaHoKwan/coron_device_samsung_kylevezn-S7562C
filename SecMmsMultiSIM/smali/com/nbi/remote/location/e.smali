.class abstract Lcom/nbi/remote/location/e;
.super Ljava/lang/Object;


# instance fields
.field private nq:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/nbi/remote/location/e;->nq:B

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/nbi/remote/location/e;->nq:B

    iput-byte p1, p0, Lcom/nbi/remote/location/e;->nq:B

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/nbi/remote/location/IGPSLocationServiceProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final hD()B
    .locals 1

    iget-byte v0, p0, Lcom/nbi/remote/location/e;->nq:B

    return v0
.end method
