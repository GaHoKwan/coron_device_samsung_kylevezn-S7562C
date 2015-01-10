.class public final Lnbisdk/tj;
.super Lnbisdk/cr;

# interfaces
.implements Lnbisdk/ap;
.implements Lnbisdk/zh;
.implements Lnbisdk/zm;


# static fields
.field private static yl:Lnbisdk/sg;


# instance fields
.field private aH:Z

.field private cN:Lcom/navbuilder/nb/e;

.field private cU:I

.field private yh:Lnbisdk/jz;

.field private yi:Lnbisdk/mp;

.field private yj:Lnbisdk/tm;

.field private yk:Lnbisdk/kd;

.field private ym:Lnbisdk/xp;

.field private yn:Lnbisdk/xp;


# direct methods
.method public constructor <init>(Lnbisdk/jz;Lnbisdk/kd;Lcom/navbuilder/nb/e;)V
    .locals 4

    invoke-direct {p0}, Lnbisdk/cr;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input parameters are invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    iput-object p2, p0, Lnbisdk/tj;->yk:Lnbisdk/kd;

    iput-object p3, p0, Lnbisdk/tj;->cN:Lcom/navbuilder/nb/e;

    invoke-virtual {p0}, Lnbisdk/tj;->cancelRequest()V

    iget-object v0, p0, Lnbisdk/tj;->yj:Lnbisdk/tm;

    if-eqz v0, :cond_2

    invoke-static {}, Lnbisdk/tm;->mI()Lnbisdk/qk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnbisdk/tm;->mL()Lnbisdk/qk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnbisdk/tm;->mM()Lnbisdk/qk;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lnbisdk/tm;

    invoke-direct {v0, p0}, Lnbisdk/tm;-><init>(Lnbisdk/zm;)V

    iput-object v0, p0, Lnbisdk/tj;->yj:Lnbisdk/tm;

    :cond_3
    invoke-static {}, Lnbisdk/xp;->oJ()Lnbisdk/xp;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/tj;->ym:Lnbisdk/xp;

    invoke-static {}, Lnbisdk/xp;->oK()Lnbisdk/xp;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/tj;->yn:Lnbisdk/xp;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bl(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x79

    :cond_4
    sget-object v1, Lnbisdk/tj;->yl:Lnbisdk/sg;

    if-nez v1, :cond_5

    if-nez v0, :cond_6

    new-instance v0, Lnbisdk/ws;

    invoke-direct {v0}, Lnbisdk/ws;-><init>()V

    sput-object v0, Lnbisdk/tj;->yl:Lnbisdk/sg;

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance v1, Lnbisdk/zt;

    new-instance v2, Lnbisdk/iz;

    new-instance v3, Lnbisdk/yb;

    invoke-direct {v3}, Lnbisdk/yb;-><init>()V

    invoke-direct {v2, v3, v0}, Lnbisdk/iz;-><init>(Lnbisdk/yb;I)V

    invoke-direct {v1, v2}, Lnbisdk/zt;-><init>(Lnbisdk/sg;)V

    sput-object v1, Lnbisdk/tj;->yl:Lnbisdk/sg;

    goto :goto_0
.end method

.method private a(Ljava/util/Vector;Lnbisdk/mp;)Ljava/util/Vector;
    .locals 6

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    invoke-virtual {v0, p0}, Lnbisdk/eu;->a(Lnbisdk/cr;)V

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lnbisdk/mp;->kd()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lnbisdk/pu;->bb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    array-length v5, v2

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/tj;->bg(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/eu;->a(Lnbisdk/cr;)V

    new-instance v1, Lnbisdk/iy;

    invoke-direct {v1, v0, v2}, Lnbisdk/iy;-><init>(Lnbisdk/eu;[B)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lnbisdk/pu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lnbisdk/eu;->fo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method private b(Lnbisdk/qk;Lnbisdk/qk;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnbisdk/tj;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "Comparing map source info with different types"

    const-wide/16 v2, 0x100

    const/4 v4, 0x4

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lnbisdk/qk;->me()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnbisdk/qk;->me()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnbisdk/tj;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnbisdk/tj;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static bg(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "base_map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "satellite"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hybrid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "custom_base_map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lnbisdk/mp;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/navbuilder/nb/NBException;
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/tj;->yi:Lnbisdk/mp;

    invoke-virtual {p1}, Lnbisdk/mp;->kd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v2, 0x1a

    invoke-interface {v0, v2}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnbisdk/za;->pg()Lnbisdk/za;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/za;->bS()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnbisdk/tj;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Lnbisdk/za;->au(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnbisdk/tj;->clear(Z)V

    :cond_1
    invoke-virtual {p1}, Lnbisdk/mp;->kc()Ljava/util/Vector;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lnbisdk/tj;->a(Ljava/util/Vector;Lnbisdk/mp;)Ljava/util/Vector;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    :cond_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lnbisdk/eu;->dI()Lnbisdk/qk;

    move-result-object v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lnbisdk/mp;->kd()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    iget v5, p0, Lnbisdk/tj;->cU:I

    add-int/2addr v5, v2

    iput v5, p0, Lnbisdk/tj;->cU:I

    if-lez v2, :cond_7

    iput-boolean v1, p0, Lnbisdk/tj;->aH:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lnbisdk/tj;->ym:Lnbisdk/xp;

    invoke-virtual {v0, v4}, Lnbisdk/xp;->a(Ljava/util/Vector;)V

    :goto_2
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget v1, v0, Lnbisdk/rp;->wQ:I

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lnbisdk/rp;->wQ:I

    :cond_5
    move-object v0, v3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lnbisdk/tj;->yn:Lnbisdk/xp;

    invoke-virtual {v0, v4}, Lnbisdk/xp;->a(Ljava/util/Vector;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v0, p0}, Lnbisdk/jz;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/tj;->aH:Z

    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v0, p0}, Lnbisdk/jz;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 2

    iget-boolean v0, p0, Lnbisdk/tj;->aH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tj;->yi:Lnbisdk/mp;

    invoke-virtual {v0}, Lnbisdk/mp;->kc()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lnbisdk/tj;->cU:I

    sub-int v1, v0, v1

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    iget-object v1, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v1, v0, p0}, Lnbisdk/jz;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/tj;->aH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v0, p2, p0}, Lnbisdk/jz;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 5

    const-wide/16 v3, 0x100

    const/4 v2, 0x2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/tj;->aH:Z

    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v0, p0}, Lnbisdk/jz;->onRequestComplete(Lcom/navbuilder/nb/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Internal Exception on Map Tile Handling"

    invoke-static {v1, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    iget-object v1, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v1, v2, p0}, Lnbisdk/jz;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lnbisdk/eu;Ljava/lang/Exception;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lnbisdk/eu;->a(Lnbisdk/cr;)V

    iget v0, p0, Lnbisdk/tj;->cU:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnbisdk/tj;->cU:I

    instance-of v0, p2, Lcom/navbuilder/nb/NBException;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/navbuilder/nb/NBException;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lnbisdk/tj;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget v1, v0, Lnbisdk/rp;->wU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnbisdk/rp;->wU:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lnbisdk/tj;->yj:Lnbisdk/tm;

    invoke-virtual {v0}, Lnbisdk/tm;->mN()Lcom/navbuilder/nb/NBException;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x7d1

    move v1, v0

    :goto_1
    new-instance v0, Lcom/navbuilder/nb/NBException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve tile, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnbisdk/tj;->yj:Lnbisdk/tm;

    invoke-virtual {v0}, Lnbisdk/tm;->mN()Lcom/navbuilder/nb/NBException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navbuilder/nb/NBException;->getErrorCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lnbisdk/iy;)V
    .locals 9

    const-wide/16 v0, 0x0

    const-wide/16 v7, 0x2710

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lnbisdk/eu;->a(Lnbisdk/cr;)V

    invoke-virtual {v4}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/tj;->bg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "custom_base_map"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    invoke-virtual {v4}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnbisdk/pu;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_0
    :goto_0
    iget v0, p0, Lnbisdk/tj;->cU:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnbisdk/tj;->cU:I

    iget-boolean v0, p0, Lnbisdk/tj;->aH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v0, p1, p0}, Lnbisdk/jz;->a(Lnbisdk/iy;Lnbisdk/cr;)V

    iget v0, p0, Lnbisdk/tj;->cU:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnbisdk/tj;->a(Lnbisdk/ag;Lnbisdk/ql;)V

    :cond_1
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget v1, v0, Lnbisdk/rp;->wP:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnbisdk/rp;->wP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapTileHandleImpl: Bad map tile downloaded."

    invoke-static {v0}, Lnbisdk/jg;->ay(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v2, "traffic"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    invoke-virtual {v4}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v1

    const-wide/32 v2, 0x46cd0

    invoke-static {v0, v1, v2, v3}, Lnbisdk/pu;->a(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0

    :cond_6
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapTileHandleImpl: Bad traffic tile downloaded."

    invoke-static {v0}, Lnbisdk/jg;->ay(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v2, "auto_pin"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "custom_base_map"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "custom_overlay_map"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_8
    invoke-virtual {v4}, Lnbisdk/eu;->fu()I

    move-result v2

    int-to-long v2, v2

    cmp-long v6, v2, v0

    if-lez v6, :cond_b

    cmp-long v6, v2, v7

    if-gez v6, :cond_b

    :goto_1
    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_a

    :cond_9
    const-string v2, "auto_pin"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    invoke-virtual {v4}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lnbisdk/pu;->a(Ljava/lang/String;Ljava/lang/Object;J)V

    goto/16 :goto_0

    :cond_b
    cmp-long v0, v2, v7

    if-lez v0, :cond_d

    sub-long v0, v2, v7

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {v4}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/iy;->ij()[B

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/pu;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_d
    move-wide v0, v2

    goto :goto_1
.end method

.method public final cancelRequest()V
    .locals 1

    iget-object v0, p0, Lnbisdk/tj;->ym:Lnbisdk/xp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tj;->ym:Lnbisdk/xp;

    invoke-virtual {v0, p0}, Lnbisdk/xp;->b(Lnbisdk/cr;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/tj;->yn:Lnbisdk/xp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/tj;->yn:Lnbisdk/xp;

    invoke-virtual {v0, p0}, Lnbisdk/xp;->b(Lnbisdk/cr;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/tj;->aH:Z

    return-void
.end method

.method public final clear(Z)V
    .locals 1

    sget-object v0, Lnbisdk/tj;->yl:Lnbisdk/sg;

    invoke-interface {v0}, Lnbisdk/sg;->P()V

    invoke-static {p1}, Lnbisdk/pu;->clear(Z)V

    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/tj;->aH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v0, p0}, Lnbisdk/jz;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/tj;->aH:Z

    return-void
.end method

.method public final e(Lnbisdk/qk;)V
    .locals 2

    invoke-static {}, Lnbisdk/za;->pg()Lnbisdk/za;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnbisdk/tj;->b(Lnbisdk/qk;Lnbisdk/qk;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnbisdk/tj;->clear(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/za;->e(Lnbisdk/qk;)V

    :cond_1
    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/tj;->yh:Lnbisdk/jz;

    invoke-interface {v0, p1}, Lnbisdk/jz;->d(Lnbisdk/qk;)V

    :cond_2
    return-void
.end method

.method public final f(Lnbisdk/qk;)V
    .locals 2

    invoke-static {}, Lnbisdk/za;->pg()Lnbisdk/za;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnbisdk/tj;->b(Lnbisdk/qk;Lnbisdk/qk;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnbisdk/tj;->clear(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/za;->e(Lnbisdk/qk;)V

    :cond_1
    return-void
.end method

.method public final g(Lnbisdk/qk;)V
    .locals 2

    invoke-static {}, Lnbisdk/za;->pg()Lnbisdk/za;

    move-result-object v0

    const-string v1, "traffic"

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnbisdk/tj;->b(Lnbisdk/qk;Lnbisdk/qk;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnbisdk/tj;->clear(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/za;->e(Lnbisdk/qk;)V

    :cond_1
    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/tj;->aH:Z

    return v0
.end method

.method final mG()Lnbisdk/kd;
    .locals 1

    iget-object v0, p0, Lnbisdk/tj;->yk:Lnbisdk/kd;

    return-object v0
.end method

.method final mH()Lnbisdk/tm;
    .locals 1

    iget-object v0, p0, Lnbisdk/tj;->yj:Lnbisdk/tm;

    return-object v0
.end method
