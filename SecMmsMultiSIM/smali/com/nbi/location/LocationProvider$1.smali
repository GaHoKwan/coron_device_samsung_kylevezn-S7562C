.class final Lcom/nbi/location/LocationProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ki;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nbi/location/LocationProvider;-><init>(Lcom/nbi/common/NBIContext;Lcom/nbi/location/LocationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mN:Lcom/nbi/location/LocationProvider;


# direct methods
.method constructor <init>(Lcom/nbi/location/LocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/location/LocationProvider$1;->mN:Lcom/nbi/location/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelLingerTimer()V
    .locals 0

    return-void
.end method

.method public final onClearCache()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider$1;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->a(Lcom/nbi/location/LocationProvider;)Lnbisdk/dz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/location/LocationProvider$1;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->a(Lcom/nbi/location/LocationProvider;)Lnbisdk/dz;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/dz;->eO()Lnbisdk/nt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnbisdk/nt;->clear()V

    :cond_0
    return-void
.end method

.method public final onContextDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationProvider$1;->mN:Lcom/nbi/location/LocationProvider;

    invoke-virtual {v0}, Lcom/nbi/location/LocationProvider;->onDestroy()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onStartLingerTimer()V
    .locals 0

    return-void
.end method
