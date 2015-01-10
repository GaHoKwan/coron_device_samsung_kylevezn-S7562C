.class public final Lnbisdk/xt;
.super Ljava/lang/Object;


# instance fields
.field private Ds:Lnbisdk/pn;

.field private fQ:Lnbisdk/hg;


# direct methods
.method public constructor <init>(Lnbisdk/pn;Lnbisdk/hg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/xt;->Ds:Lnbisdk/pn;

    iput-object p2, p0, Lnbisdk/xt;->fQ:Lnbisdk/hg;

    return-void
.end method


# virtual methods
.method public final oM()Lnbisdk/pn;
    .locals 1

    iget-object v0, p0, Lnbisdk/xt;->Ds:Lnbisdk/pn;

    return-object v0
.end method

.method public final oN()Lnbisdk/hg;
    .locals 1

    iget-object v0, p0, Lnbisdk/xt;->fQ:Lnbisdk/hg;

    return-object v0
.end method
