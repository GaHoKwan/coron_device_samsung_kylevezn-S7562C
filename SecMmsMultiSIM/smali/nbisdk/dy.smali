.class public Lnbisdk/dy;
.super Ljava/lang/Object;


# instance fields
.field private gp:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/dy;->gp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/dy;->value:Ljava/lang/String;

    iput-object p1, p0, Lnbisdk/dy;->gp:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/dy;->value:Ljava/lang/String;

    return-void
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;D)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Lnbisdk/ql;Ljava/lang/String;)D
    .locals 2

    invoke-static {p0, p1}, Lnbisdk/fw$a;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dy;->gp:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dy;->value:Ljava/lang/String;

    return-object v0
.end method
