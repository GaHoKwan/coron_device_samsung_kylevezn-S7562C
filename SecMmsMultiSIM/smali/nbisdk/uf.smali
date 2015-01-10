.class public final Lnbisdk/uf;
.super Lnbisdk/ut;


# instance fields
.field private O:Z

.field private aV:Lnbisdk/ak;

.field private bE:I

.field private cU:I

.field private cZ:I

.field private cg:Ljava/lang/String;

.field private fT:Ljava/io/InputStream;

.field private yW:[B

.field private zl:Lnbisdk/xu;

.field private zm:Lnbisdk/us;


# direct methods
.method public constructor <init>(Lnbisdk/ev;Lnbisdk/xu;)V
    .locals 3

    invoke-direct {p0}, Lnbisdk/ut;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/uf;->O:Z

    iput-object p2, p0, Lnbisdk/uf;->zl:Lnbisdk/xu;

    new-instance v0, Lnbisdk/u;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lnbisdk/u;-><init>(Lnbisdk/dz;Lnbisdk/ev;Z)V

    iput-object v0, p0, Lnbisdk/uf;->aV:Lnbisdk/ak;

    return-void
.end method

.method private R()V
    .locals 11

    const-wide/32 v9, 0x100000

    const/16 v8, 0x8

    const/4 v1, 0x0

    const/16 v0, 0x2800

    iget v2, p0, Lnbisdk/uf;->bE:I

    mul-int/lit16 v2, v2, 0x2800

    add-int/lit16 v2, v2, 0x2800

    iget v3, p0, Lnbisdk/uf;->cZ:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lnbisdk/uf;->cZ:I

    iget v2, p0, Lnbisdk/uf;->bE:I

    mul-int/lit16 v2, v2, 0x2800

    sub-int/2addr v0, v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v3, 0x200

    new-array v3, v3, [B

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lnbisdk/uf;->fT:Ljava/io/InputStream;

    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lnbisdk/uf;->yW:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lnbisdk/us;

    iget-object v1, p0, Lnbisdk/uf;->aV:Lnbisdk/ak;

    iget-object v2, p0, Lnbisdk/uf;->cg:Ljava/lang/String;

    iget v3, p0, Lnbisdk/uf;->bE:I

    iget v4, p0, Lnbisdk/uf;->cU:I

    iget-object v5, p0, Lnbisdk/uf;->yW:[B

    iget-object v7, p0, Lnbisdk/uf;->zl:Lnbisdk/xu;

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lnbisdk/us;-><init>(Lnbisdk/ak;Ljava/lang/String;II[BLnbisdk/uf;Lnbisdk/xu;)V

    iput-object v0, p0, Lnbisdk/uf;->zm:Lnbisdk/us;

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uploading Chunk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/uf;->bE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9, v10, v8}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0, v9, v10, v8}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_1
.end method


# virtual methods
.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/uf;->O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/uf;->zm:Lnbisdk/us;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/uf;->zm:Lnbisdk/us;

    invoke-virtual {v0}, Lnbisdk/us;->ah()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/uf;->O:Z

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/uf;->O:Z

    return v0
.end method

.method public final startRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/32 v3, 0x100000

    const/16 v2, 0x8

    iget-boolean v0, p0, Lnbisdk/uf;->O:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lnbisdk/db;->getSize()I

    move-result v0

    iput v0, p0, Lnbisdk/uf;->cZ:I

    iget v0, p0, Lnbisdk/uf;->cZ:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/uf;->zl:Lnbisdk/xu;

    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x42

    const-string v3, "No QA Log Data"

    invoke-direct {v1, v2, v3}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lnbisdk/xu;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnbisdk/db;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/uf;->fT:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/uf;->bE:I

    iget v0, p0, Lnbisdk/uf;->cZ:I

    div-int/lit16 v0, v0, 0x2800

    iput v0, p0, Lnbisdk/uf;->cU:I

    iget v0, p0, Lnbisdk/uf;->cZ:I

    rem-int/lit16 v0, v0, 0x2800

    if-eqz v0, :cond_2

    iget v0, p0, Lnbisdk/uf;->cU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnbisdk/uf;->cU:I

    :cond_2
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Uploading QA Log"

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/uf;->cZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Chunks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/uf;->cU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lnbisdk/uf;->cg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/uf;->O:Z

    invoke-direct {p0}, Lnbisdk/uf;->R()V

    iget-object v0, p0, Lnbisdk/uf;->zl:Lnbisdk/xu;

    invoke-interface {v0, p0}, Lnbisdk/xu;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/uf;->zm:Lnbisdk/us;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    goto :goto_0
.end method

.method final t(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lnbisdk/uf;->cg:Ljava/lang/String;

    iget v0, p0, Lnbisdk/uf;->bE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnbisdk/uf;->bE:I

    iget v0, p0, Lnbisdk/uf;->bE:I

    iget v1, p0, Lnbisdk/uf;->cU:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lnbisdk/uf;->R()V

    iget-object v0, p0, Lnbisdk/uf;->zm:Lnbisdk/us;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/uf;->zl:Lnbisdk/xu;

    iget v1, p0, Lnbisdk/uf;->cZ:I

    invoke-interface {v0, p1, v1, p0}, Lnbisdk/xu;->uploadComplete(Ljava/lang/String;ILnbisdk/ut;)V

    iget-object v0, p0, Lnbisdk/uf;->zl:Lnbisdk/xu;

    invoke-interface {v0, p0}, Lnbisdk/xu;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    iput-object v2, p0, Lnbisdk/uf;->yW:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/uf;->O:Z

    iput-object v2, p0, Lnbisdk/uf;->zm:Lnbisdk/us;

    goto :goto_0
.end method
