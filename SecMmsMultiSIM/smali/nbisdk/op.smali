.class final Lnbisdk/op;
.super Lnbisdk/mj;


# instance fields
.field private synthetic qd:Lnbisdk/kp;


# direct methods
.method constructor <init>(Lnbisdk/kp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/op;->qd:Lnbisdk/kp;

    invoke-direct {p0}, Lnbisdk/mj;-><init>()V

    return-void
.end method

.method private P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/op;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->f(Lnbisdk/kp;)Lnbisdk/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/op;->qd:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->f(Lnbisdk/kp;)Lnbisdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ab;->cancel()Z

    :cond_0
    iget-object v0, p0, Lnbisdk/op;->qd:Lnbisdk/kp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/kp;->a(Lnbisdk/kp;Lnbisdk/ab;)Lnbisdk/ab;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/op;->P()V

    return-void
.end method

.method public final onLocationError(I)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/op;->P()V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 0

    return-void
.end method
