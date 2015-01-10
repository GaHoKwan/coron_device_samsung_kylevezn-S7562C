.class public Lnbisdk/b;
.super Ljava/lang/Object;


# instance fields
.field private c:Lnbisdk/zc;

.field private d:Lnbisdk/hg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/zc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/b;->c:Lnbisdk/zc;

    invoke-virtual {p1}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/b;->d:Lnbisdk/hg;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lnbisdk/b;->d:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lnbisdk/b;->d:Lnbisdk/hg;

    invoke-interface {v0, v1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lnbisdk/yo;

    invoke-virtual {v0}, Lnbisdk/yo;->im()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/b;->d:Lnbisdk/hg;

    invoke-interface {v1}, Lnbisdk/hg;->ht()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/b;->c:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    const-wide/high16 v3, -0x4010

    const-wide/16 v1, 0x0

    add-int/lit8 v5, v5, -0x1

    move v6, v5

    move-wide v13, v3

    move-wide v4, v13

    move-wide v15, v1

    move-wide v2, v15

    :goto_0
    if-ltz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/b;->d:Lnbisdk/hg;

    invoke-interface {v1, v6}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v1

    check-cast v1, Lnbisdk/yo;

    invoke-virtual {v1}, Lnbisdk/yo;->pa()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_1
    if-ltz v7, :cond_2

    invoke-virtual {v1, v7}, Lnbisdk/yo;->cb(I)Lnbisdk/bs;

    move-result-object v8

    invoke-virtual {v8}, Lnbisdk/bs;->bS()Ljava/lang/String;

    move-result-object v9

    const-string v10, "G"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lnbisdk/bs;->bh()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const-wide/high16 v9, -0x4010

    cmpl-double v9, v4, v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lnbisdk/bs;->bV()D

    move-result-wide v9

    invoke-virtual {v8}, Lnbisdk/bs;->getLength()D

    move-result-wide v11

    add-double/2addr v9, v11

    cmpl-double v4, v9, v4

    if-ltz v4, :cond_0

    invoke-virtual {v8}, Lnbisdk/bs;->getLength()D

    move-result-wide v4

    add-double/2addr v2, v4

    :goto_2
    invoke-virtual {v8, v2, v3}, Lnbisdk/bs;->c(D)V

    invoke-virtual {v8}, Lnbisdk/bs;->bV()D

    move-result-wide v4

    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lnbisdk/bs;->getLength()D

    move-result-wide v2

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_0

    :cond_3
    return-void
.end method
