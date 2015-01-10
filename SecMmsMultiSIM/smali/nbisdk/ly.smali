.class public final Lnbisdk/ly;
.super Ljava/lang/Object;


# instance fields
.field public sp:D

.field public sq:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, -0x3f70c80000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lnbisdk/ly;->sp:D

    iput-wide v0, p0, Lnbisdk/ly;->sq:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnbisdk/ly;->sp:D

    iput-wide p3, p0, Lnbisdk/ly;->sq:D

    return-void
.end method

.method public constructor <init>(Lnbisdk/ly;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lnbisdk/ly;->sp:D

    iput-wide v0, p0, Lnbisdk/ly;->sp:D

    iget-wide v0, p1, Lnbisdk/ly;->sq:D

    iput-wide v0, p0, Lnbisdk/ly;->sq:D

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lat"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ly;->sp:D

    const-string v0, "lon"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ly;->sq:D

    return-void
.end method

.method public static a(Lnbisdk/cl;)Lnbisdk/ze;
    .locals 4

    new-instance v0, Lnbisdk/ze;

    const-string v1, "point"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "lat"

    invoke-interface {p0}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v1, "lon"

    invoke-interface {p0}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    return-object v0
.end method


# virtual methods
.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lnbisdk/ly;->sp:D

    iget-wide v2, p0, Lnbisdk/ly;->sq:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x19

    return v0
.end method
