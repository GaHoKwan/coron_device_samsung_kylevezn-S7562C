.class public final Lnbisdk/qb;
.super Ljava/lang/Object;


# instance fields
.field private jl:D

.field private vw:D

.field private vx:D

.field private vy:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnbisdk/qb;->jl:D

    iput-wide v0, p0, Lnbisdk/qb;->vw:D

    iput-wide v0, p0, Lnbisdk/qb;->vx:D

    iput-wide v0, p0, Lnbisdk/qb;->vy:D

    return-void
.end method

.method private lV()D
    .locals 4

    const-wide/high16 v0, -0x4010

    iget-wide v2, p0, Lnbisdk/qb;->jl:D

    mul-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L

    add-double/2addr v0, v2

    const-wide v2, 0x3f91df46a1fae711L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lnbisdk/qb;->vw:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private lW()D
    .locals 4

    const-wide/high16 v0, -0x4010

    iget-wide v2, p0, Lnbisdk/qb;->jl:D

    mul-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L

    add-double/2addr v0, v2

    const-wide v2, 0x3f91df46a1fae711L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v2, p0, Lnbisdk/qb;->vw:D

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final lX()I
    .locals 4

    invoke-direct {p0}, Lnbisdk/qb;->lV()D

    move-result-wide v0

    iget-wide v2, p0, Lnbisdk/qb;->vx:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final lY()I
    .locals 4

    invoke-direct {p0}, Lnbisdk/qb;->lW()D

    move-result-wide v0

    iget-wide v2, p0, Lnbisdk/qb;->vy:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/qb;->jl:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/qb;->vw:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ", x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lnbisdk/qb;->lV()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lnbisdk/qb;->lW()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", dx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnbisdk/qb;->lX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", dy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnbisdk/qb;->lY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(D)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/qb;->lV()D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/qb;->vx:D

    invoke-direct {p0}, Lnbisdk/qb;->lW()D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/qb;->vy:D

    iput-wide p1, p0, Lnbisdk/qb;->vw:D

    return-void
.end method
