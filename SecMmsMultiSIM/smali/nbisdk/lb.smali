.class final Lnbisdk/lb;
.super Ljava/lang/Object;


# instance fields
.field dR:I

.field qH:D

.field qI:D

.field qJ:[I

.field qK:Lnbisdk/be;


# direct methods
.method constructor <init>(Lnbisdk/jt;)V
    .locals 3

    const/4 v2, 0x0

    const-wide v0, -0x3f70c80000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lnbisdk/lb;->qH:D

    iput-wide v0, p0, Lnbisdk/lb;->qI:D

    iput-object v2, p0, Lnbisdk/lb;->qJ:[I

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/lb;->dR:I

    iput-object v2, p0, Lnbisdk/lb;->qK:Lnbisdk/be;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnbisdk/lb;->qJ:[I

    new-instance v0, Lnbisdk/be;

    invoke-direct {v0}, Lnbisdk/be;-><init>()V

    iput-object v0, p0, Lnbisdk/lb;->qK:Lnbisdk/be;

    return-void
.end method
