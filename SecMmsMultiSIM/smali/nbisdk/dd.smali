.class public Lnbisdk/dd;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private cT:I

.field private fo:Lnbisdk/cl;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/cl;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/dd;->fo:Lnbisdk/cl;

    iput p2, p0, Lnbisdk/dd;->cT:I

    iput-object p3, p0, Lnbisdk/dd;->L:Ljava/lang/String;

    return-void
.end method

.method public static a(DDDD[D)D
    .locals 14

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->d(D)D

    move-result-wide v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->e(D)D

    move-result-wide v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->d(D)D

    move-result-wide v8

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->e(D)D

    move-result-wide v4

    sub-double v0, v8, v6

    sub-double/2addr v4, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-ltz v10, :cond_4

    const-wide v10, 0x400921fb54442d18L

    cmpl-double v10, v4, v10

    if-lez v10, :cond_2

    const-wide v10, 0x401921fb54442d18L

    cmpg-double v10, v4, v10

    if-gtz v10, :cond_2

    const-wide v10, 0x401921fb54442d18L

    sub-double/2addr v4, v10

    :cond_2
    :goto_1
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-nez v10, :cond_6

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_5

    const-wide/16 v2, 0x0

    :cond_3
    :goto_2
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_e

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_d

    :goto_3
    const-wide v4, 0x415854aac0000000L

    mul-double/2addr v0, v4

    if-eqz p8, :cond_0

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, p8, v4

    goto :goto_0

    :cond_4
    const-wide v10, -0x3fe6de04abbbd2e8L

    cmpl-double v10, v4, v10

    if-lez v10, :cond_2

    const-wide v10, -0x3ff6de04abbbd2e8L

    cmpg-double v10, v4, v10

    if-gez v10, :cond_2

    const-wide v10, 0x401921fb54442d18L

    add-double/2addr v4, v10

    goto :goto_1

    :cond_5
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_3

    const-wide v2, 0x400921fb54442d18L

    goto :goto_2

    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    sub-double v6, v10, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    div-double/2addr v6, v10

    const-wide v10, -0x411b074a771c970fL

    cmpl-double v10, v6, v10

    if-lez v10, :cond_8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v10, v6, v10

    if-gez v10, :cond_8

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_7

    const-wide v2, 0x3ff921fb54442d18L

    goto :goto_2

    :cond_7
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    const-wide v2, 0x4012d97c7f3321d2L

    goto/16 :goto_2

    :cond_8
    const-wide/high16 v2, 0x3ff0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Lnbisdk/ls;->atan(D)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_9

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_3

    :cond_9
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_a

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_b

    :cond_a
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_c

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_c

    :cond_b
    const-wide v6, 0x400921fb54442d18L

    add-double/2addr v2, v6

    goto/16 :goto_2

    :cond_c
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_3

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    const-wide v6, 0x401921fb54442d18L

    add-double/2addr v2, v6

    goto/16 :goto_2

    :cond_d
    neg-double v0, v0

    goto/16 :goto_3

    :cond_e
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_f

    const-wide/high16 v4, 0x3ff0

    mul-double v6, v0, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lnbisdk/ls;->atan(D)D

    move-result-wide v0

    goto/16 :goto_3

    :cond_f
    const-wide/high16 v4, 0x3ff0

    mul-double v6, v0, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lnbisdk/ls;->atan(D)D

    move-result-wide v0

    neg-double v0, v0

    goto/16 :goto_3
.end method

.method public static a(DD[D[D)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->h(D)D

    move-result-wide v0

    aput-wide v0, p4, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->g(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double v0, v4, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lnbisdk/ls;->log(D)D

    move-result-wide v0

    aput-wide v0, p5, v6

    return-void
.end method

.method public static a(IIIDD[D[D)V
    .locals 7

    const/4 v0, 0x1

    add-int/lit8 v1, p2, -0x1

    shl-int/2addr v0, v1

    int-to-double v0, v0

    const/4 v2, 0x0

    int-to-double v3, p0

    add-double/2addr v3, p3

    div-double/2addr v3, v0

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L

    mul-double/2addr v3, v5

    aput-wide v3, p7, v2

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0

    int-to-double v5, p1

    add-double/2addr v5, p5

    div-double v0, v5, v0

    sub-double v0, v3, v0

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v0, v3

    aput-wide v0, p8, v2

    return-void
.end method

.method public static a(III[D[D)V
    .locals 11

    array-length v0, p3

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    array-length v0, p4

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong sized lat/lon array passed in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [D

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v7, v0

    const/4 v0, 0x1

    new-array v8, v0, [D

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v8, v0

    const/4 v0, 0x1

    new-array v9, v0, [D

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v9, v0

    const/4 v0, 0x1

    new-array v10, v0, [D

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v10, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(IIIDD[D[D)V

    const/4 v0, 0x0

    aget-wide v0, v7, v0

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lnbisdk/dd;->b(DD[D[D)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    aput-wide v1, p3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-wide v1, v10, v1

    aput-wide v1, p4, v0

    const-wide/high16 v3, 0x3ff0

    const-wide/16 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(IIIDD[D[D)V

    const/4 v0, 0x0

    aget-wide v0, v7, v0

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lnbisdk/dd;->b(DD[D[D)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    aput-wide v1, p3, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-wide v1, v10, v1

    aput-wide v1, p4, v0

    const-wide/high16 v3, 0x3ff0

    const-wide/high16 v5, 0x3ff0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(IIIDD[D[D)V

    const/4 v0, 0x0

    aget-wide v0, v7, v0

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lnbisdk/dd;->b(DD[D[D)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    aput-wide v1, p3, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aget-wide v1, v10, v1

    aput-wide v1, p4, v0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(IIIDD[D[D)V

    const/4 v0, 0x0

    aget-wide v0, v7, v0

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lnbisdk/dd;->b(DD[D[D)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    aput-wide v1, p3, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aget-wide v1, v10, v1

    aput-wide v1, p4, v0

    return-void
.end method

.method public static b(DDDD)D
    .locals 12

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->d(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/dd;->e(D)D

    move-result-wide v0

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lnbisdk/dd;->d(D)D

    move-result-wide v6

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lnbisdk/dd;->e(D)D

    move-result-wide v2

    sub-double v8, v6, v4

    sub-double/2addr v2, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_3

    const-wide v10, 0x400921fb54442d18L

    cmpl-double v10, v2, v10

    if-lez v10, :cond_2

    const-wide v10, 0x401921fb54442d18L

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_2

    const-wide v10, 0x401921fb54442d18L

    sub-double/2addr v2, v10

    :cond_2
    :goto_1
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-nez v10, :cond_5

    const-wide/16 v2, 0x0

    cmpl-double v2, v8, v2

    if-lez v2, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    const-wide v10, -0x3fe6de04abbbd2e8L

    cmpl-double v10, v2, v10

    if-lez v10, :cond_2

    const-wide v10, -0x3ff6de04abbbd2e8L

    cmpg-double v10, v2, v10

    if-gez v10, :cond_2

    const-wide v10, 0x401921fb54442d18L

    add-double/2addr v2, v10

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_0

    const-wide v0, 0x400921fb54442d18L

    goto :goto_0

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide v6, -0x411b074a771c970fL

    cmpl-double v6, v4, v6

    if-lez v6, :cond_7

    const-wide v6, 0x3ee4f8b588e368f1L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_7

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_6

    const-wide v0, 0x3ff921fb54442d18L

    goto/16 :goto_0

    :cond_6
    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const-wide v0, 0x4012d97c7f3321d2L

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v0, 0x3ff0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lnbisdk/ls;->atan(D)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_8

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_0

    :cond_8
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_9

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_a

    :cond_9
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_b

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_b

    :cond_a
    const-wide v2, 0x400921fb54442d18L

    add-double/2addr v0, v2

    goto/16 :goto_0

    :cond_b
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const-wide v2, 0x401921fb54442d18L

    add-double/2addr v0, v2

    goto/16 :goto_0
.end method

.method public static b(DD[D[D)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lnbisdk/dd;->f(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lnbisdk/dd;->f(D)D

    move-result-wide v2

    if-eqz p5, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    aput-wide v0, p5, v4

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {v2, v3}, Lnbisdk/ls;->sinh(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/ls;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    aput-wide v0, p4, v4

    :cond_1
    return-void
.end method

.method private static d(D)D
    .locals 6

    const-wide v4, 0x401921fb54442d18L

    move-wide v0, p0

    :goto_0
    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v2, 0x400921fb54442d18L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    sub-double/2addr v0, v4

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method private static e(D)D
    .locals 6

    const-wide v4, 0x401921fb54442d18L

    move-wide v0, p0

    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    sub-double/2addr v0, v4

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method private static f(D)D
    .locals 5

    const-wide v0, 0x400921fb54442d18L

    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v4, p0, v2

    if-gez v4, :cond_1

    :goto_0
    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    :goto_1
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_1

    :cond_1
    move-wide v2, p0

    goto :goto_0
.end method

.method public static g(D)D
    .locals 7

    const-wide v2, 0x3ff8da7e39bae2a5L

    const-wide v4, -0x40072581c6451d5bL

    move-wide v0, p0

    :goto_0
    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public static h(D)D
    .locals 6

    const-wide v4, 0x401921fb54442d18L

    move-wide v0, p0

    :goto_0
    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v2, 0x400921fb54442d18L

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    sub-double/2addr v0, v4

    goto :goto_1

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final dO()Lnbisdk/cl;
    .locals 1

    iget-object v0, p0, Lnbisdk/dd;->fo:Lnbisdk/cl;

    return-object v0
.end method

.method public final getAccuracy()I
    .locals 1

    iget v0, p0, Lnbisdk/dd;->cT:I

    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dd;->L:Ljava/lang/String;

    return-object v0
.end method
