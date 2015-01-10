.class public final Lnbisdk/ls;
.super Ljava/lang/Object;


# static fields
.field private static rl:Lnbisdk/fh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnbisdk/nj;

    invoke-direct {v0}, Lnbisdk/nj;-><init>()V

    sput-object v0, Lnbisdk/ls;->rl:Lnbisdk/fh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJ)J
    .locals 6

    const-wide/16 v2, 0x649

    div-long v0, p0, v2

    rem-long v2, p0, v2

    const-wide/16 v4, 0x324

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static a(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x3

    :goto_0
    if-lt v0, p2, :cond_0

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lnbisdk/fh;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lnbisdk/ls;->rl:Lnbisdk/fh;

    :cond_0
    return-void
.end method

.method public static a(S[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-lt v0, p2, :cond_0

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    ushr-int/lit8 v1, p0, 0x8

    int-to-short p0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static atan(D)D
    .locals 2

    sget-object v0, Lnbisdk/ls;->rl:Lnbisdk/fh;

    invoke-interface {v0, p0, p1}, Lnbisdk/fh;->atan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static c([BI)S
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x2

    :goto_0
    if-ge p1, v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public static d([BI)I
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x4

    :goto_0
    if-ge p1, v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static exp(D)D
    .locals 2

    sget-object v0, Lnbisdk/ls;->rl:Lnbisdk/fh;

    invoke-interface {v0, p0, p1}, Lnbisdk/fh;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static log(D)D
    .locals 2

    sget-object v0, Lnbisdk/ls;->rl:Lnbisdk/fh;

    invoke-interface {v0, p0, p1}, Lnbisdk/fh;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static n(J)I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    cmp-long v1, p0, v4

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const-wide/16 v1, 0x1

    :goto_0
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    shl-long/2addr v1, v3

    goto :goto_0
.end method

.method public static sinh(D)D
    .locals 2

    sget-object v0, Lnbisdk/ls;->rl:Lnbisdk/fh;

    invoke-interface {v0, p0, p1}, Lnbisdk/fh;->sinh(D)D

    move-result-wide v0

    return-wide v0
.end method
