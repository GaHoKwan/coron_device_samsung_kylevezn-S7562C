.class public final Lnbisdk/nj;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fh;


# static fields
.field private static lp:[D

.field private static tR:[D

.field private static tS:[D

.field private static tT:[D

.field private static tU:[D

.field private static tV:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x2

    new-array v0, v2, [D

    fill-array-data v0, :array_0

    sput-object v0, Lnbisdk/nj;->tR:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_1

    sput-object v0, Lnbisdk/nj;->tS:[D

    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    sput-object v0, Lnbisdk/nj;->lp:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Lnbisdk/nj;->tT:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_4

    sput-object v0, Lnbisdk/nj;->tU:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_5

    sput-object v0, Lnbisdk/nj;->tV:[D

    return-void

    nop

    :array_0
    .array-data 0x8
        0x4ft 0xbbt 0x61t 0x5t 0x67t 0xact 0xddt 0x3ft
        0x18t 0x2dt 0x44t 0x54t 0xfbt 0x21t 0xe9t 0x3ft
        0x9bt 0xf6t 0x81t 0xd2t 0xbt 0x73t 0xeft 0x3ft
        0x18t 0x2dt 0x44t 0x54t 0xfbt 0x21t 0xf9t 0x3ft
    .end array-data

    :array_1
    .array-data 0x8
        0xe2t 0x65t 0x2ft 0x22t 0x7ft 0x2bt 0x7at 0x3ct
        0x7t 0x5ct 0x14t 0x33t 0x26t 0xa6t 0x81t 0x3ct
        0xbdt 0xcbt 0xf0t 0x7at 0x88t 0x7t 0x70t 0x3ct
        0x7t 0x5ct 0x14t 0x33t 0x26t 0xa6t 0x91t 0x3ct
    .end array-data

    :array_2
    .array-data 0x8
        0xdt 0x55t 0x55t 0x55t 0x55t 0x55t 0xd5t 0x3ft
        0xc4t 0xebt 0x98t 0x99t 0x99t 0x99t 0xc9t 0xbft
        0xfft 0x83t 0x0t 0x92t 0x24t 0x49t 0xc2t 0x3ft
        0x71t 0x16t 0x23t 0xfet 0xc6t 0x71t 0xbct 0xbft
        0x6et 0x20t 0x4ct 0xc5t 0xcdt 0x45t 0xb7t 0x3ft
        0x6dt 0x9at 0x74t 0xaft 0xf2t 0xb0t 0xb3t 0xbft
        0x51t 0x3dt 0xd0t 0xa0t 0x66t 0xdt 0xb1t 0x3ft
        0x9at 0xfdt 0xdet 0x52t 0x2dt 0xdet 0xadt 0xbft
        0xebt 0xdt 0x76t 0x24t 0x4bt 0x7bt 0xa9t 0x3ft
        0x2ft 0x6ct 0x6at 0x2ct 0x44t 0xb4t 0xa2t 0xbft
        0x11t 0xdat 0x22t 0xe3t 0x3at 0xadt 0x90t 0x3ft
    .end array-data

    :array_3
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xe0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xe0t 0xbft
    .end array-data

    :array_4
    .array-data 0x8
        0x0t 0x0t 0xe0t 0xfet 0x42t 0x2et 0xe6t 0x3ft
        0x0t 0x0t 0xe0t 0xfet 0x42t 0x2et 0xe6t 0xbft
    .end array-data

    :array_5
    .array-data 0x8
        0x76t 0x3ct 0x79t 0x35t 0xeft 0x39t 0xeat 0x3dt
        0x76t 0x3ct 0x79t 0x35t 0xeft 0x39t 0xeat 0xbdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aV(I)D
    .locals 5

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static v(D)J
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method private static w(D)J
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final atan(D)D
    .locals 21

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->v(D)J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v5, v3

    const-wide/32 v7, 0x44100000

    cmp-long v2, v5, v7

    if-ltz v2, :cond_4

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->w(D)J

    move-result-wide v7

    const-wide/32 v9, 0x7ff00000

    cmp-long v2, v5, v9

    if-gtz v2, :cond_0

    const-wide/32 v9, 0x7ff00000

    cmp-long v2, v5, v9

    if-nez v2, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v2, v7, v5

    if-eqz v2, :cond_2

    :cond_0
    add-double p1, p1, p1

    :cond_1
    :goto_0
    return-wide p1

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_3

    sget-object v2, Lnbisdk/nj;->tR:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    sget-object v4, Lnbisdk/nj;->tS:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    add-double p1, v2, v4

    goto :goto_0

    :cond_3
    sget-object v2, Lnbisdk/nj;->tR:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    neg-double v2, v2

    sget-object v4, Lnbisdk/nj;->tS:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    sub-double p1, v2, v4

    goto :goto_0

    :cond_4
    const-wide/32 v7, 0x3fdc0000

    cmp-long v2, v5, v7

    if-gez v2, :cond_6

    const-wide/32 v7, 0x3e200000

    cmp-long v2, v5, v7

    if-gez v2, :cond_5

    const-wide v5, 0x7e37e43c8800759cL

    add-double v5, v5, p1

    const-wide/high16 v7, 0x3ff0

    cmpl-double v2, v5, v7

    if-gtz v2, :cond_1

    :cond_5
    const/4 v2, -0x1

    :goto_1
    mul-double v5, p1, p1

    mul-double v7, v5, v5

    sget-object v9, Lnbisdk/nj;->lp:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    sget-object v11, Lnbisdk/nj;->lp:[D

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    sget-object v13, Lnbisdk/nj;->lp:[D

    const/4 v14, 0x4

    aget-wide v13, v13, v14

    sget-object v15, Lnbisdk/nj;->lp:[D

    const/16 v16, 0x6

    aget-wide v15, v15, v16

    sget-object v17, Lnbisdk/nj;->lp:[D

    const/16 v18, 0x8

    aget-wide v17, v17, v18

    sget-object v19, Lnbisdk/nj;->lp:[D

    const/16 v20, 0xa

    aget-wide v19, v19, v20

    mul-double v19, v19, v7

    add-double v17, v17, v19

    mul-double v17, v17, v7

    add-double v15, v15, v17

    mul-double/2addr v15, v7

    add-double/2addr v13, v15

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    mul-double/2addr v5, v9

    sget-object v9, Lnbisdk/nj;->lp:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    sget-object v11, Lnbisdk/nj;->lp:[D

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    sget-object v13, Lnbisdk/nj;->lp:[D

    const/4 v14, 0x5

    aget-wide v13, v13, v14

    sget-object v15, Lnbisdk/nj;->lp:[D

    const/16 v16, 0x7

    aget-wide v15, v15, v16

    sget-object v17, Lnbisdk/nj;->lp:[D

    const/16 v18, 0x9

    aget-wide v17, v17, v18

    mul-double v17, v17, v7

    add-double v15, v15, v17

    mul-double/2addr v15, v7

    add-double/2addr v13, v15

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    if-gez v2, :cond_a

    add-double v2, v5, v7

    mul-double v2, v2, p1

    sub-double p1, p1, v2

    goto/16 :goto_0

    :cond_6
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/32 v9, 0x3ff30000

    cmp-long v2, v5, v9

    if-gez v2, :cond_8

    const-wide/32 v9, 0x3fe60000

    cmp-long v2, v5, v9

    if-gez v2, :cond_7

    const/4 v2, 0x0

    const-wide/high16 v5, 0x4000

    mul-double/2addr v5, v7

    const-wide/high16 v9, 0x3ff0

    sub-double/2addr v5, v9

    const-wide/high16 v9, 0x4000

    add-double/2addr v7, v9

    div-double p1, v5, v7

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x1

    const-wide/high16 v5, 0x3ff0

    sub-double v5, v7, v5

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v7, v9

    div-double p1, v5, v7

    goto/16 :goto_1

    :cond_8
    const-wide/32 v9, 0x40038000

    cmp-long v2, v5, v9

    if-gez v2, :cond_9

    const/4 v2, 0x2

    const-wide/high16 v5, 0x3ff8

    sub-double v5, v7, v5

    const-wide/high16 v9, 0x3ff0

    const-wide/high16 v11, 0x3ff8

    mul-double/2addr v7, v11

    add-double/2addr v7, v9

    div-double p1, v5, v7

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x3

    const-wide/high16 v5, -0x4010

    div-double p1, v5, v7

    goto/16 :goto_1

    :cond_a
    sget-object v9, Lnbisdk/nj;->tR:[D

    aget-wide v9, v9, v2

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    sget-object v7, Lnbisdk/nj;->tS:[D

    aget-wide v7, v7, v2

    sub-double/2addr v5, v7

    sub-double v5, v5, p1

    sub-double p1, v9, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-gez v2, :cond_1

    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 p1, v0

    goto/16 :goto_0
.end method

.method public final exp(D)D
    .locals 17

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->v(D)J

    move-result-wide v5

    long-to-int v5, v5

    shr-int/lit8 v6, v5, 0x1f

    and-int/lit8 v6, v6, 0x1

    const v7, 0x7fffffff

    and-int/2addr v5, v7

    const v7, 0x40862e42

    if-lt v5, v7, :cond_4

    const/high16 v7, 0x7ff0

    if-lt v5, v7, :cond_2

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->w(D)J

    move-result-wide v0

    const v2, 0xfffff

    and-int/2addr v2, v5

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    add-double p1, p1, p1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    if-eqz v6, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_2
    const-wide v7, 0x40862e42fefa39efL

    cmpl-double v7, p1, v7

    if-lez v7, :cond_3

    const-wide/high16 p1, 0x7ff0

    goto :goto_0

    :cond_3
    const-wide v7, -0x3f78b6ef2ad2cfafL

    cmpg-double v7, p1, v7

    if-gez v7, :cond_4

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_4
    const v7, 0x3fd62e42

    if-le v5, v7, :cond_7

    const v0, 0x3ff0a2b2

    if-ge v5, v0, :cond_6

    sget-object v0, Lnbisdk/nj;->tU:[D

    aget-wide v0, v0, v6

    sub-double v3, p1, v0

    sget-object v0, Lnbisdk/nj;->tV:[D

    aget-wide v1, v0, v6

    rsub-int/lit8 v0, v6, 0x1

    sub-int/2addr v0, v6

    :goto_1
    sub-double p1, v3, v1

    :cond_5
    :goto_2
    mul-double v5, p1, p1

    const-wide v7, 0x3fc555555555553eL

    const-wide v9, -0x40993e93e941426dL

    const-wide v11, 0x3f11566aaf25de2cL

    const-wide v13, -0x414442be3a2d940fL

    const-wide v15, 0x3e66376972bea4d0L

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    mul-double/2addr v13, v5

    add-double/2addr v11, v13

    mul-double/2addr v11, v5

    add-double/2addr v9, v11

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    mul-double/2addr v5, v7

    sub-double v5, p1, v5

    if-nez v0, :cond_9

    const-wide/high16 v0, 0x3ff0

    mul-double v2, p1, v5

    const-wide/high16 v7, 0x4000

    sub-double v4, v5, v7

    div-double/2addr v2, v4

    sub-double v2, v2, p1

    sub-double p1, v0, v2

    goto :goto_0

    :cond_6
    const-wide v0, 0x3ff71547652b82feL

    mul-double v0, v0, p1

    sget-object v2, Lnbisdk/nj;->tT:[D

    aget-wide v2, v2, v6

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v1, v0

    sget-object v3, Lnbisdk/nj;->tU:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    mul-double/2addr v3, v1

    sub-double v3, p1, v3

    sget-object v5, Lnbisdk/nj;->tV:[D

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    mul-double/2addr v1, v5

    goto :goto_1

    :cond_7
    const/high16 v6, 0x3e30

    if-ge v5, v6, :cond_8

    const-wide v5, 0x7e37e43c8800759cL

    add-double v5, v5, p1

    const-wide/high16 v7, 0x3ff0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    const-wide/high16 v0, 0x3ff0

    add-double p1, p1, v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const-wide/high16 v7, 0x3ff0

    mul-double v9, p1, v5

    const-wide/high16 v11, 0x4000

    sub-double v5, v11, v5

    div-double v5, v9, v5

    sub-double/2addr v1, v5

    sub-double/2addr v1, v3

    sub-double v1, v7, v1

    const/16 v3, -0x3fd

    if-lt v0, v3, :cond_a

    invoke-static {v1, v2}, Lnbisdk/nj;->v(D)J

    move-result-wide v1

    long-to-int v1, v1

    shl-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    invoke-static {v0}, Lnbisdk/nj;->aV(I)D

    move-result-wide p1

    goto/16 :goto_0

    :cond_a
    invoke-static {v1, v2}, Lnbisdk/nj;->v(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit16 v0, v0, 0x3e8

    shl-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    invoke-static {v0}, Lnbisdk/nj;->aV(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x170

    mul-double p1, v0, v2

    goto/16 :goto_0
.end method

.method public final log(D)D
    .locals 23

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->w(D)J

    move-result-wide v2

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->v(D)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x0

    const/high16 v4, 0x10

    if-ge v1, v4, :cond_2

    const v0, 0x7fffffff

    and-int/2addr v0, v1

    int-to-long v4, v0

    or-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10

    :goto_0
    return-wide v0

    :cond_0
    if-gez v1, :cond_1

    sub-double v0, p1, p1

    const-wide/16 v2, 0x0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, -0x36

    const-wide/high16 v1, 0x4350

    mul-double p1, p1, v1

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->v(D)J

    move-result-wide v1

    long-to-int v1, v1

    :cond_2
    const/high16 v2, 0x7ff0

    if-lt v1, v2, :cond_3

    add-double v0, p1, p1

    goto :goto_0

    :cond_3
    shr-int/lit8 v2, v1, 0x14

    add-int/lit16 v2, v2, -0x3ff

    add-int/2addr v0, v2

    const v2, 0xfffff

    and-int/2addr v1, v2

    const v2, 0x95f64

    add-int/2addr v2, v1

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x3ff0

    xor-int/2addr v3, v2

    or-int/2addr v3, v1

    invoke-static {v3}, Lnbisdk/nj;->aV(I)D

    move-result-wide v3

    shr-int/lit8 v2, v2, 0x14

    add-int/2addr v0, v2

    const-wide/high16 v5, 0x3ff0

    sub-double v2, v3, v5

    const v4, 0xfffff

    add-int/lit8 v5, v1, 0x2

    and-int/2addr v4, v5

    const/4 v5, 0x3

    if-ge v4, v5, :cond_7

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_4
    int-to-double v0, v0

    const-wide v2, 0x3fe62e42fee00000L

    mul-double/2addr v2, v0

    const-wide v4, 0x3dea39ef35793c76L

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_0

    :cond_5
    mul-double v4, v2, v2

    const-wide/high16 v6, 0x3fe0

    const-wide v8, 0x3fd5555555555555L

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    if-nez v0, :cond_6

    sub-double v0, v2, v4

    goto :goto_0

    :cond_6
    int-to-double v0, v0

    const-wide v6, 0x3fe62e42fee00000L

    mul-double/2addr v6, v0

    const-wide v8, 0x3dea39ef35793c76L

    mul-double/2addr v0, v8

    sub-double v0, v4, v0

    sub-double/2addr v0, v2

    sub-double v0, v6, v0

    goto :goto_0

    :cond_7
    const-wide/high16 v4, 0x4000

    add-double/2addr v4, v2

    div-double v4, v2, v4

    int-to-double v6, v0

    mul-double v8, v4, v4

    const v10, 0x6147a

    sub-int v10, v1, v10

    mul-double v11, v8, v8

    const v13, 0x6b851

    sub-int v1, v13, v1

    const-wide v13, 0x3fd999999997fa04L

    const-wide v15, 0x3fcc71c51d8e78afL

    const-wide v17, 0x3fc39a09d078c69fL

    mul-double v17, v17, v11

    add-double v15, v15, v17

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    mul-double/2addr v13, v11

    const-wide v15, 0x3fe5555555555593L

    const-wide v17, 0x3fd2492494229359L

    const-wide v19, 0x3fc7466496cb03deL

    const-wide v21, 0x3fc2f112df3e5244L

    mul-double v21, v21, v11

    add-double v19, v19, v21

    mul-double v19, v19, v11

    add-double v17, v17, v19

    mul-double v11, v11, v17

    add-double/2addr v11, v15

    mul-double/2addr v8, v11

    or-int/2addr v1, v10

    add-double/2addr v8, v13

    if-lez v1, :cond_9

    const-wide/high16 v10, 0x3fe0

    mul-double/2addr v10, v2

    mul-double/2addr v10, v2

    if-nez v0, :cond_8

    add-double v0, v10, v8

    mul-double/2addr v0, v4

    sub-double v0, v10, v0

    sub-double v0, v2, v0

    goto/16 :goto_0

    :cond_8
    const-wide v0, 0x3fe62e42fee00000L

    mul-double/2addr v0, v6

    add-double/2addr v8, v10

    mul-double/2addr v4, v8

    const-wide v8, 0x3dea39ef35793c76L

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sub-double v4, v10, v4

    sub-double v2, v4, v2

    sub-double/2addr v0, v2

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_a

    sub-double v0, v2, v8

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    goto/16 :goto_0

    :cond_a
    const-wide v0, 0x3fe62e42fee00000L

    mul-double/2addr v0, v6

    sub-double v8, v2, v8

    mul-double/2addr v4, v8

    const-wide v8, 0x3dea39ef35793c76L

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    sub-double v2, v4, v2

    sub-double/2addr v0, v2

    goto/16 :goto_0
.end method

.method public final sinh(D)D
    .locals 25

    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->v(D)J

    move-result-wide v1

    long-to-int v3, v1

    const v1, 0x7fffffff

    and-int v10, v3, v1

    const/high16 v1, 0x7ff0

    if-lt v10, v1, :cond_1

    add-double p1, p1, p1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    const-wide/high16 v1, 0x3fe0

    if-gez v3, :cond_19

    const-wide/high16 v1, -0x4020

    move-wide v8, v1

    :goto_1
    const/high16 v1, 0x4036

    if-ge v10, v1, :cond_15

    const/high16 v1, 0x3e30

    if-ge v10, v1, :cond_2

    const-wide v1, 0x7fac7b1f3cac7433L

    add-double v1, v1, p1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    :cond_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/16 v1, 0x0

    invoke-static {v3, v4}, Lnbisdk/nj;->v(D)J

    move-result-wide v5

    long-to-int v5, v5

    const/high16 v6, -0x8000

    and-int/2addr v6, v5

    const v7, 0x7fffffff

    and-int/2addr v5, v7

    const v7, 0x4043687a

    if-lt v5, v7, :cond_7

    const v7, 0x40862e42

    if-lt v5, v7, :cond_6

    const/high16 v7, 0x7ff0

    if-lt v5, v7, :cond_5

    invoke-static {v3, v4}, Lnbisdk/nj;->w(D)J

    move-result-wide v1

    const v7, 0xfffff

    and-int/2addr v5, v7

    int-to-long v11, v5

    or-long/2addr v1, v11

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-eqz v1, :cond_3

    add-double v1, v3, v3

    :goto_2
    const/high16 v3, 0x3ff0

    if-ge v10, v3, :cond_14

    const-wide/high16 v3, 0x4000

    mul-double/2addr v3, v1

    mul-double v5, v1, v1

    const-wide/high16 v10, 0x3ff0

    add-double/2addr v1, v10

    div-double v1, v5, v1

    sub-double v1, v3, v1

    mul-double p1, v8, v1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    move-wide v1, v3

    goto :goto_2

    :cond_4
    const-wide/high16 v1, -0x4010

    goto :goto_2

    :cond_5
    const-wide v11, 0x40862e42fefa39efL

    cmpl-double v7, v3, v11

    if-lez v7, :cond_6

    const-wide/high16 v1, 0x7ff0

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    const-wide v11, 0x1a56e1fc2f8f359L

    add-double/2addr v11, v3

    const-wide/16 v13, 0x0

    cmpg-double v7, v11, v13

    if-gez v7, :cond_7

    const-wide/high16 v1, -0x4010

    goto :goto_2

    :cond_7
    const v7, 0x3fd62e42

    if-le v5, v7, :cond_b

    const v1, 0x3ff0a2b2

    if-ge v5, v1, :cond_9

    if-nez v6, :cond_8

    const-wide v1, 0x3fe62e42fee00000L

    sub-double/2addr v3, v1

    const-wide v1, 0x3dea39ef35793c76L

    const/4 v5, 0x1

    :goto_3
    sub-double v6, v3, v1

    sub-double/2addr v3, v6

    sub-double v1, v3, v1

    move-wide v3, v6

    :goto_4
    const-wide/high16 v6, 0x3fe0

    mul-double/2addr v6, v3

    mul-double v11, v3, v6

    const-wide/high16 v13, 0x3ff0

    const-wide v15, -0x405eeeeeeeeeef0cL

    const-wide v17, 0x3f5a01a019fe5585L

    const-wide v19, -0x40eb31e661552449L

    const-wide v21, 0x3ed0cfca86e65239L

    const-wide v23, -0x4175024891f63cd3L

    mul-double v23, v23, v11

    add-double v21, v21, v23

    mul-double v21, v21, v11

    add-double v19, v19, v21

    mul-double v19, v19, v11

    add-double v17, v17, v19

    mul-double v17, v17, v11

    add-double v15, v15, v17

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4008

    mul-double/2addr v6, v13

    sub-double v6, v15, v6

    sub-double/2addr v13, v6

    const-wide/high16 v15, 0x4018

    mul-double/2addr v6, v3

    sub-double v6, v15, v6

    div-double v6, v13, v6

    mul-double/2addr v6, v11

    if-nez v5, :cond_d

    mul-double v1, v3, v6

    sub-double/2addr v1, v11

    sub-double v1, v3, v1

    goto/16 :goto_2

    :cond_8
    const-wide v1, 0x3fe62e42fee00000L

    add-double/2addr v3, v1

    const-wide v1, -0x4215c610ca86c38aL

    const/4 v5, -0x1

    goto :goto_3

    :cond_9
    const-wide v1, 0x3ff71547652b82feL

    mul-double v11, v3, v1

    if-nez v6, :cond_a

    const-wide/high16 v1, 0x3fe0

    :goto_5
    add-double/2addr v1, v11

    double-to-int v5, v1

    int-to-double v1, v5

    const-wide v6, 0x3fe62e42fee00000L

    mul-double/2addr v6, v1

    sub-double/2addr v3, v6

    const-wide v6, 0x3dea39ef35793c76L

    mul-double/2addr v1, v6

    goto :goto_3

    :cond_a
    const-wide/high16 v1, -0x4020

    goto :goto_5

    :cond_b
    const/high16 v6, 0x3c90

    if-ge v5, v6, :cond_c

    const-wide v1, 0x7e37e43c8800759cL

    add-double/2addr v1, v3

    sub-double/2addr v1, v1

    sub-double v1, v3, v1

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_d
    sub-double/2addr v6, v1

    mul-double/2addr v6, v3

    sub-double v1, v6, v1

    sub-double/2addr v1, v11

    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    const-wide/high16 v5, 0x3fe0

    sub-double v1, v3, v1

    mul-double/2addr v1, v5

    const-wide/high16 v3, 0x3fe0

    sub-double/2addr v1, v3

    goto/16 :goto_2

    :cond_e
    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    const-wide/high16 v5, -0x4030

    cmpg-double v5, v3, v5

    if-gez v5, :cond_f

    const-wide/high16 v5, -0x4000

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v3, v11

    sub-double/2addr v1, v3

    mul-double/2addr v1, v5

    goto/16 :goto_2

    :cond_f
    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v11, 0x4000

    sub-double v1, v3, v1

    mul-double/2addr v1, v11

    add-double/2addr v1, v5

    goto/16 :goto_2

    :cond_10
    const/4 v6, -0x2

    if-le v5, v6, :cond_11

    const/16 v6, 0x38

    if-le v5, v6, :cond_12

    :cond_11
    const-wide/high16 v6, 0x3ff0

    sub-double/2addr v1, v3

    sub-double v1, v6, v1

    invoke-static {v1, v2}, Lnbisdk/nj;->v(D)J

    move-result-wide v1

    long-to-int v1, v1

    shl-int/lit8 v2, v5, 0x14

    sub-int/2addr v1, v2

    invoke-static {v1}, Lnbisdk/nj;->aV(I)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    sub-double/2addr v1, v3

    goto/16 :goto_2

    :cond_12
    const/16 v6, 0x14

    if-ge v5, v6, :cond_13

    const/high16 v6, 0x3ff0

    const/high16 v7, 0x20

    shr-int/2addr v7, v5

    sub-int/2addr v6, v7

    invoke-static {v6}, Lnbisdk/nj;->aV(I)D

    move-result-wide v6

    sub-double/2addr v1, v3

    sub-double v1, v6, v1

    invoke-static {v1, v2}, Lnbisdk/nj;->v(D)J

    move-result-wide v1

    long-to-int v1, v1

    shl-int/lit8 v2, v5, 0x14

    add-int/2addr v1, v2

    invoke-static {v1}, Lnbisdk/nj;->aV(I)D

    move-result-wide v1

    goto/16 :goto_2

    :cond_13
    rsub-int v6, v5, 0x3ff

    shl-int/lit8 v6, v6, 0x14

    invoke-static {v6}, Lnbisdk/nj;->aV(I)D

    move-result-wide v6

    add-double/2addr v1, v6

    sub-double v1, v3, v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lnbisdk/nj;->v(D)J

    move-result-wide v1

    long-to-int v1, v1

    shl-int/lit8 v2, v5, 0x14

    add-int/2addr v1, v2

    invoke-static {v1}, Lnbisdk/nj;->aV(I)D

    move-result-wide v1

    goto/16 :goto_2

    :cond_14
    const-wide/high16 v3, 0x3ff0

    add-double/2addr v3, v1

    div-double v3, v1, v3

    add-double/2addr v1, v3

    mul-double p1, v8, v1

    goto/16 :goto_0

    :cond_15
    const v1, 0x40862e42

    if-ge v10, v1, :cond_16

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lnbisdk/nj;->exp(D)D

    move-result-wide v1

    mul-double p1, v8, v1

    goto/16 :goto_0

    :cond_16
    invoke-static/range {p1 .. p2}, Lnbisdk/nj;->w(D)J

    move-result-wide v1

    const v3, 0x408633ce

    if-lt v10, v3, :cond_17

    const v3, 0x408633ce

    if-ne v10, v3, :cond_18

    const-wide/32 v3, -0x70460783

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    :cond_17
    const-wide/high16 v1, 0x3fe0

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lnbisdk/nj;->exp(D)D

    move-result-wide v1

    mul-double v3, v8, v1

    mul-double p1, v3, v1

    goto/16 :goto_0

    :cond_18
    const-wide v1, 0x7fac7b1f3cac7433L

    mul-double p1, p1, v1

    goto/16 :goto_0

    :cond_19
    move-wide v8, v1

    goto/16 :goto_1
.end method
