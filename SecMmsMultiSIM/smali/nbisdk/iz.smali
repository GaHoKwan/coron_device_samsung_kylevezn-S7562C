.class public Lnbisdk/iz;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/sg;


# instance fields
.field private cT:I

.field private oe:Lnbisdk/yb;

.field private of:Ljava/util/Hashtable;

.field private og:Lnbisdk/ir;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/yb;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4000000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/iz;->og:Lnbisdk/ir;

    iput-object p1, p0, Lnbisdk/iz;->oe:Lnbisdk/yb;

    iput p2, p0, Lnbisdk/iz;->cT:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    return-void
.end method

.method public static a(Ljava/util/Vector;)V
    .locals 2

    new-instance v0, Lnbisdk/l;

    invoke-direct {v0}, Lnbisdk/l;-><init>()V

    new-instance v1, Lnbisdk/xj;

    invoke-direct {v1, p0}, Lnbisdk/xj;-><init>(Ljava/util/Vector;)V

    invoke-static {v1, v0}, Lnbisdk/zs;->a(Lnbisdk/xj;Lnbisdk/fz;)V

    return-void
.end method

.method private b()V
    .locals 11

    const/4 v0, 0x0

    new-instance v3, Ljava/util/Vector;

    iget v1, p0, Lnbisdk/iz;->cT:I

    invoke-direct {v3, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v1, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnbisdk/iz;->oe:Lnbisdk/yb;

    invoke-virtual {v1, v3}, Lnbisdk/yb;->a(Ljava/util/Vector;)V

    iget v1, p0, Lnbisdk/iz;->cT:I

    div-int/lit8 v4, v1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move v1, v0

    move v2, v0

    :goto_1
    iget v0, p0, Lnbisdk/iz;->cT:I

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jd;

    iget-wide v7, v0, Lnbisdk/jd;->oh:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-wide v7, v0, Lnbisdk/jd;->mr:J

    iget-wide v9, v0, Lnbisdk/jd;->oh:J

    add-long/2addr v7, v9

    cmp-long v7, v7, v5

    if-gez v7, :cond_2

    iget-object v7, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    iget-object v0, v0, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    if-ge v1, v4, :cond_1

    iget-object v7, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    iget-object v0, v0, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget v1, v0, Lnbisdk/rp;->wT:I

    add-int/2addr v1, v2

    iput v1, v0, Lnbisdk/rp;->wT:I

    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iput v1, v0, Lnbisdk/rp;->wR:I

    :cond_5
    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iput v1, v0, Lnbisdk/rp;->wR:I

    :cond_1
    return-void
.end method

.method public final R()V
    .locals 0

    invoke-virtual {p0}, Lnbisdk/iz;->P()V

    return-void
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lnbisdk/jd;)V
    .locals 3

    sget-boolean v0, Lnbisdk/me;->sC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/iz;->og:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemCache.put:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget v1, p0, Lnbisdk/iz;->cT:I

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lnbisdk/me;->sC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/iz;->og:Lnbisdk/ir;

    const-string v1, "MemCache.put shrink"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lnbisdk/iz;->b()V

    :cond_2
    iget-object v0, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    iget-object v1, p1, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iput v1, v0, Lnbisdk/rp;->wR:I

    :cond_4
    return-void
.end method

.method public final as(Ljava/lang/String;)Lnbisdk/jd;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jd;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-wide v2, v0, Lnbisdk/jd;->oh:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, v0, Lnbisdk/jd;->mr:J

    iget-wide v4, v0, Lnbisdk/jd;->oh:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v0, p0, Lnbisdk/iz;->of:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_4

    sget-boolean v1, Lnbisdk/me;->sC:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnbisdk/iz;->og:Lnbisdk/ir;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemCache.get hit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/jd;->la:J

    iget v1, v0, Lnbisdk/jd;->bE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnbisdk/jd;->bE:I

    goto :goto_0

    :cond_4
    sget-boolean v1, Lnbisdk/me;->sC:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/iz;->og:Lnbisdk/ir;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemCache.get miss: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
