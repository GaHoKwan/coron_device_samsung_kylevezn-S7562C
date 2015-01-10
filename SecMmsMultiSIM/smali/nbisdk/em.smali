.class public final Lnbisdk/em;
.super Ljava/lang/Object;


# static fields
.field private static final hF:[D


# instance fields
.field private bj:I

.field private cA:D

.field private cX:D

.field private cY:D

.field private hA:[I

.field private hB:[I

.field private hC:[I

.field private hD:D

.field private hE:[D

.field private hG:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [D

    sput-object v0, Lnbisdk/em;->hF:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lnbisdk/em;->P()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lnbisdk/em;->P()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lnbisdk/em;->d([B)V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 3

    const-wide v1, -0x3f70c80000000000L

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/em;->bj:I

    iput-wide v1, p0, Lnbisdk/em;->cA:D

    iput-wide v1, p0, Lnbisdk/em;->cX:D

    iput-wide v1, p0, Lnbisdk/em;->cY:D

    iput-wide v1, p0, Lnbisdk/em;->hG:D

    return-void
.end method

.method private d([B)V
    .locals 18

    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    shr-int/lit8 v13, v1, 0x4

    const/4 v1, 0x2

    if-eq v13, v1, :cond_0

    const/4 v1, 0x4

    if-eq v13, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Width is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x8

    shl-int/lit8 v2, v13, 0x1

    div-int/2addr v1, v2

    add-int/lit8 v14, v1, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lnbisdk/em;->bj:I

    new-array v1, v14, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lnbisdk/em;->hA:[I

    new-array v1, v14, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lnbisdk/em;->hB:[I

    new-array v1, v14, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lnbisdk/em;->hC:[I

    new-array v1, v14, [D

    move-object/from16 v0, p0

    iput-object v1, v0, Lnbisdk/em;->hE:[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hA:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lnbisdk/ls;->d([BI)I

    move-result v3

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hB:[I

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lnbisdk/ls;->d([BI)I

    move-result v3

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hC:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hE:[D

    const/4 v2, 0x0

    const-wide v3, -0x3f70c80000000000L

    aput-wide v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hA:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    const-wide v3, 0x4106c16c147ae148L

    div-double v5, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hB:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    const-wide v3, 0x4106c16c147ae148L

    div-double v3, v1, v3

    move-object/from16 v0, p0

    iput-wide v5, v0, Lnbisdk/em;->cA:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lnbisdk/em;->cY:D

    move-object/from16 v0, p0

    iput-wide v3, v0, Lnbisdk/em;->cX:D

    move-object/from16 v0, p0

    iput-wide v3, v0, Lnbisdk/em;->hG:D

    const/16 v2, 0x8

    const/4 v1, 0x2

    if-ne v13, v1, :cond_5

    const/4 v1, 0x2

    move v10, v1

    :goto_0
    const/4 v1, 0x1

    move v11, v1

    move/from16 v17, v2

    move-wide v1, v5

    move/from16 v5, v17

    :goto_1
    if-ge v11, v14, :cond_8

    const/4 v6, 0x2

    if-ne v13, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/em;->hA:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/em;->hA:[I

    add-int/lit8 v8, v11, -0x1

    aget v7, v7, v8

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lnbisdk/ls;->c([BI)S

    move-result v8

    add-int/2addr v7, v8

    aput v7, v6, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/em;->hB:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/em;->hB:[I

    add-int/lit8 v8, v11, -0x1

    aget v7, v7, v8

    add-int v8, v5, v10

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lnbisdk/ls;->c([BI)S

    move-result v8

    add-int/2addr v7, v8

    aput v7, v6, v11

    :goto_2
    shl-int/lit8 v6, v10, 0x1

    add-int v12, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/em;->hA:[I

    aget v5, v5, v11

    int-to-double v5, v5

    const-wide v7, 0x4106c16c147ae148L

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/em;->hB:[I

    aget v7, v7, v11

    int-to-double v7, v7

    const-wide v15, 0x4106c16c147ae148L

    div-double/2addr v7, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lnbisdk/em;->cA:D

    cmpg-double v9, v5, v15

    if-gez v9, :cond_1

    move-object/from16 v0, p0

    iput-wide v5, v0, Lnbisdk/em;->cA:D

    :cond_1
    move-object/from16 v0, p0

    iget-wide v15, v0, Lnbisdk/em;->cY:D

    cmpl-double v9, v5, v15

    if-lez v9, :cond_2

    move-object/from16 v0, p0

    iput-wide v5, v0, Lnbisdk/em;->cY:D

    :cond_2
    move-object/from16 v0, p0

    iget-wide v15, v0, Lnbisdk/em;->cX:D

    cmpg-double v9, v7, v15

    if-gez v9, :cond_3

    move-object/from16 v0, p0

    iput-wide v7, v0, Lnbisdk/em;->cX:D

    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lnbisdk/em;->hG:D

    cmpl-double v9, v7, v15

    if-lez v9, :cond_4

    move-object/from16 v0, p0

    iput-wide v7, v0, Lnbisdk/em;->hG:D

    :cond_4
    sget-object v9, Lnbisdk/em;->hF:[D

    invoke-static/range {v1 .. v9}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/em;->hC:[I

    add-int/lit8 v4, v11, -0x1

    const-wide/high16 v15, 0x4024

    mul-double/2addr v15, v1

    double-to-int v9, v15

    aput v9, v3, v4

    move-object/from16 v0, p0

    iget-wide v3, v0, Lnbisdk/em;->hD:D

    add-double/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lnbisdk/em;->hD:D

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hE:[D

    add-int/lit8 v2, v11, -0x1

    sget-object v3, Lnbisdk/em;->hF:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    aput-wide v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/em;->hE:[D

    const-wide v2, -0x3f70c80000000000L

    aput-wide v2, v1, v11

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move-wide v3, v7

    move-wide v1, v5

    move v5, v12

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x4

    move v10, v1

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x4

    if-ne v13, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/em;->hA:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/em;->hA:[I

    add-int/lit8 v8, v11, -0x1

    aget v7, v7, v8

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lnbisdk/ls;->d([BI)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v6, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/em;->hB:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/em;->hB:[I

    add-int/lit8 v8, v11, -0x1

    aget v7, v7, v8

    add-int v8, v5, v10

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lnbisdk/ls;->d([BI)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v6, v11

    goto/16 :goto_2

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Width is invald"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    return-void
.end method

.method private static i(D)I
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    neg-double p0, p0

    :cond_0
    const-wide/high16 v0, 0x4049

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-wide v0, 0x4052c00000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public final N(I)D
    .locals 4

    iget-object v0, p0, Lnbisdk/em;->hA:[I

    aget v0, v0, p1

    int-to-double v0, v0

    const-wide v2, 0x4106c16c147ae148L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final O(I)D
    .locals 4

    iget-object v0, p0, Lnbisdk/em;->hB:[I

    aget v0, v0, p1

    int-to-double v0, v0

    const-wide v2, 0x4106c16c147ae148L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final a(Lnbisdk/em;)Lnbisdk/em;
    .locals 6

    new-instance v1, Lnbisdk/em;

    invoke-direct {v1}, Lnbisdk/em;-><init>()V

    iget v0, p0, Lnbisdk/em;->bj:I

    iget v2, p1, Lnbisdk/em;->bj:I

    add-int/2addr v0, v2

    iput v0, v1, Lnbisdk/em;->bj:I

    iget v0, v1, Lnbisdk/em;->bj:I

    new-array v0, v0, [I

    iput-object v0, v1, Lnbisdk/em;->hA:[I

    iget v0, v1, Lnbisdk/em;->bj:I

    new-array v0, v0, [I

    iput-object v0, v1, Lnbisdk/em;->hB:[I

    iget v0, v1, Lnbisdk/em;->bj:I

    new-array v0, v0, [I

    iput-object v0, v1, Lnbisdk/em;->hC:[I

    iget v0, v1, Lnbisdk/em;->bj:I

    new-array v0, v0, [D

    iput-object v0, v1, Lnbisdk/em;->hE:[D

    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lnbisdk/em;->bj:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lnbisdk/em;->bj:I

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lnbisdk/em;->hA:[I

    iget-object v3, p0, Lnbisdk/em;->hA:[I

    aget v3, v3, v0

    aput v3, v2, v0

    iget-object v2, v1, Lnbisdk/em;->hB:[I

    iget-object v3, p0, Lnbisdk/em;->hB:[I

    aget v3, v3, v0

    aput v3, v2, v0

    iget-object v2, v1, Lnbisdk/em;->hC:[I

    iget-object v3, p0, Lnbisdk/em;->hC:[I

    aget v3, v3, v0

    aput v3, v2, v0

    iget-object v2, v1, Lnbisdk/em;->hE:[D

    iget-object v3, p0, Lnbisdk/em;->hE:[D

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lnbisdk/em;->hA:[I

    iget-object v3, p1, Lnbisdk/em;->hA:[I

    iget v4, p0, Lnbisdk/em;->bj:I

    sub-int v4, v0, v4

    aget v3, v3, v4

    aput v3, v2, v0

    iget-object v2, v1, Lnbisdk/em;->hB:[I

    iget-object v3, p1, Lnbisdk/em;->hB:[I

    iget v4, p0, Lnbisdk/em;->bj:I

    sub-int v4, v0, v4

    aget v3, v3, v4

    aput v3, v2, v0

    iget-object v2, v1, Lnbisdk/em;->hC:[I

    iget-object v3, p1, Lnbisdk/em;->hC:[I

    iget v4, p0, Lnbisdk/em;->bj:I

    sub-int v4, v0, v4

    aget v3, v3, v4

    aput v3, v2, v0

    iget-object v2, v1, Lnbisdk/em;->hE:[D

    iget-object v3, p1, Lnbisdk/em;->hE:[D

    iget v4, p0, Lnbisdk/em;->bj:I

    sub-int v4, v0, v4

    aget-wide v3, v3, v4

    aput-wide v3, v2, v0

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lnbisdk/em;->hD:D

    iget-wide v4, p1, Lnbisdk/em;->hD:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lnbisdk/em;->hD:D

    iget-wide v2, p0, Lnbisdk/em;->cA:D

    iget-wide v4, p1, Lnbisdk/em;->cA:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lnbisdk/em;->cA:D

    iget-wide v2, p0, Lnbisdk/em;->cY:D

    iget-wide v4, p1, Lnbisdk/em;->cY:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lnbisdk/em;->cY:D

    iget-wide v2, p0, Lnbisdk/em;->cX:D

    iget-wide v4, p1, Lnbisdk/em;->cX:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lnbisdk/em;->cX:D

    iget-wide v2, p0, Lnbisdk/em;->hG:D

    iget-wide v4, p1, Lnbisdk/em;->hG:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lnbisdk/em;->hG:D

    return-object v1
.end method

.method public final a(DDD)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lnbisdk/em;->i(D)I

    move-result v1

    iget v2, p0, Lnbisdk/em;->bj:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lnbisdk/em;->cA:D

    sub-double/2addr v2, p5

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lnbisdk/em;->cY:D

    add-double/2addr v2, p5

    cmpl-double v2, p1, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lnbisdk/em;->cX:D

    int-to-double v4, v1

    mul-double/2addr v4, p5

    sub-double/2addr v2, v4

    cmpg-double v2, p3, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lnbisdk/em;->hG:D

    int-to-double v4, v1

    mul-double/2addr v4, p5

    add-double v1, v2, v4

    cmpl-double v1, p3, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(IDDD)Z
    .locals 10

    invoke-static {p2, p3}, Lnbisdk/em;->i(D)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lnbisdk/em;->bj:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide v1, 0x4106c16c147ae148L

    mul-double v1, v1, p6

    double-to-int v1, v1

    const-wide v2, 0x4106c16c147ae148L

    mul-double/2addr v2, p2

    double-to-int v2, v2

    const-wide v3, 0x4106c16c147ae148L

    mul-double/2addr v3, p4

    double-to-int v3, v3

    iget-object v4, p0, Lnbisdk/em;->hA:[I

    aget v4, v4, p1

    iget-object v5, p0, Lnbisdk/em;->hA:[I

    add-int/lit8 v6, p1, 0x1

    aget v5, v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lnbisdk/em;->hA:[I

    aget v5, v5, p1

    iget-object v6, p0, Lnbisdk/em;->hA:[I

    add-int/lit8 v7, p1, 0x1

    aget v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lnbisdk/em;->hB:[I

    aget v6, v6, p1

    iget-object v7, p0, Lnbisdk/em;->hB:[I

    add-int/lit8 v8, p1, 0x1

    aget v7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lnbisdk/em;->hB:[I

    aget v7, v7, p1

    iget-object v8, p0, Lnbisdk/em;->hB:[I

    add-int/lit8 v9, p1, 0x1

    aget v8, v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int v4, v5, v1

    if-le v2, v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    mul-int v2, v1, v0

    sub-int v2, v6, v2

    if-ge v3, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    mul-int/2addr v0, v1

    add-int/2addr v0, v7

    if-le v3, v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(I[D[D[D[D)Z
    .locals 7

    const-wide v5, 0x4106c16c147ae148L

    const-wide v3, -0x3f70c80000000000L

    const/4 v0, 0x0

    iget v1, p0, Lnbisdk/em;->bj:I

    if-lt p1, v1, :cond_4

    if-eqz p3, :cond_0

    aput-wide v3, p3, v0

    :cond_0
    if-eqz p2, :cond_1

    aput-wide v3, p2, v0

    :cond_1
    if-eqz p4, :cond_2

    const-wide/16 v1, 0x0

    aput-wide v1, p4, v0

    :cond_2
    if-eqz p5, :cond_3

    aput-wide v3, p5, v0

    :cond_3
    :goto_0
    return v0

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    iget-object v1, p0, Lnbisdk/em;->hA:[I

    aget v1, v1, p1

    iget-object v2, p0, Lnbisdk/em;->hB:[I

    aget v2, v2, p1

    int-to-double v3, v1

    div-double/2addr v3, v5

    aput-wide v3, p2, v0

    int-to-double v1, v2

    div-double/2addr v1, v5

    aput-wide v1, p3, v0

    :cond_5
    if-eqz p4, :cond_6

    iget-object v1, p0, Lnbisdk/em;->hC:[I

    aget v1, v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024

    div-double/2addr v1, v3

    aput-wide v1, p4, v0

    :cond_6
    if-eqz p5, :cond_7

    iget-object v1, p0, Lnbisdk/em;->hE:[D

    aget-wide v1, v1, p1

    aput-wide v1, p5, v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fe()I
    .locals 1

    iget v0, p0, Lnbisdk/em;->bj:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Lat: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lnbisdk/em;->hA:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lnbisdk/em;->hA:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "Lon: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    iget-object v3, p0, Lnbisdk/em;->hB:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lnbisdk/em;->hB:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "Heading: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v0, p0, Lnbisdk/em;->hE:[D

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnbisdk/em;->hE:[D

    aget-wide v3, v0, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
