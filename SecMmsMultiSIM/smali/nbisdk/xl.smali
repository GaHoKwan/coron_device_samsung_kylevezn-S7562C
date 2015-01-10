.class public final Lnbisdk/xl;
.super Lnbisdk/lo;


# direct methods
.method public constructor <init>(Lnbisdk/mi;)V
    .locals 1

    new-instance v0, Lnbisdk/we;

    invoke-direct {v0}, Lnbisdk/we;-><init>()V

    invoke-direct {p0, p1, v0}, Lnbisdk/lo;-><init>(Lnbisdk/mi;Lnbisdk/gw;)V

    const-string v0, "event-venue"

    iput-object v0, p0, Lnbisdk/dg;->fC:Ljava/lang/String;

    return-void
.end method
