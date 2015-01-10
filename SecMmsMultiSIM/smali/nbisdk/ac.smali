.class public final Lnbisdk/ac;
.super Lnbisdk/ai;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/ac$a;
    }
.end annotation


# instance fields
.field private V:I

.field private aV:Lnbisdk/ak;

.field private aW:[B

.field private aX:Lnbisdk/ql;

.field private aY:Lcom/navbuilder/nb/NBException;

.field private aZ:[B

.field private ba:B

.field private bb:B

.field private bc:Lnbisdk/ag;

.field private bd:Lnbisdk/dp;


# direct methods
.method public constructor <init>(Lnbisdk/ak;[B)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/ai;-><init>()V

    iput-object p1, p0, Lnbisdk/ac;->aV:Lnbisdk/ak;

    iput-object p2, p0, Lnbisdk/ac;->aW:[B

    return-void
.end method

.method static synthetic a(Lnbisdk/ac;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/ac;->aV:Lnbisdk/ak;

    invoke-interface {v0, p0}, Lnbisdk/ak;->d(Lnbisdk/ai;)V

    return-void
.end method

.method private av()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/ac;->aX:Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iden-receipt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ac;->bc:Lnbisdk/ag;

    return-void
.end method

.method protected final a(Lnbisdk/dp;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lnbisdk/ac;->bd:Lnbisdk/dp;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "realize called in parallel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lnbisdk/ac;->bd:Lnbisdk/dp;

    invoke-virtual {p1}, Lnbisdk/dp;->length()I

    move-result v0

    iput v0, p0, Lnbisdk/ac;->V:I

    invoke-virtual {p1}, Lnbisdk/wa;->readByte()B

    move-result v0

    iput-byte v0, p0, Lnbisdk/ac;->bb:B

    invoke-virtual {p1}, Lnbisdk/wa;->readByte()B

    move-result v0

    iput-byte v0, p0, Lnbisdk/ac;->ba:B

    iget-byte v0, p0, Lnbisdk/ac;->ba:B

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnbisdk/wa;->oq()[B

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ac;->aZ:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v4, p0, Lnbisdk/ac;->bd:Lnbisdk/dp;

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lnbisdk/vs;

    iget-object v1, p0, Lnbisdk/ac;->aV:Lnbisdk/ak;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lnbisdk/ac;->aW:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lnbisdk/ak;->c(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lnbisdk/vs;-><init>(Lnbisdk/wa;I)V

    new-instance v1, Lnbisdk/ac$a;

    invoke-direct {v1, p0, v0}, Lnbisdk/ac$a;-><init>(Lnbisdk/ac;Lnbisdk/wa;)V

    iget-byte v0, p0, Lnbisdk/ac;->bb:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v1}, Lnbisdk/jd;->b(Lnbisdk/wa;)J

    new-instance v0, Lnbisdk/t;

    invoke-direct {v0, v1}, Lnbisdk/t;-><init>(Lnbisdk/wa;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lnbisdk/ac;->aV:Lnbisdk/ak;

    invoke-interface {v1}, Lnbisdk/ak;->ab()Lnbisdk/yn;

    move-result-object v1

    invoke-static {v1, v0}, Lnbisdk/wk;->a(Lnbisdk/yn;Lnbisdk/wa;)Lnbisdk/ql;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ac;->aX:Lnbisdk/ql;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lnbisdk/st; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnbisdk/tv; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    iput-object v0, p0, Lnbisdk/ac;->aY:Lcom/navbuilder/nb/NBException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lnbisdk/ac;->bd:Lnbisdk/dp;

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    iput-object v0, p0, Lnbisdk/ac;->aY:Lcom/navbuilder/nb/NBException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public final aA()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/ac;->ba:B

    return v0
.end method

.method public final aB()F
    .locals 1

    iget-object v0, p0, Lnbisdk/ac;->bd:Lnbisdk/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ac;->bd:Lnbisdk/dp;

    invoke-virtual {v0}, Lnbisdk/dp;->ex()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public final aC()Lnbisdk/ag;
    .locals 1

    iget-object v0, p0, Lnbisdk/ac;->bc:Lnbisdk/ag;

    return-object v0
.end method

.method public final aD()I
    .locals 1

    iget v0, p0, Lnbisdk/ac;->V:I

    return v0
.end method

.method public final ap()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/ac;->aW:[B

    return-object v0
.end method

.method public final aq()Z
    .locals 1

    invoke-virtual {p0}, Lnbisdk/ac;->as()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/ac;->at()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/ac;->au()Z

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

.method public final ar()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/ac;->aY:Lcom/navbuilder/nb/NBException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ac;->aY:Lcom/navbuilder/nb/NBException;

    invoke-virtual {v0}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final as()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/ac;->aY:Lcom/navbuilder/nb/NBException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final at()Z
    .locals 2

    iget-byte v0, p0, Lnbisdk/ac;->ba:B

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final au()Z
    .locals 2

    invoke-direct {p0}, Lnbisdk/ac;->av()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/ac;->aX:Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aw()Lnbisdk/ql;
    .locals 2

    invoke-virtual {p0}, Lnbisdk/ac;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TPS document on error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lnbisdk/ac;->av()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/ac;->aX:Lnbisdk/ql;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/ac;->aX:Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TPS reply document has no child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ax()Lcom/navbuilder/nb/NBException;
    .locals 2

    invoke-virtual {p0}, Lnbisdk/ac;->as()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not an internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ac;->aY:Lcom/navbuilder/nb/NBException;

    return-object v0
.end method

.method public final ay()Lcom/navbuilder/nb/NBException;
    .locals 3

    invoke-virtual {p0}, Lnbisdk/ac;->at()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a stream error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/4 v1, 0x2

    iget-object v2, p0, Lnbisdk/ac;->aZ:[B

    invoke-direct {v0, v1, v2}, Lcom/navbuilder/nb/NBException;-><init>(I[B)V

    return-object v0
.end method

.method public final az()Lcom/navbuilder/nb/NBException;
    .locals 2

    invoke-virtual {p0}, Lnbisdk/ac;->au()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a server error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/navbuilder/nb/NBException;

    iget-object v1, p0, Lnbisdk/ac;->aX:Lnbisdk/ql;

    invoke-static {v1}, Lcom/navbuilder/nb/NBException;->getReplyErrorCode(Lnbisdk/ql;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    return-object v0
.end method
