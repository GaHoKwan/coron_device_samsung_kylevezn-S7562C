.class public Lcom/nbi/remote/ServiceManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setServiceListener(Lcom/nbi/remote/ServiceStateListener;)V
    .locals 1

    invoke-static {}, Lnbisdk/da;->hc()Lnbisdk/da;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/da;->setServiceListener(Lcom/nbi/remote/ServiceStateListener;)V

    return-void
.end method
