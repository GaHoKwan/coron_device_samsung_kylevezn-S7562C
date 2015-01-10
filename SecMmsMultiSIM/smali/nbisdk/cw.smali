.class public final Lnbisdk/cw;
.super Lnbisdk/qh;

# interfaces
.implements Lnbisdk/xg;


# instance fields
.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private aG:J

.field private cJ:I

.field private fd:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p2}, Lnbisdk/qh;-><init>(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnbisdk/cw;->aG:J

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/cw;->L:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/cw;->cJ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/cw;->fd:Ljava/util/Vector;

    iput-object p1, p0, Lnbisdk/cw;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p2}, Lnbisdk/qh;-><init>(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnbisdk/cw;->aG:J

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/cw;->L:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/cw;->cJ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/cw;->fd:Ljava/util/Vector;

    iput-object p1, p0, Lnbisdk/cw;->N:Ljava/lang/String;

    iput-wide p3, p0, Lnbisdk/cw;->aG:J

    iput-object p5, p0, Lnbisdk/cw;->L:Ljava/lang/String;

    iput p6, p0, Lnbisdk/cw;->cJ:I

    return-void
.end method


# virtual methods
.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/cw;->aG:J

    return-void
.end method

.method public final d(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cw;->fd:Ljava/util/Vector;

    return-void
.end method

.method public final dC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cw;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final dD()I
    .locals 1

    iget v0, p0, Lnbisdk/cw;->cJ:I

    return v0
.end method

.method public final dE()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/cw;->fd:Ljava/util/Vector;

    return-object v0
.end method

.method public final getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cw;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeDelta()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/cw;->aG:J

    return-wide v0
.end method
