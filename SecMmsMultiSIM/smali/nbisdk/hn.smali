.class public Lnbisdk/hn;
.super Ljava/lang/Object;


# instance fields
.field private aB:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/hn;->aB:Ljava/util/Vector;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyword parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static ax(I)D
    .locals 2

    sget-object v0, Lnbisdk/se;->xy:[D

    array-length v0, v0

    if-ltz p0, :cond_0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v1, Lnbisdk/se;->xy:[D

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Lnbisdk/se;->xy:[D

    aget-wide v0, v0, p0

    goto :goto_0
.end method

.method public static c(Lnbisdk/se;)Lnbisdk/ze;
    .locals 3

    invoke-static {p0}, Lnbisdk/hn;->d(Lnbisdk/se;)[B

    move-result-object v0

    new-instance v1, Lnbisdk/ze;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "packed"

    invoke-virtual {v1, v2, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public static d(Lnbisdk/se;)[B
    .locals 9

    const-wide v2, 0x40efffe000000000L

    const-wide v5, 0x3ed680000003decbL

    const-wide/16 v7, 0x0

    const/16 v0, 0x13

    new-array v4, v0, [B

    invoke-interface {p0}, Lnbisdk/se;->getTime()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lnbisdk/ls;->a(I[BI)V

    invoke-interface {p0}, Lnbisdk/se;->getLatitude()D

    move-result-wide v0

    div-double/2addr v0, v5

    double-to-int v0, v0

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Lnbisdk/ls;->a(I[BI)V

    invoke-interface {p0}, Lnbisdk/se;->getLongitude()D

    move-result-wide v0

    div-double/2addr v0, v5

    double-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v0, v4, v1}, Lnbisdk/ls;->a(I[BI)V

    invoke-interface {p0}, Lnbisdk/se;->getHeading()D

    move-result-wide v0

    const-wide v5, -0x3f70c80000000000L

    cmpl-double v5, v0, v5

    if-nez v5, :cond_0

    move-wide v0, v2

    :goto_0
    double-to-int v0, v0

    int-to-short v0, v0

    const/16 v1, 0xc

    invoke-static {v0, v4, v1}, Lnbisdk/ls;->a(S[BI)V

    invoke-interface {p0}, Lnbisdk/se;->bR()D

    move-result-wide v0

    cmpg-double v5, v0, v7

    if-gez v5, :cond_1

    :goto_1
    double-to-int v0, v2

    int-to-short v0, v0

    const/16 v1, 0xe

    invoke-static {v0, v4, v1}, Lnbisdk/ls;->a(S[BI)V

    invoke-interface {p0}, Lnbisdk/se;->iQ()D

    move-result-wide v0

    const/16 v2, 0x10

    cmpg-double v0, v0, v7

    if-gez v0, :cond_2

    const-wide v0, 0x406fe00000000000L

    :goto_2
    double-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    const/16 v0, 0x11

    invoke-interface {p0}, Lnbisdk/se;->iR()D

    move-result-wide v1

    invoke-static {v1, v2}, Lnbisdk/hn;->i(D)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/16 v0, 0x12

    invoke-interface {p0}, Lnbisdk/se;->iS()D

    move-result-wide v1

    invoke-static {v1, v2}, Lnbisdk/hn;->i(D)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    return-object v4

    :cond_0
    const-wide v5, 0x3fd6800000000000L

    div-double/2addr v0, v5

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x3fd0

    div-double v2, v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lnbisdk/se;->iQ()D

    move-result-wide v0

    const-wide v5, 0x4016800000000000L

    div-double/2addr v0, v5

    goto :goto_2
.end method

.method public static i(D)I
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, -0x1

    cmpg-double v2, p0, v8

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lnbisdk/se;->xy:[D

    array-length v2, v2

    :goto_1
    add-int/lit8 v3, v2, -0x2

    if-ge v0, v3, :cond_3

    sget-object v3, Lnbisdk/se;->xy:[D

    aget-wide v3, v3, v0

    sget-object v5, Lnbisdk/se;->xy:[D

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    cmpl-double v7, v3, v8

    if-lez v7, :cond_2

    cmpl-double v7, v5, v8

    if-lez v7, :cond_2

    cmpl-double v7, p0, v3

    if-ltz v7, :cond_2

    cmpg-double v7, p0, v5

    if-gtz v7, :cond_2

    sub-double v1, v3, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sub-double v3, v5, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lnbisdk/dk;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/hn;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final aw(I)Lnbisdk/dk;
    .locals 1

    iget-object v0, p0, Lnbisdk/hn;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/dk;

    return-object v0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/hn;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
