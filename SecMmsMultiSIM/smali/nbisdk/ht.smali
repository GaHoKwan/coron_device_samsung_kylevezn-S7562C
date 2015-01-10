.class public final Lnbisdk/ht;
.super Lnbisdk/dg;


# direct methods
.method public constructor <init>(Lnbisdk/mi;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnbisdk/ht;-><init>(Lnbisdk/mi;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/mi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lnbisdk/dg;-><init>(Lnbisdk/mi;)V

    iput-object p2, p0, Lnbisdk/dg;->fC:Ljava/lang/String;

    new-instance v0, Lnbisdk/wp;

    invoke-direct {v0}, Lnbisdk/wp;-><init>()V

    iput-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    return-void
.end method


# virtual methods
.method public final an(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    check-cast v0, Lnbisdk/wp;

    invoke-virtual {v0, p1}, Lnbisdk/wp;->t(Ljava/lang/String;)V

    return-void
.end method
