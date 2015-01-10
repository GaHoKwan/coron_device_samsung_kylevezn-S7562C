.class public final Lnbisdk/zd;
.super Ljava/lang/Object;


# instance fields
.field private bF:J

.field private bp:J

.field private cg:Ljava/lang/String;

.field private di:D

.field private fd:Ljava/util/Vector;

.field private kk:D

.field private yU:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/zd;->fd:Ljava/util/Vector;

    const-string v0, "1.1"

    iput-object v0, p0, Lnbisdk/zd;->cg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/zd;->di:D

    return-void
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/zd;->fd:Ljava/util/Vector;

    return-void
.end method

.method public final ap()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/zd;->yU:[B

    return-object v0
.end method

.method public final b(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/zd;->kk:D

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/zd;->bF:J

    return-void
.end method

.method public final bU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/zd;->cg:Ljava/lang/String;

    return-object v0
.end method

.method public final n([B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/zd;->yU:[B

    return-void
.end method

.method public final oY()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/zd;->di:D

    return-wide v0
.end method

.method public final p(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/zd;->bp:J

    return-void
.end method

.method public final pp()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/zd;->fd:Ljava/util/Vector;

    return-object v0
.end method

.method public final pq()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/zd;->bF:J

    return-wide v0
.end method

.method public final pr()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/zd;->kk:D

    return-wide v0
.end method

.method public final ps()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/zd;->bp:J

    return-wide v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/zd;->cg:Ljava/lang/String;

    return-void
.end method
