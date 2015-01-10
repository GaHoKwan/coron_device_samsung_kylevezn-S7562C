.class public final Lnbisdk/du;
.super Lnbisdk/dg;


# direct methods
.method public constructor <init>(Lnbisdk/mi;)V
    .locals 1

    invoke-direct {p0, p1}, Lnbisdk/dg;-><init>(Lnbisdk/mi;)V

    const-string v0, "weather"

    iput-object v0, p0, Lnbisdk/dg;->fC:Ljava/lang/String;

    new-instance v0, Lnbisdk/vy;

    invoke-direct {v0}, Lnbisdk/vy;-><init>()V

    iput-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    return-void
.end method
