.class public Lnbisdk/gp;
.super Ljava/lang/Object;


# instance fields
.field protected dR:I

.field private dU:D

.field private dV:D

.field private dW:I

.field protected lh:Lnbisdk/au;

.field private li:[I

.field private lj:Lcom/nbi/map/data/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/au;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnbisdk/gp;->li:[I

    invoke-direct {p0, p1}, Lnbisdk/gp;->a(Lnbisdk/au;)V

    return-void
.end method

.method private a(Lnbisdk/au;)V
    .locals 6

    iput-object p1, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {p1}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lnbisdk/gp;->dR:I

    invoke-virtual {p1}, Lnbisdk/au;->cE()I

    move-result v0

    iput v0, p0, Lnbisdk/gp;->dW:I

    invoke-virtual {p1}, Lnbisdk/au$d;->cC()D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/gp;->dU:D

    invoke-virtual {p1}, Lnbisdk/au$d;->cD()D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/gp;->dV:D

    invoke-virtual {p1}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    iget-wide v1, p0, Lnbisdk/gp;->dU:D

    iget-wide v3, p0, Lnbisdk/gp;->dV:D

    iget-object v5, p0, Lnbisdk/gp;->li:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->b(DD[I)V

    return-void
.end method

.method private a(Lnbisdk/cc;II[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v2

    sub-int v0, p2, v0

    invoke-virtual {p1}, Lnbisdk/cc;->ck()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p4, v2

    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v3

    sub-int v0, p3, v0

    invoke-virtual {p1}, Lnbisdk/cc;->cl()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p4, v3

    return-void
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;J)V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    const-wide/16 v1, 0xff

    and-long/2addr v1, p2

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x8

    shr-long/2addr p2, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    array-length v2, v1

    div-int/lit8 v3, v2, 0x2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-byte v4, v1, v0

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v1, v5

    aput-byte v5, v1, v0

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aput-byte v4, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a([II)V
    .locals 2

    const/4 v1, 0x1

    aget v0, p0, v1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    aput p1, p0, v1

    return-void

    :cond_1
    aget v0, p0, v1

    if-ge v0, p1, :cond_0

    aget p1, p0, v1

    goto :goto_0
.end method

.method public static f(Lnbisdk/ql;Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnbisdk/jd;->f([B)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(DD[I)V
    .locals 2

    invoke-virtual/range {p0 .. p5}, Lnbisdk/gp;->b(DD[I)V

    const/4 v0, 0x0

    aget v0, p5, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    invoke-virtual {p0, v0, v1, p5}, Lnbisdk/gp;->b(II[I)V

    return-void
.end method

.method public final a(IIDDDD[D[D[I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    sub-int v3, v1, p1

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    sub-int v4, v1, p2

    const/4 v1, 0x1

    new-array v5, v1, [D

    const/4 v1, 0x2

    new-array v6, v1, [D

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au$d;->cA()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v2}, Lnbisdk/au$d;->cB()I

    move-result v2

    mul-int/lit16 v3, v3, 0x168

    int-to-double v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gp;->dW:I

    int-to-double v13, v3

    sub-double v15, p5, p9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    div-double/2addr v11, v13

    double-to-int v3, v11

    const-wide v11, 0x402921fb54442d18L

    int-to-double v13, v4

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/gp;->dW:I

    int-to-double v13, v4

    const-wide/high16 v15, 0x3ff0

    add-double/2addr v15, v7

    const-wide/high16 v17, 0x3ff0

    sub-double v17, v17, v9

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x3ff0

    sub-double v7, v17, v7

    const-wide/high16 v17, 0x3ff0

    add-double v9, v9, v17

    mul-double/2addr v7, v9

    div-double v7, v15, v7

    invoke-static {v7, v8}, Lnbisdk/ls;->log(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    mul-double/2addr v7, v13

    div-double v7, v11, v7

    double-to-int v4, v7

    const/4 v7, 0x0

    int-to-long v8, v3

    invoke-static {v8, v9}, Lnbisdk/ls;->n(J)I

    move-result v3

    int-to-long v8, v4

    invoke-static {v8, v9}, Lnbisdk/ls;->n(J)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, p13, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, p13, v4

    if-ge v4, v1, :cond_2

    :goto_0
    aput v1, p13, v3

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lnbisdk/dd;->a(DD[D[D)V

    const/4 v1, 0x0

    aget-wide v7, v5, v1

    const/4 v1, 0x0

    aget-wide v9, v6, v1

    move-wide/from16 v1, p7

    move-wide/from16 v3, p9

    invoke-static/range {v1 .. v6}, Lnbisdk/dd;->a(DD[D[D)V

    const/4 v1, 0x0

    aget-wide v1, v5, v1

    const/4 v3, 0x0

    aget-wide v3, v6, v3

    add-double/2addr v1, v7

    const-wide/high16 v7, 0x4000

    div-double/2addr v1, v7

    add-double/2addr v3, v9

    const-wide/high16 v7, 0x4000

    div-double/2addr v3, v7

    invoke-static/range {v1 .. v6}, Lnbisdk/dd;->b(DD[D[D)V

    const/4 v1, 0x0

    aget-wide v1, v5, v1

    const/4 v3, 0x0

    aget-wide v3, v6, v3

    if-eqz p11, :cond_0

    const/4 v5, 0x0

    aput-wide v1, p11, v5

    :cond_0
    if-eqz p12, :cond_1

    const/4 v1, 0x0

    aput-wide v3, p12, v1

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    aget v1, p13, v1

    if-le v1, v2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    aget v1, p13, v1

    goto :goto_0
.end method

.method public final a(II[D)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v1, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lnbisdk/gp;->a(II[I)V

    aget v1, v0, v1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0, p3}, Lnbisdk/gp;->b(II[D)V

    return-void
.end method

.method public final a(II[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v2

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    aput v0, p3, v2

    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v3

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    aput v0, p3, v3

    return-void
.end method

.method public final a(DD)Z
    .locals 6

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    const/4 v0, 0x0

    aget v0, v5, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    invoke-virtual {p0, v0, v1}, Lnbisdk/gp;->i(II)Z

    move-result v0

    return v0
.end method

.method public final b(DD)I
    .locals 6

    iget v0, p0, Lnbisdk/gp;->dR:I

    iget v1, p0, Lnbisdk/gp;->dW:I

    shl-int v0, v1, v0

    int-to-double v0, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x415848fd6e50b45cL

    mul-double/2addr v2, v4

    div-double v2, p1, v2

    const-wide v4, 0x401921fb54442d18L

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final b(DD[I)V
    .locals 12

    iget v1, p0, Lnbisdk/gp;->dR:I

    iget v2, p0, Lnbisdk/gp;->dW:I

    shl-int v1, v2, v1

    const-wide v2, 0x4066800000000000L

    add-double/2addr v2, p3

    const-wide v4, 0x4076800000000000L

    div-double/2addr v2, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v4

    const-wide/high16 v10, 0x3ff0

    sub-double v4, v10, v4

    div-double v4, v8, v4

    invoke-static {v4, v5}, Lnbisdk/ls;->log(D)D

    move-result-wide v4

    const-wide v8, 0x402921fb54442d18L

    div-double/2addr v4, v8

    sub-double v4, v6, v4

    const/4 v6, 0x0

    int-to-double v7, v1

    mul-double/2addr v2, v7

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v2, v7

    double-to-int v2, v2

    aput v2, p5, v6

    const/4 v2, 0x1

    int-to-double v6, v1

    mul-double v3, v4, v6

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, p5, v2

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lnbisdk/gp;->a([II)V

    return-void
.end method

.method public final b(II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [D

    iget-object v1, p0, Lnbisdk/gp;->li:[I

    aget v1, v1, v5

    iget-object v2, p0, Lnbisdk/gp;->li:[I

    aget v3, v2, v6

    add-int/2addr v3, p1

    aput v3, v2, v6

    iget-object v2, p0, Lnbisdk/gp;->li:[I

    aget v3, v2, v5

    add-int/2addr v3, p2

    aput v3, v2, v5

    iget-object v2, p0, Lnbisdk/gp;->li:[I

    iget v3, p0, Lnbisdk/gp;->dR:I

    iget v4, p0, Lnbisdk/gp;->dW:I

    shl-int v3, v4, v3

    invoke-static {v2, v3}, Lnbisdk/gp;->a([II)V

    iget-object v2, p0, Lnbisdk/gp;->li:[I

    aget v2, v2, v6

    iget-object v3, p0, Lnbisdk/gp;->li:[I

    aget v3, v3, v5

    invoke-virtual {p0, v2, v3, v0}, Lnbisdk/gp;->b(II[D)V

    aget-wide v2, v0, v6

    iput-wide v2, p0, Lnbisdk/gp;->dU:D

    aget-wide v2, v0, v5

    iput-wide v2, p0, Lnbisdk/gp;->dV:D

    iget-object v0, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/gp;->li:[I

    aget v2, v2, v5

    sub-int/2addr v2, v1

    invoke-virtual {v0, p1, v2}, Lnbisdk/cc;->b(II)V

    iget-object v0, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jI()Lnbisdk/cc;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/gp;->li:[I

    aget v2, v2, v5

    sub-int v1, v2, v1

    invoke-virtual {v0, p1, v1}, Lnbisdk/cc;->b(II)V

    return-void
.end method

.method public final b(II[D)V
    .locals 10

    const-wide v6, 0x417312d000000000L

    const-wide v8, 0x415848fd6e50b45cL

    iget v0, p0, Lnbisdk/gp;->dR:I

    iget v1, p0, Lnbisdk/gp;->dW:I

    shl-int v0, v1, v0

    const-wide v1, 0x418312d000000000L

    int-to-double v3, v0

    div-double v0, v1, v3

    int-to-double v2, p1

    mul-double/2addr v2, v0

    sub-double/2addr v2, v6

    int-to-double v4, p2

    mul-double/2addr v0, v4

    sub-double v0, v6, v0

    const-wide v4, 0x3ff921fb54442d18L

    const-wide/high16 v6, 0x4000

    neg-double v0, v0

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Lnbisdk/ls;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/ls;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    div-double/2addr v2, v8

    const/4 v4, 0x0

    invoke-static {v0, v1}, Lnbisdk/dd;->g(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    aput-wide v0, p3, v4

    const/4 v0, 0x1

    invoke-static {v2, v3}, Lnbisdk/dd;->h(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    aput-wide v1, p3, v0

    return-void
.end method

.method public final b(II[I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v3

    sub-int v0, p1, v0

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aput v0, p3, v3

    invoke-virtual {p0}, Lnbisdk/gp;->gD()Z

    move-result v0

    if-eqz v0, :cond_2

    aget v0, p3, v3

    if-gez v0, :cond_1

    aget v0, p3, v3

    iget v1, p0, Lnbisdk/gp;->dR:I

    iget v2, p0, Lnbisdk/gp;->dW:I

    shl-int v1, v2, v1

    add-int/2addr v0, v1

    aput v0, p3, v3

    :cond_0
    :goto_0
    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v4

    sub-int v0, p2, v0

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aput v0, p3, v4

    :goto_1
    return-void

    :cond_1
    aget v0, p3, v3

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    aget v0, p3, v3

    iget v1, p0, Lnbisdk/gp;->dR:I

    iget v2, p0, Lnbisdk/gp;->dW:I

    shl-int v1, v2, v1

    sub-int/2addr v0, v1

    aput v0, p3, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnbisdk/gp;->gG()Z

    move-result v0

    if-eqz v0, :cond_5

    aget v0, p3, v3

    if-gez v0, :cond_4

    aget v0, p3, v3

    iget v1, p0, Lnbisdk/gp;->dR:I

    iget v2, p0, Lnbisdk/gp;->dW:I

    shl-int v1, v2, v1

    add-int/2addr v0, v1

    aput v0, p3, v3

    :cond_3
    :goto_2
    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v4

    sub-int v0, p2, v0

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aput v0, p3, v4

    goto :goto_1

    :cond_4
    aget v0, p3, v3

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_3

    aget v0, p3, v3

    iget v1, p0, Lnbisdk/gp;->dR:I

    iget v2, p0, Lnbisdk/gp;->dW:I

    shl-int v1, v2, v1

    sub-int/2addr v0, v1

    aput v0, p3, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lnbisdk/gp;->li:[I

    aget v0, v0, v4

    sub-int v0, p2, v0

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aput v0, p3, v4

    goto :goto_1
.end method

.method public final b(Lnbisdk/au;)V
    .locals 2

    invoke-direct {p0, p1}, Lnbisdk/gp;->a(Lnbisdk/au;)V

    iget-object v0, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/gp;->li:[I

    invoke-virtual {v0, v1}, Lnbisdk/cc;->a([I)V

    iget-object v0, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jI()Lnbisdk/cc;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/gp;->li:[I

    invoke-virtual {v0, v1}, Lnbisdk/cc;->a([I)V

    return-void
.end method

.method final c(DD[I)V
    .locals 3

    invoke-virtual/range {p0 .. p5}, Lnbisdk/gp;->b(DD[I)V

    iget-object v0, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    invoke-direct {p0, v0, v1, v2, p5}, Lnbisdk/gp;->a(Lnbisdk/cc;II[I)V

    return-void
.end method

.method final c(II[D)V
    .locals 2

    iget-object v0, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cc;->cm()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, p1

    invoke-virtual {v0}, Lnbisdk/cc;->cn()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v1, v0, p3}, Lnbisdk/gp;->a(II[D)V

    return-void
.end method

.method public final cC()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/gp;->dU:D

    return-wide v0
.end method

.method public final cD()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/gp;->dV:D

    return-wide v0
.end method

.method public final d(DDDD)D
    .locals 12

    const/4 v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x2

    new-array v11, v0, [I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->b(DD[I)V

    move-object v6, p0

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v6 .. v11}, Lnbisdk/gp;->b(DD[I)V

    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x0

    aget v1, v5, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x1

    aget v2, v5, v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final gD()Z
    .locals 2

    iget v0, p0, Lnbisdk/gp;->dR:I

    iget v1, p0, Lnbisdk/gp;->dW:I

    shl-int v0, v1, v0

    iget-object v1, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gE()I
    .locals 2

    iget-object v0, p0, Lnbisdk/gp;->li:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final gF()I
    .locals 2

    iget-object v0, p0, Lnbisdk/gp;->li:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public gG()Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lnbisdk/gp;->dR:I

    shl-int v1, v0, v1

    iget v2, p0, Lnbisdk/gp;->dW:I

    iget-object v3, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au;->jJ()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int v2, v3, v2

    shl-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getZoomLevel()I
    .locals 1

    iget v0, p0, Lnbisdk/gp;->dR:I

    return v0
.end method

.method public final i(II)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/gp;->lj:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    return v0
.end method

.method public final setCenter(DD)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v5, v8, [I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->b(DD[I)V

    new-array v0, v8, [I

    iget-object v1, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v1

    aget v2, v5, v6

    aget v3, v5, v7

    invoke-direct {p0, v1, v2, v3, v0}, Lnbisdk/gp;->a(Lnbisdk/cc;II[I)V

    iget-object v1, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v1

    aget v2, v0, v6

    aget v3, v0, v7

    invoke-virtual {v1, v2, v3}, Lnbisdk/cc;->c(II)V

    iget-object v1, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->jI()Lnbisdk/cc;

    move-result-object v1

    aget v2, v5, v6

    aget v3, v5, v7

    invoke-direct {p0, v1, v2, v3, v0}, Lnbisdk/gp;->a(Lnbisdk/cc;II[I)V

    iget-object v1, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->jI()Lnbisdk/cc;

    move-result-object v1

    aget v2, v0, v6

    aget v0, v0, v7

    invoke-virtual {v1, v2, v0}, Lnbisdk/cc;->c(II)V

    new-array v0, v8, [I

    aget v1, v5, v6

    aput v1, v0, v6

    aget v1, v5, v7

    aput v1, v0, v7

    iget v1, p0, Lnbisdk/gp;->dR:I

    iget v2, p0, Lnbisdk/gp;->dW:I

    shl-int v1, v2, v1

    invoke-static {v0, v1}, Lnbisdk/gp;->a([II)V

    iput-object v0, p0, Lnbisdk/gp;->li:[I

    aget v1, v0, v7

    aget v2, v5, v7

    if-ne v1, v2, :cond_0

    aget v0, v0, v6

    aget v1, v5, v6

    if-eq v0, v1, :cond_1

    :cond_0
    new-array v0, v8, [D

    iget-object v1, p0, Lnbisdk/gp;->li:[I

    aget v1, v1, v6

    iget-object v2, p0, Lnbisdk/gp;->li:[I

    aget v2, v2, v7

    invoke-virtual {p0, v1, v2, v0}, Lnbisdk/gp;->b(II[D)V

    aget-wide v1, v0, v6

    iput-wide v1, p0, Lnbisdk/gp;->dU:D

    aget-wide v0, v0, v7

    iput-wide v0, p0, Lnbisdk/gp;->dV:D

    :goto_0
    return-void

    :cond_1
    iput-wide p1, p0, Lnbisdk/gp;->dU:D

    iput-wide p3, p0, Lnbisdk/gp;->dV:D

    goto :goto_0
.end method
