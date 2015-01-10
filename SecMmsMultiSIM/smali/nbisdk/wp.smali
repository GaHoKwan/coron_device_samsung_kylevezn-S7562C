.class public final Lnbisdk/wp;
.super Lnbisdk/gw;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "r"

    invoke-direct {p0, v0}, Lnbisdk/wp;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/gw;->f(B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/gw;-><init>()V

    const-string v0, "all"

    iput-object v0, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnbisdk/wp;->t(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnbisdk/vl;

    const-string v1, "fuel-type"

    invoke-direct {v0, v1, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method
