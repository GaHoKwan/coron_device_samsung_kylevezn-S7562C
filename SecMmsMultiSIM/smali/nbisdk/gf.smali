.class public final Lnbisdk/gf;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ds;
.implements Lnbisdk/ph;


# static fields
.field private static V:I

.field private static bF:J

.field private static cK:J

.field private static cz:D

.field private static kk:D

.field private static kl:F

.field private static ks:Z


# instance fields
.field private Z:Z

.field private hS:Ljava/lang/String;

.field private km:Lnbisdk/jp;

.field private kn:Ljava/util/Vector;

.field private ko:Lnbisdk/bb;

.field private kp:Ljava/util/Vector;

.field private kq:Lnbisdk/nb;

.field private kr:Lnbisdk/go;

.field private kt:Lnbisdk/ft;

.field private ku:Lnbisdk/rj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x407f400000000000L

    sput-wide v0, Lnbisdk/gf;->kk:D

    const/high16 v0, 0x4040

    sput v0, Lnbisdk/gf;->kl:F

    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lnbisdk/gf;->cK:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lnbisdk/gf;->bF:J

    const-wide/high16 v0, 0x4069

    sput-wide v0, Lnbisdk/gf;->cz:D

    const/16 v0, 0x64

    sput v0, Lnbisdk/gf;->V:I

    const/4 v0, 0x0

    sput-boolean v0, Lnbisdk/gf;->ks:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/gf;->kn:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/gf;->Z:Z

    iput-object v1, p0, Lnbisdk/gf;->kq:Lnbisdk/nb;

    iput-object v1, p0, Lnbisdk/gf;->hS:Ljava/lang/String;

    invoke-static {}, Lnbisdk/go;->gA()Lnbisdk/go;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    new-instance v0, Lnbisdk/oy;

    invoke-direct {v0, p0}, Lnbisdk/oy;-><init>(Lnbisdk/gf;)V

    new-instance v0, Lnbisdk/or;

    const-string v1, "celltower"

    invoke-direct {v0, p0, p0, v1}, Lnbisdk/or;-><init>(Lnbisdk/gf;Lnbisdk/ds;Ljava/lang/String;)V

    iput-object v0, p0, Lnbisdk/gf;->ku:Lnbisdk/rj;

    return-void
.end method

.method private R()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lnbisdk/gf;->ar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnbisdk/gf;->b(S)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    if-eqz v0, :cond_1

    const/16 v0, 0x2346

    invoke-direct {p0, v0}, Lnbisdk/gf;->k(I)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Vector;DD)Ljava/util/Vector;
    .locals 12

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x1

    new-array v8, v0, [D

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v10, v0, :cond_1

    invoke-virtual {p0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lnbisdk/og;

    invoke-virtual {v9}, Lnbisdk/og;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v9}, Lnbisdk/og;->getLongitude()D

    move-result-wide v2

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v0

    sget-wide v2, Lnbisdk/gf;->kk:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {v11, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_1
    return-object v11
.end method

.method private static a(DDILjava/lang/String;)Lnbisdk/nb;
    .locals 7

    const/4 v5, 0x4

    new-instance v6, Lnbisdk/nb;

    invoke-direct {v6}, Lnbisdk/nb;-><init>()V

    invoke-virtual {v6, p0, p1}, Lnbisdk/nb;->setLatitude(D)V

    invoke-virtual {v6, p2, p3}, Lnbisdk/nb;->setLongitude(D)V

    invoke-virtual {v6, p4}, Lnbisdk/nb;->setAccuracy(I)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lnbisdk/nb;->setLocationType(I)V

    invoke-virtual {v6, p5}, Lnbisdk/nb;->aO(Ljava/lang/String;)V

    const/16 v0, 0x183

    invoke-virtual {v6, v0}, Lnbisdk/nb;->setValid(I)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lnbisdk/nb;->kR()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCS/cell/local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v6}, Lnbisdk/nb;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v6}, Lnbisdk/nb;->getLatitude()D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lnbisdk/ck;->a(DDSB)V

    :cond_1
    return-object v6

    :cond_2
    invoke-virtual {v6}, Lnbisdk/nb;->kR()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCS/wifi/local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x5

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/gf;)Lnbisdk/nb;
    .locals 1

    iget-object v0, p0, Lnbisdk/gf;->kq:Lnbisdk/nb;

    return-object v0
.end method

.method private a(Ljava/util/Vector;Lnbisdk/nt;)V
    .locals 9

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fq;

    if-eqz v0, :cond_0

    new-instance v5, Lnbisdk/na;

    invoke-virtual {v0}, Lnbisdk/fq;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-direct {v5, v6, v2, v7}, Lnbisdk/na;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0}, Lnbisdk/fq;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p2, v4}, Lnbisdk/nt;->k(Ljava/util/Vector;)V

    new-instance v0, Lnbisdk/bb;

    iget-object v1, p0, Lnbisdk/gf;->ku:Lnbisdk/rj;

    iget-object v2, p0, Lnbisdk/gf;->hS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnbisdk/bb;-><init>(Lnbisdk/rj;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lnbisdk/bb;->b(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lnbisdk/bb;->startRequest()V

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/Vector;[D)V
    .locals 10

    const/4 v9, 0x1

    const-wide/16 v0, 0x0

    const-wide v3, -0x3f70c80000000000L

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aput-wide v3, p1, v2

    aput-wide v3, p1, v9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-wide v3, v0

    move-wide v5, v0

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/og;

    invoke-virtual {v0}, Lnbisdk/og;->getLatitude()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v0}, Lnbisdk/og;->getLongitude()D

    move-result-wide v7

    add-double/2addr v3, v7

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v5, v0

    aput-wide v0, p1, v2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v3, v0

    aput-wide v0, p1, v9

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/gf;I)V
    .locals 1

    const/16 v0, 0x234b

    invoke-direct {p0, v0}, Lnbisdk/gf;->k(I)V

    return-void
.end method

.method private a(IIII)Z
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v1}, Lnbisdk/ft;->getWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v1}, Lnbisdk/ft;->gi()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    iget-object v1, p0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v1}, Lnbisdk/ft;->gl()Ljava/util/Vector;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    if-gtz v10, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_3

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v9, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/xg;

    int-to-byte v4, v10

    invoke-interface {v0}, Lnbisdk/xg;->dC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lnbisdk/xg;->jb()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v2}, Lnbisdk/ft;->gh()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v7, v0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lnbisdk/ck;->a(IIIIBLjava/lang/String;II)V

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/gf;Ljava/util/Vector;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnbisdk/yf;->oS()Ljava/util/Vector;

    move-result-object v0

    invoke-static {}, Lnbisdk/gf;->gy()Lnbisdk/nt;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lnbisdk/nt;->i(Ljava/util/Vector;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ar()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lnbisdk/gf;->gx()Lnbisdk/qq;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lnbisdk/qq;->jB()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    sget-boolean v2, Lnbisdk/gf;->ks:Z

    if-ne v2, v1, :cond_2

    invoke-static {}, Lnbisdk/gf;->gy()Lnbisdk/nt;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnbisdk/nt;->clear()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lnbisdk/gf;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/gf;->R()V

    return-void
.end method

.method private b(S)Z
    .locals 29

    invoke-static {}, Lnbisdk/gf;->gy()Lnbisdk/nt;

    move-result-object v25

    if-nez v25, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lnbisdk/gf;->gy()Lnbisdk/nt;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lnbisdk/gf;->gx()Lnbisdk/qq;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_20

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    instance-of v3, v4, Lnbisdk/jn;

    if-eqz v3, :cond_6

    new-instance v7, Lnbisdk/nh;

    invoke-direct {v7}, Lnbisdk/nh;-><init>()V

    move-object v3, v4

    check-cast v3, Lnbisdk/jn;

    invoke-virtual {v3}, Lnbisdk/jn;->iG()I

    move-result v3

    invoke-virtual {v7, v3}, Lnbisdk/nh;->aS(I)V

    move-object v3, v4

    check-cast v3, Lnbisdk/jn;

    invoke-virtual {v3}, Lnbisdk/jn;->iH()I

    move-result v3

    invoke-virtual {v7, v3}, Lnbisdk/nh;->aT(I)V

    check-cast v4, Lnbisdk/jn;

    invoke-virtual {v4}, Lnbisdk/jn;->gX()I

    move-result v3

    invoke-virtual {v7, v3}, Lnbisdk/nh;->aU(I)V

    invoke-virtual {v7}, Lnbisdk/nh;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    invoke-interface {v6, v5}, Lnbisdk/nt;->j(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnbisdk/og;

    if-eqz v3, :cond_7

    move-object/from16 v20, v4

    :goto_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v5}, Lnbisdk/ft;->getWifiState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v5}, Lnbisdk/ft;->gi()Ljava/util/Vector;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    if-eqz v5, :cond_1f

    new-instance v8, Lnbisdk/fq;

    invoke-direct {v8}, Lnbisdk/fq;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v3}, Lnbisdk/ft;->gl()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    move v4, v3

    :goto_5
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    const/4 v3, 0x0

    move v5, v3

    :goto_6
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v5, v3, :cond_b

    invoke-virtual {v10, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnbisdk/xg;

    if-eqz v3, :cond_a

    const-string v7, ""

    invoke-interface {v3}, Lnbisdk/xg;->dC()Ljava/lang/String;

    move-result-object v13

    const/4 v6, 0x0

    move/from16 v28, v6

    move-object v6, v7

    move/from16 v7, v28

    :goto_7
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v7, v14, :cond_9

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v13, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_3
    invoke-interface {v4}, Lnbisdk/qq;->jx()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    invoke-interface {v4}, Lnbisdk/qq;->jy()Lnbisdk/jn;

    move-result-object v3

    :cond_4
    :goto_8
    move-object v4, v3

    goto/16 :goto_1

    :cond_5
    invoke-interface {v4}, Lnbisdk/qq;->jx()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    invoke-interface {v4}, Lnbisdk/qq;->jz()Lnbisdk/gz;

    move-result-object v3

    goto :goto_8

    :cond_6
    instance-of v3, v4, Lnbisdk/gz;

    if-eqz v3, :cond_1

    new-instance v7, Lnbisdk/co;

    invoke-direct {v7}, Lnbisdk/co;-><init>()V

    move-object v3, v4

    check-cast v3, Lnbisdk/gz;

    invoke-virtual {v3}, Lnbisdk/gz;->gY()I

    move-result v3

    invoke-virtual {v7, v3}, Lnbisdk/co;->t(I)V

    move-object v3, v4

    check-cast v3, Lnbisdk/gz;

    invoke-virtual {v3}, Lnbisdk/gz;->gZ()I

    move-result v3

    invoke-virtual {v7, v3}, Lnbisdk/co;->u(I)V

    move-object v3, v4

    check-cast v3, Lnbisdk/gz;

    invoke-virtual {v3}, Lnbisdk/gz;->gX()I

    move-result v3

    invoke-virtual {v7, v3}, Lnbisdk/co;->s(I)V

    check-cast v4, Lnbisdk/gz;

    invoke-virtual {v4}, Lnbisdk/gz;->ha()I

    move-result v3

    invoke-virtual {v7, v3}, Lnbisdk/co;->v(I)V

    invoke-virtual {v7}, Lnbisdk/co;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v20, v3

    goto/16 :goto_4

    :cond_8
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v8, v6}, Lnbisdk/fq;->ac(Ljava/lang/String;)V

    invoke-virtual {v8}, Lnbisdk/fq;->getKey()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Integer;

    invoke-interface {v3}, Lnbisdk/xg;->jb()I

    move-result v13

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lnbisdk/xg;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-boolean v6, Lnbisdk/me;->sE:Z

    if-eqz v6, :cond_a

    invoke-static {v3}, Lnbisdk/ck;->a(Lnbisdk/xg;)V

    :cond_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Lnbisdk/nt;->j(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    move-object/from16 v23, v3

    move/from16 v24, v4

    :goto_9
    if-eqz v23, :cond_19

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-direct/range {p0 .. p0}, Lnbisdk/gf;->ar()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    new-instance v27, Ljava/util/Vector;

    invoke-direct/range {v27 .. v27}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    if-eqz v20, :cond_1e

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnbisdk/og;

    move-object/from16 v22, v3

    :goto_a
    if-eqz v22, :cond_12

    const/4 v13, 0x0

    const/4 v3, 0x0

    move v12, v3

    :goto_b
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v12, v3, :cond_1d

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lnbisdk/fq;

    if-eqz v5, :cond_e

    const/4 v3, 0x1

    new-array v11, v3, [D

    invoke-virtual {v5}, Lnbisdk/fq;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v5}, Lnbisdk/fq;->getLongitude()D

    move-result-wide v5

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLongitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->gd()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lnbisdk/gf;->kl:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_e

    const/4 v3, 0x1

    :goto_c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    const/4 v3, 0x0

    move/from16 v21, v3

    :goto_d
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_11

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lnbisdk/fq;

    if-eqz v19, :cond_d

    const/4 v3, 0x1

    new-array v11, v3, [D

    invoke-virtual/range {v19 .. v19}, Lnbisdk/fq;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {v19 .. v19}, Lnbisdk/fq;->getLongitude()D

    move-result-wide v5

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLongitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v15

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->gd()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lnbisdk/gf;->kl:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    cmpl-double v3, v15, v3

    if-lez v3, :cond_10

    sget-boolean v3, Lnbisdk/me;->sE:Z

    if-eqz v3, :cond_c

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->gd()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual/range {v19 .. v19}, Lnbisdk/fq;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {v19 .. v19}, Lnbisdk/fq;->getLatitude()D

    move-result-wide v12

    invoke-virtual/range {v19 .. v19}, Lnbisdk/fq;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->gd()I

    move-result v17

    if-lez v17, :cond_f

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->gd()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v17, v15, v17

    :goto_e
    invoke-static/range {v3 .. v18}, Lnbisdk/ck;->a(DDLjava/lang/String;DDDLjava/lang/String;DD)V

    :cond_c
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v21, v21, -0x1

    :cond_d
    :goto_f
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto/16 :goto_b

    :cond_f
    const-wide/16 v17, 0x0

    goto :goto_e

    :cond_10
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_f

    :cond_11
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnbisdk/gf;->a(Ljava/util/Vector;Lnbisdk/nt;)V

    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_19

    const/4 v7, 0x0

    invoke-static/range {v23 .. v23}, Lnbisdk/gf;->f(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v6, -0x1

    if-eqz v9, :cond_16

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v5, v3, :cond_13

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v4, :cond_1c

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    move-object v6, v3

    move v3, v4

    move v4, v5

    :goto_11
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    move v6, v4

    move v4, v3

    goto :goto_10

    :cond_13
    const/4 v3, 0x1

    if-le v4, v3, :cond_16

    const/4 v3, 0x0

    move v5, v3

    :goto_12
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v5, v3, :cond_16

    if-eq v5, v6, :cond_15

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    if-ne v8, v4, :cond_15

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v4, :cond_15

    invoke-virtual {v3, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v3, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_15
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_12

    :cond_16
    if-eqz v7, :cond_19

    const/4 v3, 0x2

    new-array v12, v3, [D

    invoke-static {v7, v12}, Lnbisdk/gf;->a(Ljava/util/Vector;[D)V

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_17

    const/4 v3, 0x0

    aget-wide v3, v12, v3

    const/4 v5, 0x1

    aget-wide v5, v12, v5

    move-object/from16 v0, v23

    invoke-static {v0, v3, v4, v5, v6}, Lnbisdk/gf;->a(Ljava/util/Vector;DD)Ljava/util/Vector;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lnbisdk/gf;->a(Ljava/util/Vector;Lnbisdk/nt;)V

    const/4 v3, 0x0

    aget-wide v3, v12, v3

    const/4 v5, 0x1

    aget-wide v5, v12, v5

    sget v7, Lnbisdk/gf;->V:I

    const-string v8, "TCS/wifi/local"

    invoke-static/range {v3 .. v8}, Lnbisdk/gf;->a(DDILjava/lang/String;)Lnbisdk/nb;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnbisdk/gf;->a(Lnbisdk/nb;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    if-ne v10, v3, :cond_18

    if-eqz v22, :cond_18

    const/4 v3, 0x1

    new-array v11, v3, [D

    const/4 v3, 0x0

    aget-wide v3, v12, v3

    const/4 v5, 0x1

    aget-wide v5, v12, v5

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->getLongitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lnbisdk/og;->gd()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lnbisdk/gf;->kl:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_19

    const/4 v3, 0x0

    aget-wide v3, v12, v3

    const/4 v5, 0x1

    aget-wide v5, v12, v5

    sget v7, Lnbisdk/gf;->V:I

    const-string v8, "TCS/wifi/local"

    invoke-static/range {v3 .. v8}, Lnbisdk/gf;->a(DDILjava/lang/String;)Lnbisdk/nb;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnbisdk/gf;->a(Lnbisdk/nb;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_19
    if-eqz v20, :cond_1b

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1b

    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1a

    if-eqz v24, :cond_1a

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lnbisdk/og;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Lnbisdk/og;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v7}, Lnbisdk/og;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v7}, Lnbisdk/og;->gd()I

    move-result v7

    const-string v8, "TCS/cell/local"

    invoke-static/range {v3 .. v8}, Lnbisdk/gf;->a(DDILjava/lang/String;)Lnbisdk/nb;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnbisdk/gf;->a(Lnbisdk/nb;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1c
    move v3, v4

    move v4, v6

    move-object v6, v7

    goto/16 :goto_11

    :cond_1d
    move v3, v13

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v22, v3

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v23, v3

    move/from16 v24, v4

    goto/16 :goto_9

    :cond_20
    move-object v4, v5

    goto/16 :goto_3
.end method

.method static synthetic c(Lnbisdk/gf;)Lnbisdk/go;
    .locals 1

    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    return-object v0
.end method

.method static synthetic d(Lnbisdk/gf;)Z
    .locals 1

    invoke-direct {p0}, Lnbisdk/gf;->ar()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lnbisdk/gf;)Lnbisdk/nt;
    .locals 1

    invoke-static {}, Lnbisdk/gf;->gy()Lnbisdk/nt;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 15

    const/4 v11, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    move v10, v11

    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v10, v0, :cond_4

    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnbisdk/og;

    invoke-virtual {v4}, Lnbisdk/og;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v4}, Lnbisdk/og;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v14, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v12, v11

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v12, v4, :cond_3

    if-eq v12, v10, :cond_2

    invoke-virtual {p0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lnbisdk/og;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lnbisdk/og;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lnbisdk/og;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x2

    new-array v8, v8, [D

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v4

    sget-wide v6, Lnbisdk/gf;->cz:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_2

    invoke-virtual {v14, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    :cond_4
    move-object v0, v13

    goto :goto_0
.end method

.method private static gx()Lnbisdk/qq;
    .locals 1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnbisdk/dz;->eK()Lnbisdk/qq;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gy()Lnbisdk/nt;
    .locals 1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lnbisdk/dz;->eO()Lnbisdk/nt;

    move-result-object v0

    goto :goto_0
.end method

.method private k(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->onLocationError(I)V

    :cond_0
    return-void
.end method

.method static synthetic w(Z)Z
    .locals 0

    sput-boolean p0, Lnbisdk/gf;->ks:Z

    return p0
.end method


# virtual methods
.method public final a(Lnbisdk/jp;Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    iput-object p2, p0, Lnbisdk/gf;->hS:Ljava/lang/String;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnbisdk/dz;->a(Lnbisdk/iv;)Lnbisdk/ft;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gj()Z

    :cond_0
    :try_start_0
    invoke-static {}, Lnbisdk/gf;->gy()Lnbisdk/nt;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lnbisdk/gf;->cK:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lnbisdk/nt;->g(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_2
    const/16 v0, 0x2346

    invoke-direct {p0, v0}, Lnbisdk/gf;->k(I)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/nb;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->a(Lnbisdk/nb;)V

    :cond_2
    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    invoke-virtual {v0, p1}, Lnbisdk/go;->b(Lnbisdk/nb;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lnbisdk/gf;->kn:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnbisdk/gf;->kn:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    iget-object v1, p0, Lnbisdk/gf;->kn:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    return-void
.end method

.method public final f(I)V
    .locals 0

    return-void
.end method

.method public final isInProgress()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    invoke-virtual {v0}, Lnbisdk/bb;->isRequestInProgress()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLocationError(I)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/gf;->R()V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->providerStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final requestLocationFix()Z
    .locals 13

    const/4 v12, 0x2

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lnbisdk/gf;->ar()Z

    move-result v0

    if-eq v0, v8, :cond_1

    const/16 v0, 0x234b

    invoke-direct {p0, v0}, Lnbisdk/gf;->k(I)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, v8}, Lnbisdk/gf;->b(S)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lnbisdk/gf;->km:Lnbisdk/jp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gf;->ku:Lnbisdk/rj;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/gf;->isInProgress()Z

    move-result v0

    if-eq v0, v8, :cond_b

    new-instance v0, Lnbisdk/bb;

    iget-object v1, p0, Lnbisdk/gf;->ku:Lnbisdk/rj;

    iget-object v2, p0, Lnbisdk/gf;->hS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnbisdk/bb;-><init>(Lnbisdk/rj;Ljava/lang/String;)V

    iput-object v0, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    iget-object v0, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    if-eqz v0, :cond_7

    invoke-static {}, Lnbisdk/gf;->gx()Lnbisdk/qq;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lnbisdk/qq;->jx()I

    move-result v1

    if-ne v1, v12, :cond_5

    invoke-interface {v0}, Lnbisdk/qq;->jy()Lnbisdk/jn;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lnbisdk/jn;->gX()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {v3}, Lnbisdk/jn;->iH()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {v3}, Lnbisdk/jn;->iG()I

    move-result v1

    if-eq v1, v5, :cond_7

    :cond_2
    invoke-interface {v0}, Lnbisdk/qq;->jy()Lnbisdk/jn;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    invoke-virtual {v2, v1}, Lnbisdk/bb;->a(Lnbisdk/qh;)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lnbisdk/qq;->jy()Lnbisdk/jn;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ck;->a(Lnbisdk/jn;)V

    invoke-virtual {v3}, Lnbisdk/jn;->iG()I

    move-result v0

    invoke-virtual {v3}, Lnbisdk/jn;->iH()I

    move-result v1

    invoke-virtual {v3}, Lnbisdk/jn;->gX()I

    move-result v2

    invoke-virtual {v3}, Lnbisdk/qh;->jb()I

    move-result v5

    invoke-direct {p0, v0, v1, v2, v5}, Lnbisdk/gf;->a(IIII)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    if-eqz v2, :cond_14

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gh()J

    move-result-wide v0

    move-wide v6, v0

    :goto_1
    invoke-virtual {v3}, Lnbisdk/jn;->iG()I

    move-result v0

    invoke-virtual {v3}, Lnbisdk/jn;->iH()I

    move-result v1

    invoke-virtual {v3}, Lnbisdk/jn;->gX()I

    move-result v2

    invoke-virtual {v3}, Lnbisdk/qh;->jb()I

    move-result v3

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    long-to-int v7, v6

    move v6, v4

    invoke-static/range {v0 .. v7}, Lnbisdk/ck;->a(IIIIBLjava/lang/String;II)V

    :cond_3
    move v1, v8

    :goto_2
    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->getWifiState()I

    move-result v0

    if-ne v0, v12, :cond_c

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gi()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnbisdk/gf;->kt:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gl()Ljava/util/Vector;

    move-result-object v3

    move v2, v4

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_9

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/xg;

    if-eqz v0, :cond_4

    iget-object v5, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    invoke-interface {v0}, Lnbisdk/xg;->dC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lnbisdk/xg;->jb()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Lnbisdk/bb;->a(Ljava/lang/String;I)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Lnbisdk/qq;->jx()I

    move-result v1

    if-ne v1, v8, :cond_7

    invoke-interface {v0}, Lnbisdk/qq;->jz()Lnbisdk/gz;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    invoke-virtual {v2, v1}, Lnbisdk/bb;->a(Lnbisdk/qh;)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, v4, v4, v4, v4}, Lnbisdk/gf;->a(IIII)Z

    invoke-interface {v0}, Lnbisdk/qq;->jz()Lnbisdk/gz;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ck;->a(Lnbisdk/gz;)V

    :cond_6
    move v1, v8

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_2

    :cond_8
    move v0, v4

    goto :goto_4

    :cond_9
    move v0, v8

    :goto_5
    if-nez v0, :cond_a

    if-eqz v1, :cond_12

    :cond_a
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v9

    :goto_6
    if-eqz v0, :cond_11

    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    if-eqz v0, :cond_11

    invoke-static {}, Lnbisdk/gf;->gx()Lnbisdk/qq;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lnbisdk/qq;->jx()I

    move-result v1

    if-ne v1, v12, :cond_e

    invoke-interface {v0}, Lnbisdk/qq;->jy()Lnbisdk/jn;

    move-result-object v0

    :goto_7
    iget-object v1, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    iget-object v2, p0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0, v2}, Lnbisdk/go;->a(Lnbisdk/qh;Ljava/util/Vector;)Z

    move-result v1

    if-eq v1, v8, :cond_10

    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    invoke-virtual {v0}, Lnbisdk/go;->gB()Lnbisdk/nb;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    invoke-virtual {v0}, Lnbisdk/go;->gB()Lnbisdk/nb;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gf;->kq:Lnbisdk/nb;

    iput-object v9, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    iget-object v0, p0, Lnbisdk/gf;->kq:Lnbisdk/nb;

    invoke-virtual {p0, v0}, Lnbisdk/gf;->a(Lnbisdk/nb;)V

    :cond_b
    :goto_8
    move v4, v8

    goto/16 :goto_0

    :cond_c
    move v0, v4

    goto :goto_5

    :cond_d
    invoke-interface {v0}, Lnbisdk/dz;->eK()Lnbisdk/qq;

    move-result-object v0

    goto :goto_6

    :cond_e
    invoke-interface {v0}, Lnbisdk/qq;->jx()I

    move-result v1

    if-ne v1, v8, :cond_13

    invoke-interface {v0}, Lnbisdk/qq;->jz()Lnbisdk/gz;

    move-result-object v0

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    invoke-virtual {v0}, Lnbisdk/go;->gC()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lnbisdk/gf;->bF:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    invoke-direct {p0}, Lnbisdk/gf;->R()V

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    invoke-virtual {v1, v0}, Lnbisdk/go;->b(Lnbisdk/qh;)V

    iget-object v0, p0, Lnbisdk/gf;->kr:Lnbisdk/go;

    iget-object v1, p0, Lnbisdk/gf;->kp:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lnbisdk/go;->g(Ljava/util/Vector;)V

    :cond_11
    iget-object v0, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    invoke-virtual {v0}, Lnbisdk/bb;->startRequest()V

    goto :goto_8

    :cond_12
    iput-object v9, p0, Lnbisdk/gf;->ko:Lnbisdk/bb;

    const/16 v0, 0x2346

    invoke-direct {p0, v0}, Lnbisdk/gf;->k(I)V

    goto/16 :goto_0

    :cond_13
    move-object v0, v9

    goto :goto_7

    :cond_14
    move-wide v6, v0

    goto/16 :goto_1

    :cond_15
    move v4, v0

    goto/16 :goto_0
.end method
