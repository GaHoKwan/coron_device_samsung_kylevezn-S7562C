.class public final Lnbisdk/yq;
.super Lnbisdk/sd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/sd;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/gw;->f(B)V

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 1

    :cond_0
    const-string v0, "event-type"

    invoke-virtual {p0, v0}, Lnbisdk/gw;->ah(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "event-content-id"

    return-object v0
.end method
