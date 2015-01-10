.class public final Lnbisdk/pt;
.super Ljava/lang/Object;


# static fields
.field private static final hD:D

.field private static final kk:D


# instance fields
.field private dd:D

.field private hG:D

.field private pN:D

.field private pO:D

.field private pP:D

.field private pQ:D

.field private vb:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide v0, 0x3f7b6b90f2f6f980L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lnbisdk/pt;->kk:D

    sget-wide v2, Lnbisdk/pt;->kk:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    sget-wide v4, Lnbisdk/pt;->kk:D

    sget-wide v6, Lnbisdk/pt;->kk:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    sput-wide v0, Lnbisdk/pt;->hD:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3feffcb923a29c78L

    iput-wide v0, p0, Lnbisdk/pt;->hG:D

    iput-wide v2, p0, Lnbisdk/pt;->pN:D

    iput-wide v2, p0, Lnbisdk/pt;->pO:D

    iput-wide v2, p0, Lnbisdk/pt;->pP:D

    iput-wide v2, p0, Lnbisdk/pt;->pQ:D

    iput-wide v2, p0, Lnbisdk/pt;->dd:D

    iput-wide v2, p0, Lnbisdk/pt;->vb:D

    return-void
.end method

.method public static a(DDDDD)Lnbisdk/pt;
    .locals 3

    new-instance v0, Lnbisdk/pt;

    invoke-direct {v0}, Lnbisdk/pt;-><init>()V

    iput-wide p0, v0, Lnbisdk/pt;->hG:D

    iput-wide p2, v0, Lnbisdk/pt;->pN:D

    iput-wide p4, v0, Lnbisdk/pt;->pO:D

    iput-wide p8, v0, Lnbisdk/pt;->pP:D

    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lnbisdk/pt;->e(D)D

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/pt;->pQ:D

    return-object v0
.end method

.method public static c(DD)Lnbisdk/pt;
    .locals 25

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    const-wide v6, 0x416312d000000000L

    :cond_0
    const-wide v2, 0x3feffcb923a29c78L

    const-wide v4, 0x411e848000000000L

    const-wide/16 v8, 0x0

    const-wide v10, 0x4066800000000000L

    add-double v10, v10, p2

    const-wide/high16 v12, 0x4018

    div-double/2addr v10, v12

    double-to-int v10, v10

    const-wide v11, -0x3f99e00000000000L

    mul-int/lit8 v10, v10, 0x6

    int-to-double v13, v10

    add-double v10, v11, v13

    invoke-static/range {v2 .. v11}, Lnbisdk/pt;->a(DDDDD)Lnbisdk/pt;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [D

    const/4 v4, 0x1

    new-array v4, v4, [D

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000

    mul-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    iget-wide v0, v2, Lnbisdk/pt;->pP:D

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    sub-double v7, v7, v17

    invoke-static {v5, v6}, Lnbisdk/pt;->e(D)D

    move-result-wide v5

    iget-wide v0, v2, Lnbisdk/pt;->pQ:D

    move-wide/from16 v17, v0

    sub-double v5, v5, v17

    const-wide v17, 0x415854a640000000L

    const-wide/high16 v19, 0x3ff0

    sget-wide v21, Lnbisdk/pt;->kk:D

    sget-wide v23, Lnbisdk/pt;->kk:D

    mul-double v21, v21, v23

    mul-double v21, v21, v9

    mul-double v21, v21, v9

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    div-double v17, v17, v19

    iget-wide v0, v2, Lnbisdk/pt;->hG:D

    move-wide/from16 v19, v0

    mul-double v5, v5, v19

    iget-wide v0, v2, Lnbisdk/pt;->hG:D

    move-wide/from16 v19, v0

    mul-double v19, v19, v17

    mul-double v11, v11, v19

    const-wide/high16 v19, 0x4010

    div-double v11, v11, v19

    iget-wide v0, v2, Lnbisdk/pt;->hG:D

    move-wide/from16 v19, v0

    mul-double v19, v19, v17

    mul-double v9, v9, v19

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    const-wide/high16 v19, 0x4038

    div-double v9, v9, v19

    const-wide/high16 v19, 0x4014

    mul-double v21, v15, v15

    sub-double v19, v19, v21

    const-wide/high16 v21, 0x4022

    sget-wide v23, Lnbisdk/pt;->hD:D

    mul-double v21, v21, v23

    mul-double v21, v21, v13

    mul-double v21, v21, v13

    add-double v19, v19, v21

    const-wide/high16 v21, 0x4010

    sget-wide v23, Lnbisdk/pt;->hD:D

    mul-double v21, v21, v23

    sget-wide v23, Lnbisdk/pt;->hD:D

    mul-double v21, v21, v23

    mul-double v21, v21, v13

    mul-double v21, v21, v13

    mul-double v21, v21, v13

    mul-double v21, v21, v13

    add-double v19, v19, v21

    mul-double v9, v9, v19

    iget-wide v0, v2, Lnbisdk/pt;->hG:D

    move-wide/from16 v19, v0

    mul-double v19, v19, v17

    mul-double v19, v19, v13

    iget-wide v0, v2, Lnbisdk/pt;->hG:D

    move-wide/from16 v21, v0

    mul-double v17, v17, v21

    mul-double v17, v17, v13

    mul-double v17, v17, v13

    mul-double v17, v17, v13

    const-wide/high16 v21, 0x4018

    div-double v17, v17, v21

    const-wide/high16 v21, 0x3ff0

    mul-double/2addr v15, v15

    sub-double v15, v21, v15

    sget-wide v21, Lnbisdk/pt;->hD:D

    mul-double v21, v21, v13

    mul-double v13, v13, v21

    add-double/2addr v13, v15

    mul-double v13, v13, v17

    const/4 v15, 0x0

    mul-double/2addr v11, v7

    mul-double/2addr v11, v7

    add-double/2addr v5, v11

    mul-double/2addr v9, v7

    mul-double/2addr v9, v7

    mul-double/2addr v9, v7

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    iget-wide v9, v2, Lnbisdk/pt;->pO:D

    add-double/2addr v5, v9

    iget-wide v9, v2, Lnbisdk/pt;->vb:D

    sub-double/2addr v5, v9

    aput-wide v5, v4, v15

    const/4 v5, 0x0

    mul-double v9, v19, v7

    mul-double v11, v13, v7

    mul-double/2addr v11, v7

    mul-double v6, v11, v7

    add-double/2addr v6, v9

    iget-wide v8, v2, Lnbisdk/pt;->pN:D

    add-double/2addr v6, v8

    iget-wide v8, v2, Lnbisdk/pt;->dd:D

    sub-double/2addr v6, v8

    aput-wide v6, v3, v5

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    iput-wide v5, v2, Lnbisdk/pt;->dd:D

    const/4 v3, 0x0

    aget-wide v3, v4, v3

    iput-wide v3, v2, Lnbisdk/pt;->vb:D

    return-object v2
.end method

.method private static e(D)D
    .locals 12

    const-wide/high16 v0, 0x4000

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4018

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4020

    mul-double/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x41584a364954cd11L

    mul-double/2addr v8, p0

    const-wide v10, 0x40cf5336fb99110fL

    mul-double/2addr v0, v10

    sub-double v0, v8, v0

    const-wide v8, 0x4030d52625c12e06L

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    const-wide v2, 0x3f9683118817d4ddL

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3f347e52af33e730L

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    return-wide v0
.end method
