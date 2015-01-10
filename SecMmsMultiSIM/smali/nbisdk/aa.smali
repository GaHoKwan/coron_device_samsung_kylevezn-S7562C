.class public abstract Lnbisdk/aa;
.super Lnbisdk/ag;

# interfaces
.implements Lnbisdk/ap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/aa$a;
    }
.end annotation


# instance fields
.field private aS:Lnbisdk/ir;

.field private aT:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mQ()Lnbisdk/ak;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/ag;-><init>(Lnbisdk/ak;)V

    const-wide/high16 v0, 0x1000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/aa;->aS:Lnbisdk/ir;

    return-void
.end method

.method public constructor <init>(Lnbisdk/ak;)V
    .locals 2

    invoke-direct {p0, p1}, Lnbisdk/ag;-><init>(Lnbisdk/ak;)V

    const-wide/high16 v0, 0x1000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/aa;->aS:Lnbisdk/ir;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    invoke-super {p0, p1}, Lnbisdk/ag;->a(F)V

    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/aa;->a(Lnbisdk/ag;I)V

    return-void
.end method

.method public a(Lnbisdk/ag;)V
    .locals 0

    return-void
.end method

.method public a(Lnbisdk/ag;I)V
    .locals 0

    return-void
.end method

.method public a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 0

    return-void
.end method

.method public abstract a(Lnbisdk/ze;)V
.end method

.method public ah()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/ag;->bo:Lnbisdk/ak;

    invoke-interface {v0, p0}, Lnbisdk/ak;->b(Lnbisdk/ag;)Z

    move-result v0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mV()Lnbisdk/qv;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnbisdk/qv;->e(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lnbisdk/aa;->a(Lnbisdk/ag;)V

    :cond_0
    return v0
.end method

.method protected final ai()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnbisdk/aa;->ak()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnbisdk/ag;->bo:Lnbisdk/ak;

    invoke-interface {v0}, Lnbisdk/ak;->X()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gv;->gK()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected final aj()Lnbisdk/ze;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnbisdk/aa;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnbisdk/ze;

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnbisdk/aa;->a(Lnbisdk/ze;)V

    return-object v1
.end method

.method protected abstract ak()Ljava/lang/String;
.end method

.method protected final al()V
    .locals 4

    invoke-super {p0}, Lnbisdk/ag;->al()V

    invoke-virtual {p0, p0}, Lnbisdk/aa;->d(Lnbisdk/ag;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/aa;->ai()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnbisdk/ag;->x:I

    const/4 v2, 0x4

    const/16 v3, 0x7d2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method protected final am()I
    .locals 2

    iget-object v0, p0, Lnbisdk/ag;->bo:Lnbisdk/ak;

    invoke-interface {v0}, Lnbisdk/ak;->X()Lnbisdk/gv;

    move-result-object v0

    const-string v1, "req_timeout"

    invoke-virtual {v0, v1}, Lnbisdk/gv;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final an()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/aa;->aT:F

    iget-object v0, p0, Lnbisdk/ag;->bo:Lnbisdk/ak;

    invoke-interface {v0, p0}, Lnbisdk/ak;->a(Lnbisdk/ag;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {p0}, Lnbisdk/aa;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/tt;->t(Ljava/lang/String;)V

    return-void
.end method

.method protected final b(Lcom/navbuilder/nb/NBException;)V
    .locals 4

    invoke-static {p1}, Lnbisdk/xo;->a(Ljava/lang/Exception;)V

    invoke-super {p0, p1}, Lnbisdk/ag;->b(Lcom/navbuilder/nb/NBException;)V

    invoke-virtual {p0, p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lnbisdk/aa;->ai()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnbisdk/ag;->x:I

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lnbisdk/db;->a(Ljava/lang/String;III)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lnbisdk/ql;)V
    .locals 0

    invoke-super {p0, p1}, Lnbisdk/ag;->b(Lnbisdk/ql;)V

    invoke-virtual {p0, p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;Lnbisdk/ql;)V

    return-void
.end method

.method protected final c(Lcom/navbuilder/nb/NBException;)V
    .locals 4

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/aa;->aS:Lnbisdk/ir;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->aq(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lnbisdk/ag;->c(Lcom/navbuilder/nb/NBException;)V

    invoke-virtual {p0, p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lnbisdk/aa;->ai()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnbisdk/ag;->x:I

    const/4 v3, 0x5

    invoke-static {v1, v2, v3, v0}, Lnbisdk/db;->a(Ljava/lang/String;III)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lnbisdk/ai;)V
    .locals 2

    invoke-virtual {p1}, Lnbisdk/ai;->aB()F

    move-result v0

    iget v1, p0, Lnbisdk/aa;->aT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lnbisdk/ai;->aB()F

    move-result v0

    iput v0, p0, Lnbisdk/aa;->aT:F

    new-instance v0, Lnbisdk/aa$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lnbisdk/aa$a;-><init>(Lnbisdk/ag;Lnbisdk/ai;I)V

    invoke-static {v0, p0}, Lnbisdk/tt;->b(Lnbisdk/ru;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final d(Lcom/navbuilder/nb/NBException;)V
    .locals 4

    invoke-super {p0, p1}, Lnbisdk/ag;->d(Lcom/navbuilder/nb/NBException;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lnbisdk/aa;->ai()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnbisdk/ag;->x:I

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lnbisdk/db;->a(Ljava/lang/String;III)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lnbisdk/ag;)V
    .locals 0

    return-void
.end method

.method public final d(Lnbisdk/ai;)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/aa;->ai()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnbisdk/ag;->x:I

    invoke-virtual {p1}, Lnbisdk/ai;->aD()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->c(Ljava/lang/String;III)V

    :cond_0
    new-instance v0, Lnbisdk/aa$a;

    invoke-direct {v0, p0, p1, v3}, Lnbisdk/aa$a;-><init>(Lnbisdk/ag;Lnbisdk/ai;I)V

    invoke-static {v0, p0}, Lnbisdk/tt;->b(Lnbisdk/ru;Ljava/lang/Object;)V

    return-void
.end method

.method protected final e(Lcom/navbuilder/nb/NBException;)V
    .locals 4

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->printStackTrace()V

    :cond_0
    invoke-super {p0, p1}, Lnbisdk/ag;->e(Lcom/navbuilder/nb/NBException;)V

    invoke-virtual {p0, p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lnbisdk/aa;->ai()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnbisdk/ag;->x:I

    const/4 v3, 0x5

    invoke-static {v1, v2, v3, v0}, Lnbisdk/db;->a(Ljava/lang/String;III)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
