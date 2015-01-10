.class public Lnbisdk/qa;
.super Ljava/lang/Object;


# instance fields
.field private vu:Lnbisdk/yg;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/yg;

    const-string v1, "all"

    invoke-direct {v0, v1}, Lnbisdk/yg;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnbisdk/qa;->vu:Lnbisdk/yg;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/qa;->vu:Lnbisdk/yg;

    new-instance v1, Lnbisdk/vl;

    invoke-direct {v1, p1, p2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    return-void
.end method

.method public final dY()Lnbisdk/gw;
    .locals 1

    iget-object v0, p0, Lnbisdk/qa;->vu:Lnbisdk/yg;

    return-object v0
.end method
