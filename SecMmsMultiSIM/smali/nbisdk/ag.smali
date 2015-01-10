.class public abstract Lnbisdk/ag;
.super Ljava/lang/Object;


# instance fields
.field private aF:J

.field protected bo:Lnbisdk/ak;

.field private bp:J

.field private bq:B

.field private br:Ljava/util/Vector;

.field private bs:Lnbisdk/ar;

.field private bt:Lnbisdk/ir;

.field protected x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/ak;)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/ag;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/ag;->x:I

    const-wide/high16 v0, 0x1000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    iput-object p1, p0, Lnbisdk/ag;->bo:Lnbisdk/ak;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ag;->bs:Lnbisdk/ar;

    invoke-interface {p1}, Lnbisdk/ak;->X()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gv;->gI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/ag;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ag;->aF:J

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ag;->br:Ljava/util/Vector;

    return-void
.end method

.method protected a(Lnbisdk/ar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iput-object p1, p0, Lnbisdk/ag;->bs:Lnbisdk/ar;

    invoke-virtual {p0}, Lnbisdk/ag;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnbisdk/ag;->aL()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnbisdk/ar;->a(Ljava/lang/String;[B)I

    move-result v0

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/ag;->ai()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnbisdk/ag;->x:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lnbisdk/db;->b(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method protected a(J)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnbisdk/ag;->aI()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lnbisdk/ag;->am()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, p1, v8

    if-lez v6, :cond_2

    sub-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lnbisdk/ag;->aF:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    iget-wide v6, p0, Lnbisdk/ag;->aF:J

    sub-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v6, p0, Lnbisdk/ag;->bp:J

    sub-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public aG()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/ag;->br:Ljava/util/Vector;

    return-object v0
.end method

.method protected aH()B
    .locals 2

    iget v0, p0, Lnbisdk/ag;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ID required before being set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lnbisdk/ag;->x:I

    int-to-byte v0, v0

    return v0
.end method

.method protected aI()Z
    .locals 4

    iget-wide v0, p0, Lnbisdk/ag;->bp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aJ()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/ag;->bp:J

    iput-wide v0, p0, Lnbisdk/ag;->aF:J

    return-void
.end method

.method protected aK()V
    .locals 2

    invoke-virtual {p0}, Lnbisdk/ag;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request already pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ag;->bp:J

    return-void
.end method

.method protected aL()[B
    .locals 4

    sget-boolean v0, Lnbisdk/me;->sD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7d000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    new-instance v1, Lnbisdk/tu;

    iget-object v0, p0, Lnbisdk/ag;->bo:Lnbisdk/ak;

    invoke-interface {v0}, Lnbisdk/ak;->ab()Lnbisdk/yn;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/tu;-><init>(Lnbisdk/yn;)V

    :try_start_0
    new-instance v0, Lnbisdk/ze;

    const-string v2, "query"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnbisdk/ag;->aj()Lnbisdk/ze;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x1000

    invoke-static {v2, v3}, Lnbisdk/jg;->i(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    invoke-virtual {v0}, Lnbisdk/ql;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Lnbisdk/tu;->b(Lnbisdk/ql;)V

    invoke-virtual {v1}, Lnbisdk/tu;->S()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnbisdk/ag;->aM()B

    move-result v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnbisdk/ag;->aH()B

    move-result v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lnbisdk/tu;->e([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lnbisdk/tu;->P()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lnbisdk/tu;->P()V

    throw v0
.end method

.method protected aM()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/ag;->bq:B

    return v0
.end method

.method protected abstract ai()Ljava/lang/String;
.end method

.method protected abstract aj()Lnbisdk/ze;
.end method

.method protected al()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ag;->bs:Lnbisdk/ar;

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onTimedout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract am()I
.end method

.method public b()V
    .locals 1

    iget-byte v0, p0, Lnbisdk/ag;->bq:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lnbisdk/ag;->bq:B

    return-void
.end method

.method protected b(Lcom/navbuilder/nb/NBException;)V
    .locals 3

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onConnectionError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnbisdk/ag;->bs:Lnbisdk/ar;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ag;->bs:Lnbisdk/ar;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Lnbisdk/ql;)V
    .locals 3

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x1000

    invoke-static {v0, v1}, Lnbisdk/jg;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onReply"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    invoke-virtual {p1}, Lnbisdk/ql;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/ag;->bp:J

    return-void
.end method

.method protected c(B)V
    .locals 0

    iput p1, p0, Lnbisdk/ag;->x:I

    return-void
.end method

.method protected c(Lcom/navbuilder/nb/NBException;)V
    .locals 3

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onServerError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lnbisdk/ai;)V
    .locals 1

    invoke-virtual {p1}, Lnbisdk/ai;->aB()F

    move-result v0

    invoke-virtual {p0, v0}, Lnbisdk/ag;->a(F)V

    return-void
.end method

.method protected d(Lcom/navbuilder/nb/NBException;)V
    .locals 3

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onStreamError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Lnbisdk/ai;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnbisdk/ag;->e(Lnbisdk/ai;)V

    return-void
.end method

.method protected d(B)Z
    .locals 2

    iget v0, p0, Lnbisdk/ag;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnbisdk/ag;->x:I

    int-to-byte v0, v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Lcom/navbuilder/nb/NBException;)V
    .locals 3

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ag;->bt:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onInternalError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x1000

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    :cond_0
    return-void
.end method

.method public e(Lnbisdk/ai;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ag;->bs:Lnbisdk/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ag;->aF:J

    :try_start_0
    invoke-virtual {p1}, Lnbisdk/ai;->aq()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnbisdk/ai;->aw()Lnbisdk/ql;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/ag;->b(Lnbisdk/ql;)V

    sget-boolean v1, Lnbisdk/me;->sD:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnbisdk/ql;->b()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7d000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnbisdk/ai;->ar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/ag;->al()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x1000

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lnbisdk/ai;->as()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnbisdk/ai;->ax()Lcom/navbuilder/nb/NBException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/ag;->e(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnbisdk/ai;->at()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnbisdk/ai;->ay()Lcom/navbuilder/nb/NBException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/ag;->d(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lnbisdk/ai;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnbisdk/ai;->az()Lcom/navbuilder/nb/NBException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/ag;->c(Lcom/navbuilder/nb/NBException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
