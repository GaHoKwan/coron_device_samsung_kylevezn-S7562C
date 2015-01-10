.class public final Lnbisdk/uk;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnbisdk/mu;Lnbisdk/kr;I[D[J)V
    .locals 16

    invoke-interface/range {p1 .. p1}, Lnbisdk/kr;->p()Lnbisdk/hg;

    move-result-object v8

    invoke-interface {v8}, Lnbisdk/hg;->ht()I

    move-result v9

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    move v6, v5

    move v7, v1

    move v15, v2

    move-wide v1, v3

    move v3, v15

    :goto_1
    if-ge v7, v9, :cond_5

    invoke-interface {v8, v7}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v10

    invoke-interface {v10}, Lnbisdk/pn;->getDistance()D

    move-result-wide v4

    add-double/2addr v4, v1

    invoke-interface {v10}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lnbisdk/mu;->kh()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lnbisdk/mu;->kg()[I

    move-result-object v13

    const/4 v1, 0x0

    :goto_2
    array-length v14, v13

    if-ge v1, v14, :cond_1

    aget-object v14, v12, v1

    if-eqz v14, :cond_0

    aget-object v14, v12, v1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_3

    :cond_0
    aget v2, v13, v1

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_4

    :cond_1
    :goto_3
    invoke-interface {v10}, Lnbisdk/pn;->lu()D

    move-result-wide v11

    double-to-int v1, v11

    add-int/2addr v1, v2

    add-int v2, v6, v1

    invoke-interface {v10}, Lnbisdk/pn;->getTotalDelay()D

    move-result-wide v10

    double-to-int v1, v10

    add-int/2addr v1, v3

    add-int/lit8 v3, v7, 0x1

    move v6, v2

    move v7, v3

    move v3, v1

    move-wide v1, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_3
    aget-object v14, v12, v1

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    aget v2, v13, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    const/4 v4, 0x0

    aput-wide v1, p3, v4

    :cond_6
    if-eqz p4, :cond_7

    const/4 v1, 0x0

    int-to-long v4, v6

    aput-wide v4, p4, v1

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    const/4 v1, 0x1

    int-to-long v2, v3

    aput-wide v2, p4, v1

    :cond_7
    return-void
.end method

.method public static a(Lnbisdk/kr;I[I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0}, Lnbisdk/kr;->p()Lnbisdk/hg;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/hg;->ht()I

    move-result v3

    invoke-interface {p0}, Lnbisdk/kr;->p()Lnbisdk/hg;

    move-result-object v2

    invoke-interface {v2, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/uk;->bg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    aput v2, p2, v1

    aput v1, p2, v0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    aput v1, p2, v1

    aput v1, p2, v0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-interface {p0}, Lnbisdk/kr;->p()Lnbisdk/hg;

    move-result-object v4

    invoke-interface {v4, v2}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnbisdk/uk;->bg(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-ge v2, p1, :cond_2

    aget v4, p2, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v1

    :cond_2
    aget v4, p2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v1

    goto :goto_0
.end method

.method public static bg(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "NC."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
