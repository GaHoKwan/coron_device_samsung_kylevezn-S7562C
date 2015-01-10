.class public final Lnbisdk/bv;
.super Ljava/lang/Object;


# instance fields
.field public dh:D

.field public di:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnbisdk/bv;->dh:D

    iput-wide p3, p0, Lnbisdk/bv;->di:D

    return-void
.end method


# virtual methods
.method public final cb()Lnbisdk/ze;
    .locals 4

    new-instance v0, Lnbisdk/ze;

    const-string v1, "point"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "lat"

    iget-wide v2, p0, Lnbisdk/bv;->dh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "lon"

    iget-wide v2, p0, Lnbisdk/bv;->di:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lnbisdk/bv;->dh:D

    iget-wide v2, p0, Lnbisdk/bv;->di:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x19

    return v0
.end method
