.class public final Lnbisdk/hx;
.super Ljava/lang/Object;


# static fields
.field private static mC:Lnbisdk/hx;


# instance fields
.field private aB:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/hx;->mC:Lnbisdk/hx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    return-void
.end method

.method public static hA()Lnbisdk/hx;
    .locals 1

    sget-object v0, Lnbisdk/hx;->mC:Lnbisdk/hx;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/hx;

    invoke-direct {v0}, Lnbisdk/hx;-><init>()V

    sput-object v0, Lnbisdk/hx;->mC:Lnbisdk/hx;

    :cond_0
    sget-object v0, Lnbisdk/hx;->mC:Lnbisdk/hx;

    return-object v0
.end method


# virtual methods
.method public final c(Lnbisdk/qh;)V
    .locals 10

    const/16 v9, 0xa

    const/4 v4, 0x1

    const v8, 0x3f4ccccd

    const v7, 0x3e4ccccd

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    if-eqz v1, :cond_4

    const-class v1, Lnbisdk/jn;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p1, Lnbisdk/jn;

    move v2, v0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/pv;

    if-eqz v0, :cond_4

    const-class v1, Lnbisdk/jn;

    iget-object v5, v0, Lnbisdk/pv;->vo:Lnbisdk/qh;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lnbisdk/pv;->vo:Lnbisdk/qh;

    check-cast v1, Lnbisdk/jn;

    invoke-virtual {v1}, Lnbisdk/jn;->iH()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/jn;->iH()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Lnbisdk/jn;->iG()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/jn;->iG()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Lnbisdk/jn;->gX()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/jn;->gX()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Lnbisdk/qh;->jb()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-virtual {p1}, Lnbisdk/qh;->jb()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lnbisdk/qh;->bg(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lnbisdk/pv;->vp:J

    iget v1, v0, Lnbisdk/pv;->vq:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lnbisdk/pv;->vq:I

    move v1, v4

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lnbisdk/pv;->vq:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lnbisdk/pv;->vq:I

    iget v1, v0, Lnbisdk/pv;->vq:I

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v0, v0, Lnbisdk/pv;->vp:J

    sub-long v0, v5, v0

    const-wide/32 v5, 0x493e0

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Lnbisdk/pv;

    invoke-direct {v0}, Lnbisdk/pv;-><init>()V

    new-instance v1, Lnbisdk/jn;

    invoke-virtual {p1}, Lnbisdk/jn;->iG()I

    move-result v2

    invoke-virtual {p1}, Lnbisdk/jn;->iH()I

    move-result v3

    invoke-virtual {p1}, Lnbisdk/jn;->gX()I

    move-result v4

    invoke-virtual {p1}, Lnbisdk/qh;->jb()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lnbisdk/jn;-><init>(IIII)V

    iput-object v1, v0, Lnbisdk/pv;->vo:Lnbisdk/qh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/pv;->vp:J

    iput v9, v0, Lnbisdk/pv;->vq:I

    iget-object v1, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-class v1, Lnbisdk/gz;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p1, Lnbisdk/gz;

    move v2, v0

    move v3, v0

    :goto_3
    iget-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/pv;

    const-class v1, Lnbisdk/jn;

    iget-object v5, v0, Lnbisdk/pv;->vo:Lnbisdk/qh;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lnbisdk/pv;->vo:Lnbisdk/qh;

    check-cast v1, Lnbisdk/gz;

    invoke-virtual {v1}, Lnbisdk/gz;->ha()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/gz;->ha()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Lnbisdk/gz;->gY()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/gz;->gY()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Lnbisdk/gz;->gX()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/gz;->gX()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Lnbisdk/gz;->gZ()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/gz;->gZ()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Lnbisdk/qh;->jb()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-virtual {p1}, Lnbisdk/qh;->jb()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lnbisdk/qh;->bg(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lnbisdk/pv;->vp:J

    iget v1, v0, Lnbisdk/pv;->vq:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lnbisdk/pv;->vq:I

    move v1, v4

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_3

    :cond_6
    iget v1, v0, Lnbisdk/pv;->vq:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lnbisdk/pv;->vq:I

    iget v1, v0, Lnbisdk/pv;->vq:I

    if-lez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v0, v0, Lnbisdk/pv;->vp:J

    sub-long v0, v5, v0

    const-wide/32 v5, 0x493e0

    cmp-long v0, v0, v5

    if-lez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    if-nez v3, :cond_4

    new-instance v6, Lnbisdk/pv;

    invoke-direct {v6}, Lnbisdk/pv;-><init>()V

    new-instance v0, Lnbisdk/gz;

    invoke-virtual {p1}, Lnbisdk/gz;->gY()I

    move-result v1

    invoke-virtual {p1}, Lnbisdk/gz;->gZ()I

    move-result v2

    invoke-virtual {p1}, Lnbisdk/gz;->ha()I

    move-result v3

    invoke-virtual {p1}, Lnbisdk/gz;->gX()I

    move-result v4

    invoke-virtual {p1}, Lnbisdk/qh;->jb()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lnbisdk/gz;-><init>(IIIII)V

    iput-object v0, v6, Lnbisdk/pv;->vo:Lnbisdk/qh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lnbisdk/pv;->vp:J

    iput v9, v6, Lnbisdk/pv;->vq:I

    iget-object v0, p0, Lnbisdk/hx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method
